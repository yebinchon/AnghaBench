
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ head; } ;


 TYPE_1__ all_threads ;
 int cont_thread ;
 struct thread_info* current_inferior ;
 scalar_t__ find_inferior_id (TYPE_1__*,int) ;
 int general_thread ;
 scalar_t__ step_thread ;

void
set_desired_inferior (int use_general)
{
  struct thread_info *found;

  if (use_general == 1)
    {
      found = (struct thread_info *) find_inferior_id (&all_threads,
             general_thread);
    }
  else
    {
      found = ((void*)0);




      if (step_thread > 0 && (cont_thread == 0 || cont_thread == -1))
 found = (struct thread_info *) find_inferior_id (&all_threads,
        step_thread);

      if (found == ((void*)0))
 found = (struct thread_info *) find_inferior_id (&all_threads,
        cont_thread);
    }

  if (found == ((void*)0))
    current_inferior = (struct thread_info *) all_threads.head;
  else
    current_inferior = found;
}
