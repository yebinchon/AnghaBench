
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;


 int ADVANCE (char*,struct sockaddr*) ;
 int AF_INET ;
 int AF_INET6 ;






int
findproto(char *cp, int n)
{
 struct sockaddr *sa;
 unsigned i;

 if (n == 0)
  return -1;
 for (i = 1; i; i <<= 1) {
  if (i & n) {
   sa = (struct sockaddr *)cp;
   switch (i) {
   case 130:
   case 132:
   case 131:
   case 128:
    if (sa->sa_family == AF_INET)
     return AF_INET;
    if (sa->sa_family == AF_INET6)
     return AF_INET6;
    break;
   case 129:
    break;
   }
   ADVANCE(cp, sa);
  }
 }
 return (-1);
}
