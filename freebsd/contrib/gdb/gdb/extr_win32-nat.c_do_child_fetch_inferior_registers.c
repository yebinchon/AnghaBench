
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Dr7; int Dr6; int Dr3; int Dr2; int Dr1; int Dr0; int ContextFlags; } ;
struct TYPE_4__ {scalar_t__ reload_context; TYPE_3__ context; int h; } ;
typedef TYPE_1__ thread_info ;


 int CONTEXT_DEBUGGER_DR ;
 int GetThreadContext (int ,TYPE_3__*) ;
 int I387_FISEG_REGNUM ;
 int I387_FOP_REGNUM ;
 int NUM_REGS ;
 TYPE_1__* current_thread ;
 int * dr ;
 int* mappings ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
do_child_fetch_inferior_registers (int r)
{
  char *context_offset = ((char *) &current_thread->context) + mappings[r];
  long l;

  if (!current_thread)
    return;


  if (current_thread->reload_context)
    {
      thread_info *th = current_thread;
      th->context.ContextFlags = CONTEXT_DEBUGGER_DR;
      GetThreadContext (th->h, &th->context);

      dr[0] = th->context.Dr0;
      dr[1] = th->context.Dr1;
      dr[2] = th->context.Dr2;
      dr[3] = th->context.Dr3;
      dr[6] = th->context.Dr6;
      dr[7] = th->context.Dr7;
      current_thread->reload_context = 0;
    }



  if (r == I387_FISEG_REGNUM)
    {
      l = *((long *) context_offset) & 0xffff;
      supply_register (r, (char *) &l);
    }
  else if (r == I387_FOP_REGNUM)
    {
      l = (*((long *) context_offset) >> 16) & ((1 << 11) - 1);
      supply_register (r, (char *) &l);
    }
  else if (r >= 0)
    supply_register (r, context_offset);
  else
    {
      for (r = 0; r < NUM_REGS; r++)
 do_child_fetch_inferior_registers (r);
    }


}
