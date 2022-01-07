
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMDID_LM ;
 int AMD_VENDOR_ID ;
 int CENTAUR_VENDOR_ID ;
 int INTEL_VENDOR_ID ;
 int PSL_ID ;
 int do_cpuid (int,int*) ;
 int read_eflags () ;
 scalar_t__ strncmp (char*,int ,int) ;
 int write_eflags (int) ;

__attribute__((used)) static int
bi_checkcpu(void)
{
 return (1);

}
