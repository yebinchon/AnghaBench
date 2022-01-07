
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;
typedef int uint_t ;
struct trapframe {int exc; int srr1; int srr0; int ctr; int xer; int cr; int lr; int * fixreg; } ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;

ulong_t
dtrace_getreg(struct trapframe *rp, uint_t reg)
{
 if (reg < 32)
  return (rp->fixreg[reg]);

 switch (reg) {
 case 32:
  return (rp->lr);
 case 33:
  return (rp->cr);
 case 34:
  return (rp->xer);
 case 35:
  return (rp->ctr);
 case 36:
  return (rp->srr0);
 case 37:
  return (rp->srr1);
 case 38:
  return (rp->exc);
 default:
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }
}
