
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ ContextFlags; void* Dr7; void* Dr3; void* Dr2; void* Dr1; void* Dr0; int EFlags; } ;
struct TYPE_12__ {TYPE_8__ context; int h; } ;
typedef TYPE_4__ thread_info ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_9__ {int ExceptionCode; } ;
struct TYPE_10__ {TYPE_1__ ExceptionRecord; } ;
struct TYPE_11__ {TYPE_2__ Exception; } ;
struct TYPE_14__ {scalar_t__ dwDebugEventCode; int dwThreadId; TYPE_3__ u; } ;
struct TYPE_13__ {int them; int us; } ;
typedef scalar_t__ DWORD ;


 int CHECK (int ) ;
 scalar_t__ DBG_CONTINUE ;
 scalar_t__ DBG_EXCEPTION_NOT_HANDLED ;
 int DEBUG_EXCEPT (char*) ;
 int DEBUG_EXEC (char*) ;
 scalar_t__ EXCEPTION_DEBUG_EVENT ;
 int FALSE ;
 int FLAG_TRACE_BIT ;
 int PIDGET (int ) ;
 int PS_REGNUM ;
 int SetThreadContext (int ,TYPE_8__*) ;
 int TARGET_SIGNAL_0 ;
 int child_continue (scalar_t__,int) ;
 int child_fetch_inferior_registers (int ) ;
 TYPE_7__ current_event ;
 scalar_t__ debug_registers_changed ;
 void** dr ;
 int last_sig ;
 TYPE_4__* thread_rec (int ,int ) ;
 TYPE_5__* xlate ;

void
child_resume (ptid_t ptid, int step, enum target_signal sig)
{
  thread_info *th;
  DWORD continue_status = DBG_CONTINUE;

  int pid = PIDGET (ptid);

  if (sig != TARGET_SIGNAL_0)
    {
      if (current_event.dwDebugEventCode != EXCEPTION_DEBUG_EVENT)
 {
   DEBUG_EXCEPT(("Cannot continue with signal %d here.\n",sig));
 }
      else if (sig == last_sig)
 continue_status = DBG_EXCEPTION_NOT_HANDLED;
      else
 DEBUG_EXCEPT(("Can only continue with recieved signal %d.\n",
   last_sig));
    }

  last_sig = TARGET_SIGNAL_0;

  DEBUG_EXEC (("gdb: child_resume (pid=%d, step=%d, sig=%d);\n",
        pid, step, sig));


  th = thread_rec (current_event.dwThreadId, FALSE);
  if (th)
    {
      if (step)
 {

   child_fetch_inferior_registers (PS_REGNUM);
   th->context.EFlags |= FLAG_TRACE_BIT;
 }

      if (th->context.ContextFlags)
 {
   if (debug_registers_changed)
     {
       th->context.Dr0 = dr[0];
       th->context.Dr1 = dr[1];
       th->context.Dr2 = dr[2];
       th->context.Dr3 = dr[3];


       th->context.Dr7 = dr[7];
     }
   CHECK (SetThreadContext (th->h, &th->context));
   th->context.ContextFlags = 0;
 }
    }




  child_continue (continue_status, pid);
}
