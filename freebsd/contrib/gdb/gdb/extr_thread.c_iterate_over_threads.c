
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct thread_info* next; } ;


 int stub1 (struct thread_info*,void*) ;
 struct thread_info* thread_list ;

struct thread_info *
iterate_over_threads (int (*callback) (struct thread_info *, void *),
        void *data)
{
  struct thread_info *tp;

  for (tp = thread_list; tp; tp = tp->next)
    if ((*callback) (tp, data))
      return tp;

  return ((void*)0);
}
