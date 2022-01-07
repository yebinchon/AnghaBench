
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pax_enabled ;
 int pax_global ;
 int sysctlbyname (char*,int *,size_t*,int *,int ) ;

__attribute__((used)) static bool
paxinit(void)
{
 size_t len = sizeof(int);
 int rv;

 rv = sysctlbyname("security.pax.mprotect.global",
     &pax_global, &len, ((void*)0), 0);

 if (rv != 0)
  return 0;

 rv = sysctlbyname("security.pax.mprotect.enabled",
     &pax_enabled, &len, ((void*)0), 0);

 return rv == 0;
}
