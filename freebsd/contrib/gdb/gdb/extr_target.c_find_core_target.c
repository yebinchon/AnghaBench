
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {scalar_t__ to_stratum; } ;


 scalar_t__ core_stratum ;
 int target_struct_size ;
 struct target_ops** target_structs ;

struct target_ops *
find_core_target (void)
{
  struct target_ops **t;
  struct target_ops *runable = ((void*)0);
  int count;

  count = 0;

  for (t = target_structs; t < target_structs + target_struct_size;
       ++t)
    {
      if ((*t)->to_stratum == core_stratum)
 {
   runable = *t;
   ++count;
 }
    }

  return (count == 1 ? runable : ((void*)0));
}
