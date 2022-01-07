
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; struct thread_info* next; } ;


 int delete_thread (int ) ;
 int thread_alive (struct thread_info*) ;
 struct thread_info* thread_list ;

__attribute__((used)) static void
prune_threads (void)
{
  struct thread_info *tp, *next;

  for (tp = thread_list; tp; tp = next)
    {
      next = tp->next;
      if (!thread_alive (tp))
 delete_thread (tp->ptid);
    }
}
