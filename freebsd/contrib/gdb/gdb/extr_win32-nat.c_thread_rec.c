
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; int suspend_count; int reload_context; int h; struct TYPE_5__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_6__ {scalar_t__ dwThreadId; } ;
typedef scalar_t__ DWORD ;


 int SuspendThread (int ) ;
 TYPE_4__ current_event ;
 TYPE_1__ thread_head ;

__attribute__((used)) static thread_info *
thread_rec (DWORD id, int get_context)
{
  thread_info *th;

  for (th = &thread_head; (th = th->next) != ((void*)0);)
    if (th->id == id)
      {
 if (!th->suspend_count && get_context)
   {
     if (get_context > 0 && id != current_event.dwThreadId)
       th->suspend_count = SuspendThread (th->h) + 1;
     else if (get_context < 0)
       th->suspend_count = -1;
     th->reload_context = 1;
   }
 return th;
      }

  return ((void*)0);
}
