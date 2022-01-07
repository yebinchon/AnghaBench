
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct trapframe {int srr1; } ;


 scalar_t__ FRAME_OFFSET ;
 int INKERNEL (uintptr_t) ;
 int OFFSET ;
 int PSL_PR ;
 scalar_t__ RETURN_OFFSET ;
 scalar_t__ RETURN_OFFSET64 ;
 int asttrapexit ;
 int trapexit ;

__attribute__((used)) static __inline int
dtrace_sp_inkernel(uintptr_t sp)
{
 struct trapframe *frame;
 vm_offset_t callpc;


 if (!INKERNEL(sp) || (sp & 0xf) != 0)
  return (0);



 callpc = *(vm_offset_t *)(sp + RETURN_OFFSET);

 if ((callpc & 3) || (callpc < 0x100))
  return (0);





 if (callpc + OFFSET == (vm_offset_t) &trapexit ||
     callpc + OFFSET == (vm_offset_t) &asttrapexit) {
  frame = (struct trapframe *)(sp + FRAME_OFFSET);

  return ((frame->srr1 & PSL_PR) == 0);
 }

 return (1);
}
