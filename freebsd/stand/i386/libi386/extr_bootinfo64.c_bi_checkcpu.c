
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AMDID_LM ;
 int AMD_VENDOR_ID ;
 int CENTAUR_VENDOR_ID ;
 int INTEL_VENDOR_ID ;
 int PSL_ID ;
 int do_cpuid (int,unsigned int*) ;
 int read_eflags () ;
 scalar_t__ strncmp (char*,int ,int) ;
 int write_eflags (int) ;

__attribute__((used)) static int
bi_checkcpu(void)
{
    char *cpu_vendor;
    int vendor[3];
    int eflags;
    unsigned int regs[4];


    eflags = read_eflags();
    write_eflags(eflags ^ PSL_ID);
    if (!((eflags ^ read_eflags()) & PSL_ID))
 return (0);


    do_cpuid(0, regs);
    vendor[0] = regs[1];
    vendor[1] = regs[3];
    vendor[2] = regs[2];
    cpu_vendor = (char *)vendor;


    if (strncmp(cpu_vendor, INTEL_VENDOR_ID, 12) != 0 &&
 strncmp(cpu_vendor, AMD_VENDOR_ID, 12) != 0 &&
 strncmp(cpu_vendor, CENTAUR_VENDOR_ID, 12) != 0)
 return (0);


    do_cpuid(0x80000000, regs);
    if (!(regs[0] >= 0x80000001))
 return (0);


    do_cpuid(0x80000001, regs);
    return (regs[3] & AMDID_LM);
}
