
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ContextFlags; void* Dr7; void* Dr3; void* Dr2; void* Dr1; void* Dr0; } ;
struct TYPE_5__ {int suspend_count; TYPE_4__ context; int h; scalar_t__ id; struct TYPE_5__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_6__ {int dwThreadId; int dwProcessId; } ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CHECK (int ) ;
 scalar_t__ CONTEXT_DEBUG_REGISTERS ;
 scalar_t__ ContinueDebugEvent (int ,int ,scalar_t__) ;
 scalar_t__ DBG_CONTINUE ;
 int DEBUG_EVENTS (char*) ;
 int ResumeThread (int ) ;
 int SetThreadContext (int ,TYPE_4__*) ;
 TYPE_3__ current_event ;
 scalar_t__ debug_registers_changed ;
 void** dr ;
 TYPE_1__ thread_head ;

__attribute__((used)) static BOOL
child_continue (DWORD continue_status, int id)
{
  int i;
  thread_info *th;
  BOOL res;

  DEBUG_EVENTS (("ContinueDebugEvent (cpid=%ld, ctid=%ld, %s);\n",
    current_event.dwProcessId, current_event.dwThreadId,
    continue_status == DBG_CONTINUE ?
    "DBG_CONTINUE" : "DBG_EXCEPTION_NOT_HANDLED"));
  res = ContinueDebugEvent (current_event.dwProcessId,
       current_event.dwThreadId,
       continue_status);
  continue_status = 0;
  if (res)
    for (th = &thread_head; (th = th->next) != ((void*)0);)
      if (((id == -1) || (id == (int) th->id)) && th->suspend_count)
 {

   for (i = 0; i < th->suspend_count; i++)
     (void) ResumeThread (th->h);
   th->suspend_count = 0;
   if (debug_registers_changed)
     {

       th->context.ContextFlags = CONTEXT_DEBUG_REGISTERS;
       th->context.Dr0 = dr[0];
       th->context.Dr1 = dr[1];
       th->context.Dr2 = dr[2];
       th->context.Dr3 = dr[3];


       th->context.Dr7 = dr[7];
       CHECK (SetThreadContext (th->h, &th->context));
       th->context.ContextFlags = 0;
     }
 }

  debug_registers_changed = 0;
  return res;
}
