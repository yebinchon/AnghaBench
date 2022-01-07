
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ContextFlags; } ;
struct TYPE_5__ {TYPE_3__ context; int h; } ;
typedef TYPE_1__ thread_info ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_7__ {int dwThreadId; } ;
typedef int DWORD ;


 int CHECK (int ) ;
 int DBG_CONTINUE ;
 int DBG_EXCEPTION_NOT_HANDLED ;
 int DEBUG_EXEC (char*) ;
 int FALSE ;
 scalar_t__ NSIG ;
 int PIDGET (int ) ;
 int child_continue (int ,int) ;
 TYPE_4__ current_event ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;
 scalar_t__ last_sig ;
 int set_thread_context (int ,TYPE_3__*) ;
 TYPE_1__* thread_rec (int ,int ) ;

void
child_resume (ptid_t ptid, int step, enum target_signal sig)
{
  thread_info *th;
  DWORD continue_status = last_sig > 0 && last_sig < NSIG ?
  DBG_EXCEPTION_NOT_HANDLED : DBG_CONTINUE;
  int pid = PIDGET (ptid);

  DEBUG_EXEC (("gdb: child_resume (pid=%d, step=%d, sig=%d);\n",
        pid, step, sig));


  th = thread_rec (current_event.dwThreadId, FALSE);

  if (th->context.ContextFlags)
    {
      CHECK (set_thread_context (th->h, &th->context));
      th->context.ContextFlags = 0;
    }



  if (sig && sig != last_sig)
    fprintf_unfiltered (gdb_stderr, "Can't send signals to the child.  signal %d\n", sig);

  last_sig = 0;
  child_continue (continue_status, pid);
}
