
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID2_XSAVE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int cpu_feature2 ;
 int use_xsave ;

__attribute__((used)) static void
init_xsave(void)
{

 if (use_xsave)
  return;
 if ((cpu_feature2 & CPUID2_XSAVE) == 0)
  return;
 use_xsave = 1;
 TUNABLE_INT_FETCH("hw.use_xsave", &use_xsave);
}
