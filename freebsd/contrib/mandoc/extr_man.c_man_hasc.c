
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
man_hasc(char *start)
{
 char *cp, *ep;

 ep = strchr(start, '\0') - 2;
 if (ep < start || ep[0] != '\\' || ep[1] != 'c')
  return ((void*)0);
 for (cp = ep; cp > start; cp--)
  if (cp[-1] != '\\')
   break;
 return (ep - cp) % 2 ? ((void*)0) : ep;
}
