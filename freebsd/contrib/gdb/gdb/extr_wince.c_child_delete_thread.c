
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; int h; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ DWORD ;


 int close_handle (int ) ;
 int delete_thread (scalar_t__) ;
 scalar_t__ info_verbose ;
 int printf_unfiltered (char*,int ) ;
 int target_pid_to_str (scalar_t__) ;
 TYPE_1__ thread_head ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
child_delete_thread (DWORD id)
{
  thread_info *th;

  if (info_verbose)
    printf_unfiltered ("[Deleting %s]\n", target_pid_to_str (id));
  delete_thread (id);

  for (th = &thread_head;
       th->next != ((void*)0) && th->next->id != id;
       th = th->next)
    continue;

  if (th->next != ((void*)0))
    {
      thread_info *here = th->next;
      th->next = here->next;
      close_handle (here->h);
      xfree (here);
    }
}
