
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctlbyname (char*,int *,int *,int*,size_t) ;

__attribute__((used)) static bool
paxset(int global, int enabled)
{
 size_t len = sizeof(int);
 int rv;

 rv = sysctlbyname("security.pax.mprotect.global",
     ((void*)0), ((void*)0), &global, len);

 if (rv != 0)
  return 0;

 rv = sysctlbyname("security.pax.mprotect.enabled",
     ((void*)0), ((void*)0), &enabled, len);

 if (rv != 0)
  return 0;

 return 1;
}
