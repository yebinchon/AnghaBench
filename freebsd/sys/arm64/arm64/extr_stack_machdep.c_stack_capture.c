
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct unwind_state {scalar_t__ pc; scalar_t__ fp; } ;
struct stack {int dummy; } ;


 int INKERNEL (int ) ;
 int stack_put (struct stack*,scalar_t__) ;
 int stack_zero (struct stack*) ;
 int unwind_frame (struct unwind_state*) ;

__attribute__((used)) static void
stack_capture(struct stack *st, struct unwind_state *frame)
{

 stack_zero(st);
 while (1) {
  unwind_frame(frame);
  if (!INKERNEL((vm_offset_t)frame->fp) ||
       !INKERNEL((vm_offset_t)frame->pc))
   break;
  if (stack_put(st, frame->pc) == -1)
   break;
 }
}
