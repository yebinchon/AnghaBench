
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
struct trapframe {scalar_t__ tf_rsp; int tf_r9; int tf_r8; int tf_rcx; int tf_rdx; int tf_rsi; int tf_rdi; } ;
struct amd64_frame {int f_retaddr; struct amd64_frame* f_frame; } ;


 int CPU_DTRACE_ILLOP ;
 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 long P2ROUNDUP (int ,int) ;
 scalar_t__ dtrace_getfp () ;
 scalar_t__ dtrace_invop_callsite ;

uint64_t
dtrace_getarg(int arg, int aframes)
{
 uintptr_t val;
 struct amd64_frame *fp = (struct amd64_frame *)dtrace_getfp();
 uintptr_t *stack;
 int i;





 int inreg = 5;

 for (i = 1; i <= aframes; i++) {
  fp = fp->f_frame;

  if (P2ROUNDUP(fp->f_retaddr, 16) ==
      (long)dtrace_invop_callsite) {
   struct trapframe *tf = (struct trapframe *)&fp[1];

   if (arg <= inreg) {
    switch (arg) {
    case 0:
     stack = (uintptr_t *)&tf->tf_rdi;
     break;
    case 1:
     stack = (uintptr_t *)&tf->tf_rsi;
     break;
    case 2:
     stack = (uintptr_t *)&tf->tf_rdx;
     break;
    case 3:
     stack = (uintptr_t *)&tf->tf_rcx;
     break;
    case 4:
     stack = (uintptr_t *)&tf->tf_r8;
     break;
    case 5:
     stack = (uintptr_t *)&tf->tf_r9;
     break;
    }
    arg = 0;
   } else {
    stack = (uintptr_t *)(tf->tf_rsp);
    arg -= inreg;
   }
   goto load;
  }

 }
 arg++;

 if (arg <= inreg) {





  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 arg -= (inreg + 1);
 stack = (uintptr_t *)&fp[1];

load:
 DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
 val = stack[arg];
 DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);

 return (val);
}
