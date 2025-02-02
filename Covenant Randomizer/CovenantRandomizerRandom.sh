#!/bin/bash
cat << "EOF"
  __ _ ___ ___ _   _ _ __ ___   ___      | |__  _ __ ___  __ _  ___| |__  
 / _` / __/ __| | | | '_ ` _ \ / _ \_____| '_ \| '__/ _ \/ _` |/ __| '_ \ 
| (_| \__ \__ \ |_| | | | | | |  __/_____| |_) | | |  __/ (_| | (__| | | |
 \__,_|___/___/\__,_|_| |_| |_|\___|     |_.__/|_|  \___|\__,_|\___|_| |_|
                            
                          **Covenant Randomizer**
                 
                   Based On The GIST By S3cur3Th1sSh1t
       
    https://gist.github.com/S3cur3Th1sSh1t/bf5935b5bff48f9f63bdbb4bcc9e8e3d
       
                          Use At Your Own Risk
               
                   
 
EOF

chars=adcdefghijklmnopqrstuvwxyz
function random_word() {
	for i in {1..20} ;
   	do
   		echo -n "${chars:RANDOM%${#chars}:1}"; 
   	done; 
    	echo ${1}
}
Random1=$(random_word 1)
Random2=$(random_word 2)
Random3=$(random_word 3)

apt install -y docker.io

custom1=$(random_word 4)

sudo git clone --recurse-submodules https://github.com/assume-breach/Covenant.git /opt/Covenant

cd /opt/Covenant/Covenant/

mv ./Data/AssemblyReferences/ ../AssemblyReferences/

mv ./Data/ReferenceSourceLibraries/ ../ReferenceSourceLibraries/

mv ./Data/EmbeddedResources/ ../EmbeddedResources/

mv ./Models/Covenant/ ./Models/${Random1^}/
mv ./Components/CovenantUsers/ ./Components/${Random1^}Users/
mv ./Components/Grunts/ ./Components/${Random2^}s/
mv ./Models/Grunts/ ./Models/${Random2^}s/
mv ./Data/Grunt/GruntBridge/ ./Data/Grunt/${Random2^}Bridge/
mv ./Data/Grunt/GruntHTTP/ ./Data/Grunt/${Random2^}HTTP/
mv ./Data/Grunt/GruntSMB/ ./Data/Grunt/${Random2^}SMB/
mv ./Components/GruntTaskings/ ./Components/${Random2^}Taskings/
mv ./Components/GruntTasks/ ./Components/${Random2^}Tasks/
mv ./Data/Grunt/ ./Data/${Random2^}/



find ./ -type f -print0 | xargs -0 sed -i "s/Grunt/${Random2^}/g"
find ./ -type f -print0 | xargs -0 sed -i "s/GRUNT/${Random2^^}/g"
find ./ -type f -print0 | xargs -0 sed -i "s/grunt/${Random2,,}/g"

#find ./ -type f -print0 | xargs -0 sed -i "s/covenant/${Random1,,}/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Covenant/${Random1^}/g"
find ./ -type f -print0 | xargs -0 sed -i "s/COVENANT/${Random1^^}/g"

find ./ -type f -print0 | xargs -0 sed -i "s/ExecuteStager/ExecLevel/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/REPLACE_PROFILE/REP_PROF/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/REPLACE_PIPE/REP_PIP/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/GUID/ANGID/g"
find ./ -type f -print0 | xargs -0 sed -i "s/SetupAES/Install"${custom1}"AES/g"
find ./ -type f -print0 | xargs -0 sed -i "s/SessionKey/Sess"${custom1}"KEy/g"
find ./ -type f -print0 | xargs -0 sed -i "s/EncryptedChallenge/Enc"${custom1}"ChallEnge/g"

find ./ -type f -print0 | xargs -0 sed -i "s/DecryptedChallenges/Decrypt"${custom1}"ChallEnges/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage0Body/First"${custom1}"Body/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage0Response/First"${custom1}"Response/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage0Bytes/First"${custom1}"Bytes/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage1Body/Seccond"${custom1}"Body/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage1Response/Seccond"${custom1}"Response/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage1Bytes/Seccond"${custom1}"Bytes/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage2Body/Third"${custom1}"Body/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage2Response/Third"${custom1}"Response/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Stage2Bytes/Third"${custom1}"Bytes/g"
find ./ -type f -print0 | xargs -0 sed -i "s/message64str/messAgE"${custom1}"64str/g"
find ./ -type f -print0 | xargs -0 sed -i "s/messageBytes/messAgE"${custom1}"bytes/g"

find ./ -type f -print0 | xargs -0 sed -i "s/totalReadBytes/ToTal"${custom1}"ReaDBytes/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/inputStream/instream/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/outputStream/outstream/g"
find ./ -type f -print0 | xargs -0 sed -i "s/deflateStream/deFlatE"${custom1}"stream/g"
find ./ -type f -print0 | xargs -0 sed -i "s/memoryStream/memOrYstream/g" #don't change
find ./ -type f -print0 | xargs -0 sed -i "s/compressedBytes/packed"${custom1}"bytes/g"

find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/REPLACE_/REP"${custom1}"_/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/_PROFILE_/_PROF"${custom1}"_/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/_VALIDATE_/_VA"${custom1}"L_/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/GUID/${Random3^^}/g"
find ./ -type f -name "*.razor" -print0 | xargs -0 sed -i "s/GUID/${Random3^^}/g"
find ./ -type f -name "*.json" -print0 | xargs -0 sed -i "s/GUID/${Random3^^}/g"
find ./ -type f -name "*.yaml" -print0 | xargs -0 sed -i "s/GUID/${Random3^^}/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/guid/${Random3,,}/g"
find ./ -type f -name "*.razor" -print0 | xargs -0 sed -i "s/guid/${Random3,,}/g"
find ./ -type f -name "*.json" -print0 | xargs -0 sed -i "s/guid/${Random3,,}/g"
find ./ -type f -name "*.yaml" -print0 | xargs -0 sed -i "s/guid/${Random3,,}/g"
find ./ -type f -print0 | xargs -0 sed -i "s/ProfileHttp/Prof"${custom1}"HTTP/g"
find ./ -type f -print0 | xargs -0 sed -i "s/baseMessenger/bAse"${custom1}"mEsSenger/g"

find ./ -type f -print0 | xargs -0 sed -i "s/PartiallyDecrypted/Part"${custom1}"decrypted/g"
find ./ -type f -print0 | xargs -0 sed -i "s/FullyDecrypted/Fulld"${custom1}"ecrypted/g"
find ./ -type f -print0 | xargs -0 sed -i "s/compressedBytes/packed"${custom1}"bytes/g"

find ./ -type f -print0 | xargs -0 sed -i "s/CookieWebClient/d"${custom1}"WebClient/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/CookieContainer/KekseContains/g"
#find ./ -type f -print0 | xargs -0 sed -i "s/GetWebRequest/DoAnWebReq/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Jitter/JIt"${custom1}"ter/g"
find ./ -type f -print0 | xargs -0 sed -i "s/ConnectAttempts/ConneCT"${custom1}"AttEmpts/g"
find ./ -type f -print0 | xargs -0 sed -i "s/RegisterBody/Reg"${custom1}"Body/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/messenger/meSsenGer"${custom1}"/g"
find ./ -type f -print0 | xargs -0 sed -i "s/Hello World/"${custom1}"/g"
find ./ -type f -print0 | xargs -0 sed -i "s/ValidateCert/Val"${custom1}"CerT/g"
find ./ -type f -print0 | xargs -0 sed -i "s/UseCertPinning/UsCert"${custom1}"Pin/g"
find ./ -type f -print0 | xargs -0 sed -i "s/EncryptedMessage/Enc"${custom1}"Msg/g"
find ./ -type f -print0 | xargs -0 sed -i "s/cookieWebClient/"${custom1}"WebClient/g" #ottos
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/aes/crypt"${custom1}"var/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/aes2/crypt"${custom1}"var2/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array5/ar"${custom1}"r5/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array6/ar"${custom1}"r6/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array4/ar"${custom1}"r4/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array7/ar"${custom1}"r7/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array1/ar"${custom1}"r1/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array2/ar"${custom1}"r2/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/array3/ar"${custom1}"r3/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/list1/l"${custom1}"i1/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/list2/l"${custom1}"i2/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/list3/l"${custom1}"i3/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/list4/l"${custom1}"i4/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/list5/l"${custom1}"i5/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group0/gr"${custom1}"p0/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group1/gr"${custom1}"p1/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group2/gr"${custom1}"p2/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group3/gr"${custom1}"p3/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group4/gr"${custom1}"p4/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group5/gr"${custom1}"p5/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group6/gr"${custom1}"p6/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group7/gr"${custom1}"p7/g"
find ./ -type f -name "*.cs" -print0 | xargs -0 sed -i "s/group8/gr"${custom1}"p8/g"



find ./ -type f -name "*Grunt*" | while read FILE ; do
	newfile="$(echo ${FILE} |sed -e "s/Grunt/${Random2^}/g")";
	mv "${FILE}" "${newfile}";
done
find ./ -type f -name "*GRUNT*" | while read FILE ; do
	newfile="$(echo ${FILE} |sed -e "s/GRUNT/${Random2^^}/g")";
	mv "${FILE}" "${newfile}";
done

find ./ -type f -name "*grunt*" | while read FILE ; do
	newfile="$(echo ${FILE} |sed -e "s/grunt/${Random2,,}/g")";
	mv "${FILE}" "${newfile}";
done

find ./ -type f -name "*Covenant*" | while read FILE ; do
	newfile="$(echo ${FILE} |sed -e "s/Covenant/${Random1^}/g")";
	mv "${FILE}" "${newfile}";
done

find ./ -type f -name "*COVENANT*" | while read FILE ; do
	newfile="$(echo ${FILE} |sed -e "s/COVENANT/${Random2^^}/g")";
	mv "${FILE}" "${newfile}";
done

#find ./ -type f -name "*covenant*" | while read FILE ; do
#	newfile="$(echo ${FILE} |sed -e "s/covenant/ottocommand/g")";
#	mv "${FILE}" "${newfile}";
#done

mv ../AssemblyReferences/ ./Data/ 

mv ../ReferenceSourceLibraries/ ./Data/ 

mv ../EmbeddedResources/ ./Data/ 

docker build -t covenant .
