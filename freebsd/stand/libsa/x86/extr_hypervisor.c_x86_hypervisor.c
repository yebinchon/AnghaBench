
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID2_HV ;
 int do_cpuid (int,int*) ;

const char *
x86_hypervisor(void)
{
 static union {
  struct {
   u_int high;
   char name[13];
  } hv;
  u_int regs[4];
 } u;


 do_cpuid(1, u.regs);
 if ((u.regs[2] & CPUID2_HV) == 0)
  return (((void*)0));

 do_cpuid(0x40000000, u.regs);
 return (u.hv.name);
}
