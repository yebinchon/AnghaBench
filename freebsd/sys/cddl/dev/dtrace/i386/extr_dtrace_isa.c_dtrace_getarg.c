
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint64_t ;
struct trapframe {scalar_t__ tf_isp; } ;
struct i386_frame {int f_retaddr; struct i386_frame* f_frame; } ;


 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 long P2ROUNDUP (int ,int) ;
 scalar_t__ dtrace_getfp () ;
 scalar_t__ dtrace_invop_callsite ;

uint64_t
dtrace_getarg(int arg, int aframes)
{
 struct trapframe *frame;
 struct i386_frame *fp = (struct i386_frame *)dtrace_getfp();
 uintptr_t *stack, val;
 int i;

 for (i = 1; i <= aframes; i++) {
  fp = fp->f_frame;

  if (P2ROUNDUP(fp->f_retaddr, 4) ==
      (long)dtrace_invop_callsite) {
   frame = (struct trapframe *)(((uintptr_t **)&fp[1])[0]);




   stack = (uintptr_t *)frame->tf_isp + 4;
   goto load;
  }

 }
 arg++;

 stack = (uintptr_t *)fp + 2;

load:
 DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
 val = stack[arg];
 DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);

 return (val);
}
