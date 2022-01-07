
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unkstr ;
struct ctl_scsiio {int scsi_status; } ;
 int snprintf (char*,int,char*,int) ;

const char *
ctl_scsi_status_string(struct ctl_scsiio *ctsio)
{
 switch(ctsio->scsi_status) {
 case 131:
  return("OK");
 case 135:
  return("Check Condition");
 case 136:
  return("Busy");
 case 133:
  return("Intermediate");
 case 132:
  return("Intermediate-Condition Met");
 case 129:
  return("Reservation Conflict");
 case 134:
  return("Command Terminated");
 case 130:
  return("Queue Full");
 case 137:
  return("ACA Active");
 case 128:
  return("Task Aborted");
 default: {
  static char unkstr[64];
  snprintf(unkstr, sizeof(unkstr), "Unknown %#x",
    ctsio->scsi_status);
  return(unkstr);
 }
 }
}
