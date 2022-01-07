
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct trapframe {uintptr_t* fixreg; uintptr_t srr0; } ;


 scalar_t__ FRAME_OFFSET ;
 scalar_t__ OFFSET ;
 scalar_t__ RETURN_OFFSET ;
 scalar_t__ RETURN_OFFSET64 ;
 int asttrapexit ;
 int trapexit ;

__attribute__((used)) static __inline void
dtrace_next_sp_pc(uintptr_t sp, uintptr_t *nsp, uintptr_t *pc)
{
 vm_offset_t callpc;
 struct trapframe *frame;




 callpc = *(vm_offset_t *)(sp + RETURN_OFFSET);






 if ((callpc + OFFSET == (vm_offset_t) &trapexit ||
     callpc + OFFSET == (vm_offset_t) &asttrapexit)) {

  frame = (struct trapframe *)(sp + FRAME_OFFSET);

  if (nsp != ((void*)0))
   *nsp = frame->fixreg[1];
  if (pc != ((void*)0))
   *pc = frame->srr0;
  return;
 }

 if (nsp != ((void*)0))
  *nsp = *(uintptr_t *)sp;
 if (pc != ((void*)0))
  *pc = callpc;
}
