
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct breakpoint* step_resume_breakpoint; struct thread_info* next; } ;
struct breakpoint {int dummy; } ;


 int delete_breakpoint (struct breakpoint*) ;
 struct thread_info* thread_list ;

void
delete_step_resume_breakpoint (void *arg)
{
  struct breakpoint **breakpointp = (struct breakpoint **) arg;
  struct thread_info *tp;

  if (*breakpointp != ((void*)0))
    {
      delete_breakpoint (*breakpointp);
      for (tp = thread_list; tp; tp = tp->next)
 if (tp->step_resume_breakpoint == *breakpointp)
   tp->step_resume_breakpoint = ((void*)0);

      *breakpointp = ((void*)0);
    }
}
