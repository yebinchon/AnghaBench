
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; struct thread_info* next; } ;
typedef int ptid_t ;


 scalar_t__ ptid_equal (int ,int ) ;
 struct thread_info* thread_list ;

struct thread_info *
find_thread_pid (ptid_t ptid)
{
  struct thread_info *tp;

  for (tp = thread_list; tp; tp = tp->next)
    if (ptid_equal (tp->ptid, ptid))
      return tp;

  return ((void*)0);
}
