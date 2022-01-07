
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; struct TYPE_4__* next; } ;
typedef TYPE_1__ thread_info ;


 int CloseHandle (int ) ;
 int DEBUG_EVENTS (char*) ;
 int init_thread_list () ;
 TYPE_1__ thread_head ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
child_init_thread_list (void)
{
  thread_info *th = &thread_head;

  DEBUG_EVENTS (("gdb: child_init_thread_list\n"));
  init_thread_list ();
  while (th->next != ((void*)0))
    {
      thread_info *here = th->next;
      th->next = here->next;
      (void) CloseHandle (here->h);
      xfree (here);
    }
}
