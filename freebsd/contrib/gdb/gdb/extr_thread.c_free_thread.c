
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct thread_info* private; scalar_t__ step_resume_breakpoint; } ;


 int delete_breakpoint (scalar_t__) ;
 int xfree (struct thread_info*) ;

__attribute__((used)) static void
free_thread (struct thread_info *tp)
{


  if (tp->step_resume_breakpoint)
    delete_breakpoint (tp->step_resume_breakpoint);



  if (tp->private)
    xfree (tp->private);

  xfree (tp);
}
