#!/bin/bash
if [ $# -lt 2 ];
then
 echo "Arguments are not in order. It should be like ./Run_DDS_SUB.sh /opt/DDS-SUB TESTING-001 "
 echo "The 1st argument is Base directory "
 echo "The 2nd argument is Topic name"
 exit
fi

export NDDSHOME=/opt/rti_connext_dds-5.2.3
export LD_LIBRARY_PATH=/opt/rti_connext_dds-5.2.3/lib/x64Linux3gcc4.8.2
/usr/bin/java -jar DDS-PUB1.0.jar -baseDir $1 -topic $2
echo $PATH
