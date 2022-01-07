
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int * registers; } ;
struct stack {int dummy; } ;


 size_t PC ;
 int stack_put (struct stack*,int ) ;
 int stack_zero (struct stack*) ;
 scalar_t__ unwind_stack_one (struct unwind_state*,int) ;

__attribute__((used)) static void
stack_capture(struct stack *st, struct unwind_state *state)
{

 stack_zero(st);
 while (unwind_stack_one(state, 1) == 0) {
  if (stack_put(st, state->registers[PC]) == -1)
   break;
 }
}
