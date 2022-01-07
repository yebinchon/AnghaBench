
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct reg {scalar_t__ r_rsp; int r_r9; int r_r8; int r_rcx; int r_rdx; int r_rsi; int r_rdi; } ;
struct TYPE_2__ {scalar_t__ p_model; } ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;
 scalar_t__ DATAMODEL_LP64 ;
 int DTRACE_CPUFLAG_CLEAR (int) ;
 int DTRACE_CPUFLAG_SET (int) ;
 TYPE_1__* curproc ;
 int dtrace_fulword (uintptr_t*) ;
 int dtrace_fuword32 (int *) ;

__attribute__((used)) static uint64_t
fasttrap_anarg(struct reg *rp, int function_entry, int argno)
{
 uint64_t value = 0;
 int shift = function_entry ? 1 : 0;


 if (curproc->p_model == DATAMODEL_LP64) {
  uintptr_t *stack;





  if (argno < 6)
   switch (argno) {
   case 0:
    return (rp->r_rdi);
   case 1:
    return (rp->r_rsi);
   case 2:
    return (rp->r_rdx);
   case 3:
    return (rp->r_rcx);
   case 4:
    return (rp->r_r8);
   case 5:
    return (rp->r_r9);
   }

  stack = (uintptr_t *)rp->r_rsp;
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fulword(&stack[argno - 6 + shift]);
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);
 } else {

  uint32_t *stack = (uint32_t *)rp->r_rsp;
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fuword32(&stack[argno + shift]);
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

 }


 return (value);
}
