
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asterchar (char const) ;
 scalar_t__ periodchar (char const) ;
 int res_hnok (char const*) ;

int
res_ownok(const char *dn) {
 if (asterchar(dn[0])) {
  if (periodchar(dn[1]))
   return (res_hnok(dn+2));
  if (dn[1] == '\0')
   return (1);
 }
 return (res_hnok(dn));
}
