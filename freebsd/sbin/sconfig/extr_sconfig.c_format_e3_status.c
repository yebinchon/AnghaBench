
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long E3_LOS ;
 unsigned long E3_TXE ;
 int strcat (char*,char*) ;

__attribute__((used)) static char *
format_e3_status (unsigned long status)
{
 static char buf [80];

 buf[0] = 0;
 if (status & E3_LOS) strcat (buf, ",LOS");
 if (status & E3_TXE) strcat (buf, ",XMIT");
 if (buf[0] == ',')
  return buf+1;
 return "Ok";
}
