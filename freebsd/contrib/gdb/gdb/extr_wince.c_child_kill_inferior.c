
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int h; } ;
struct TYPE_4__ {scalar_t__ dwDebugEventCode; } ;


 int CHECK (int ) ;
 int DBG_CONTINUE ;
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ;
 int INFINITE ;
 int child_continue (int ,int) ;
 int close_handle (int ) ;
 TYPE_1__ current_event ;
 int current_process_handle ;
 TYPE_2__* current_thread ;
 int target_mourn_inferior () ;
 int terminate_process (int ) ;
 int wait_for_debug_event (TYPE_1__*,int ) ;

void
child_kill_inferior (void)
{
  CHECK (terminate_process (current_process_handle));

  for (;;)
    {
      if (!child_continue (DBG_CONTINUE, -1))
 break;
      if (!wait_for_debug_event (&current_event, INFINITE))
 break;
      if (current_event.dwDebugEventCode == EXIT_PROCESS_DEBUG_EVENT)
 break;
    }

  CHECK (close_handle (current_process_handle));
  close_handle (current_thread->h);
  target_mourn_inferior ();
}
