
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int ADVANCE (char*,struct sockaddr*) ;
 unsigned int RTA_IFA ;

struct sockaddr *
get_ifa(char *cp, int n)
{
 struct sockaddr *sa;
 unsigned i;

 if (n == 0)
  return (((void*)0));
 for (i = 1; i; i <<= 1)
  if (i & n) {
   sa = (struct sockaddr *)cp;
   if (i == RTA_IFA)
    return (sa);
   ADVANCE(cp, sa);
  }

 return (((void*)0));
}
