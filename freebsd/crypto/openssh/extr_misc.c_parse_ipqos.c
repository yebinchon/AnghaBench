
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {int value; int * name; } ;


 TYPE_1__* ipqos ;
 scalar_t__ strcasecmp (char const*,int *) ;
 long strtol (char const*,char**,int ) ;

int
parse_ipqos(const char *cp)
{
 u_int i;
 char *ep;
 long val;

 if (cp == ((void*)0))
  return -1;
 for (i = 0; ipqos[i].name != ((void*)0); i++) {
  if (strcasecmp(cp, ipqos[i].name) == 0)
   return ipqos[i].value;
 }

 val = strtol(cp, &ep, 0);
 if (*cp == '\0' || *ep != '\0' || val < 0 || val > 255)
  return -1;
 return val;
}
