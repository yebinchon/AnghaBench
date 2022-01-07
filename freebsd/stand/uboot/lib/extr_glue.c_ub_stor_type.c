
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DT_STOR_IDE ;
 int DT_STOR_MMC ;
 int DT_STOR_SATA ;
 int DT_STOR_SCSI ;
 int DT_STOR_USB ;

char *
ub_stor_type(int type)
{

 if (type & DT_STOR_IDE)
  return ("IDE");

 if (type & DT_STOR_SCSI)
  return ("SCSI");

 if (type & DT_STOR_USB)
  return ("USB");

 if (type & DT_STOR_MMC)
  return ("MMC");

 if (type & DT_STOR_SATA)
  return ("SATA");

 return ("Unknown");
}
