
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,...) ;

char *
geteltnm(int type)
{
 static char rbuf[132];

 switch (type) {
 case 130:
  sprintf(rbuf, "Unspecified");
  break;
 case 149:
  sprintf(rbuf, "Device Slot");
  break;
 case 139:
  sprintf(rbuf, "Power Supply");
  break;
 case 144:
  sprintf(rbuf, "Cooling");
  break;
 case 131:
  sprintf(rbuf, "Temperature Sensors");
  break;
 case 147:
  sprintf(rbuf, "Door Lock");
  break;
 case 153:
  sprintf(rbuf, "Audible alarm");
  break;
 case 145:
  sprintf(rbuf, "Enclosure Services Controller Electronics");
  break;
 case 136:
  sprintf(rbuf, "SCC Controller Electronics");
  break;
 case 140:
  sprintf(rbuf, "Nonvolatile Cache");
  break;
 case 143:
  sprintf(rbuf, "Invalid Operation Reason");
  break;
 case 129:
  sprintf(rbuf, "Uninterruptible Power Supply");
  break;
 case 148:
  sprintf(rbuf, "Display");
  break;
 case 142:
  sprintf(rbuf, "Key Pad Entry");
  break;
 case 146:
  sprintf(rbuf, "Enclosure");
  break;
 case 135:
  sprintf(rbuf, "SCSI Port/Transceiver");
  break;
 case 141:
  sprintf(rbuf, "Language");
  break;
 case 150:
  sprintf(rbuf, "Communication Port");
  break;
 case 128:
  sprintf(rbuf, "Voltage Sensor");
  break;
 case 152:
  sprintf(rbuf, "Current Sensor");
  break;
 case 133:
  sprintf(rbuf, "SCSI Target Port");
  break;
 case 134:
  sprintf(rbuf, "SCSI Initiator Port");
  break;
 case 132:
  sprintf(rbuf, "Simple Subenclosure");
  break;
 case 151:
  sprintf(rbuf, "Array Device Slot");
  break;
 case 137:
  sprintf(rbuf, "SAS Expander");
  break;
 case 138:
  sprintf(rbuf, "SAS Connector");
  break;
 default:
  (void) sprintf(rbuf, "<Type 0x%x>", type);
  break;
 }
 return (rbuf);
}
