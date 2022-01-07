
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int suspend_count; int h; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_5__ {scalar_t__ dwThreadId; scalar_t__ dwProcessId; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int DEBUG_EVENTS (char*) ;
 scalar_t__ continue_debug_event (scalar_t__,scalar_t__,int ) ;
 TYPE_3__ current_event ;
 int resume_thread (int ) ;
 TYPE_1__ thread_head ;

__attribute__((used)) static BOOL
child_continue (DWORD continue_status, int id)
{
  int i;
  thread_info *th;
  BOOL res;

  DEBUG_EVENTS (("ContinueDebugEvent (cpid=%d, ctid=%d, DBG_CONTINUE);\n",
   (unsigned) current_event.dwProcessId, (unsigned) current_event.dwThreadId));
  res = continue_debug_event (current_event.dwProcessId,
         current_event.dwThreadId,
         continue_status);
  if (res)
    for (th = &thread_head; (th = th->next) != ((void*)0);)
      if (((id == -1) || (id == th->id)) && th->suspend_count)
 {
   for (i = 0; i < th->suspend_count; i++)
     (void) resume_thread (th->h);
   th->suspend_count = 0;
 }

  return res;
}
