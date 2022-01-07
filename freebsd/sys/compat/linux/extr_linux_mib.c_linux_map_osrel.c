
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LINUX_KERNVER (int,int,int) ;
 int strlen (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
linux_map_osrel(char *osrelease, int *osrel)
{
 char *sep, *eosrelease;
 int len, v0, v1, v2, v;

 len = strlen(osrelease);
 eosrelease = osrelease + len;
 v0 = strtol(osrelease, &sep, 10);
 if (osrelease == sep || sep + 1 >= eosrelease || *sep != '.')
  return (EINVAL);
 osrelease = sep + 1;
 v1 = strtol(osrelease, &sep, 10);
 if (osrelease == sep || sep + 1 >= eosrelease || *sep != '.')
  return (EINVAL);
 osrelease = sep + 1;
 v2 = strtol(osrelease, &sep, 10);
 if (osrelease == sep ||
     (sep != eosrelease && (sep + 1 >= eosrelease || *sep != '-')))
  return (EINVAL);

 v = LINUX_KERNVER(v0, v1, v2);
 if (v < LINUX_KERNVER(1, 0, 0))
  return (EINVAL);

 if (osrel != ((void*)0))
  *osrel = v;

 return (0);
}
