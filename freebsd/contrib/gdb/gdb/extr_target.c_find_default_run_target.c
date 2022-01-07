
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {scalar_t__ to_can_run; } ;


 int error (char*,char*) ;
 scalar_t__ target_can_run (struct target_ops*) ;
 int target_struct_size ;
 struct target_ops** target_structs ;

__attribute__((used)) static struct target_ops *
find_default_run_target (char *do_mesg)
{
  struct target_ops **t;
  struct target_ops *runable = ((void*)0);
  int count;

  count = 0;

  for (t = target_structs; t < target_structs + target_struct_size;
       ++t)
    {
      if ((*t)->to_can_run && target_can_run (*t))
 {
   runable = *t;
   ++count;
 }
    }

  if (count != 1)
    error ("Don't know how to %s.  Try \"help target\".", do_mesg);

  return runable;
}
