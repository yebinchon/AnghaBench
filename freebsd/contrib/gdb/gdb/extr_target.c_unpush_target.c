
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {struct target_ops* beneath; } ;


 int target_close (struct target_ops*,int ) ;
 struct target_ops* target_stack ;
 int update_current_target () ;

int
unpush_target (struct target_ops *t)
{
  struct target_ops **cur;
  struct target_ops *tmp;




  for (cur = &target_stack; (*cur) != ((void*)0); cur = &(*cur)->beneath)
    {
      if ((*cur) == t)
 break;
    }

  if ((*cur) == ((void*)0))
    return 0;







  target_close (t, 0);


  tmp = (*cur);
  (*cur) = (*cur)->beneath;
  tmp->beneath = ((void*)0);

  update_current_target ();

  return 1;
}
