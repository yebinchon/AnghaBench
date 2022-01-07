
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int snprintf (char*,int,char*,...) ;

const char *
opcode(int code)
{
 static char str[6];

 switch (code) {
 case 1:
  (void)snprintf(str, sizeof(str), "RRQ");
  break;
 case 2:
  (void)snprintf(str, sizeof(str), "WRQ");
  break;
 default:
  (void)snprintf(str, sizeof(str), "(%d)", code);
  break;
 }

 return (str);
}
