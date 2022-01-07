
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long E1_AIS ;
 unsigned long E1_AIS16 ;
 unsigned long E1_CRC4E ;
 unsigned long E1_FARLOF ;
 unsigned long E1_FARLOMF ;
 unsigned long E1_LOF ;
 unsigned long E1_LOMF ;
 unsigned long E1_LOS ;
 unsigned long E1_NOALARM ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *
format_e1_status (unsigned long status)
{
 static char buf [80];

 if (status == 0)
  return "n/a";
 if (status & E1_NOALARM)
  return "Ok";
 buf[0] = 0;
 if (status & E1_LOS) strcat (buf, ",LOS");
 if (status & E1_AIS) strcat (buf, ",AIS");
 if (status & E1_LOF) strcat (buf, ",LOF");
 if (status & E1_LOMF) strcat (buf, ",LOMF");
 if (status & E1_CRC4E) strcat (buf, ",CRC4E");
 if (status & E1_FARLOF) strcat (buf, ",FARLOF");
 if (status & E1_AIS16) strcat (buf, ",AIS16");
 if (status & E1_FARLOMF) strcat (buf, ",FARLOMF");


 if (buf[0] == ',')
  return buf+1;
 return "Unknown";
}
