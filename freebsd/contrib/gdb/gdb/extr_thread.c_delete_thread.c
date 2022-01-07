
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct thread_info* next; int ptid; } ;
typedef int ptid_t ;


 int free_thread (struct thread_info*) ;
 scalar_t__ ptid_equal (int ,int ) ;
 struct thread_info* thread_list ;

void
delete_thread (ptid_t ptid)
{
  struct thread_info *tp, *tpprev;

  tpprev = ((void*)0);

  for (tp = thread_list; tp; tpprev = tp, tp = tp->next)
    if (ptid_equal (tp->ptid, ptid))
      break;

  if (!tp)
    return;

  if (tpprev)
    tpprev->next = tp->next;
  else
    thread_list = tp->next;

  free_thread (tp);
}
