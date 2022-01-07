
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID2_CX16 ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int cpu_feature2 ;

__attribute__((used)) static bool
pmap_di_locked(void)
{
 int tun;

 if ((cpu_feature2 & CPUID2_CX16) == 0)
  return (1);
 tun = 0;
 TUNABLE_INT_FETCH("vm.pmap.di_locked", &tun);
 return (tun != 0);
}
