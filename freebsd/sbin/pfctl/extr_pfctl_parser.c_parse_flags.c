
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int PF_TH_ALL ;
 char* strchr (char*,char) ;
 char* tcpflags ;

int
parse_flags(char *s)
{
 char *p, *q;
 u_int8_t f = 0;

 for (p = s; *p; p++) {
  if ((q = strchr(tcpflags, *p)) == ((void*)0))
   return -1;
  else
   f |= 1 << (q - tcpflags);
 }
 return (f ? f : PF_TH_ALL);
}
