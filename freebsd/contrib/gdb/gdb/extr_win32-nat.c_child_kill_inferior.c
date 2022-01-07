
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwDebugEventCode; } ;
struct TYPE_4__ {scalar_t__ h; } ;


 int CHECK (int ) ;
 int CloseHandle (scalar_t__) ;
 int DBG_CONTINUE ;
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ;
 int INFINITE ;
 int TerminateProcess (scalar_t__,int ) ;
 int WaitForDebugEvent (TYPE_2__*,int ) ;
 int child_continue (int ,int) ;
 TYPE_2__ current_event ;
 scalar_t__ current_process_handle ;
 TYPE_1__* current_thread ;
 int target_mourn_inferior () ;

void
child_kill_inferior (void)
{
  CHECK (TerminateProcess (current_process_handle, 0));

  for (;;)
    {
      if (!child_continue (DBG_CONTINUE, -1))
 break;
      if (!WaitForDebugEvent (&current_event, INFINITE))
 break;
      if (current_event.dwDebugEventCode == EXIT_PROCESS_DEBUG_EVENT)
 break;
    }

  CHECK (CloseHandle (current_process_handle));


  if (current_thread && current_thread->h)
    (void) CloseHandle (current_thread->h);
  target_mourn_inferior ();
}
