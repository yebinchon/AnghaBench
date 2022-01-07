
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {struct section_table* to_sections_end; struct section_table* to_sections; } ;
struct section_table {int dummy; } ;
struct TYPE_2__ {struct section_table* to_sections_end; struct section_table* to_sections; } ;


 TYPE_1__ current_target ;
 int target_struct_size ;
 struct target_ops** target_structs ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

int
target_resize_to_sections (struct target_ops *target, int num_added)
{
  struct target_ops **t;
  struct section_table *old_value;
  int old_count;

  old_value = target->to_sections;

  if (target->to_sections)
    {
      old_count = target->to_sections_end - target->to_sections;
      target->to_sections = (struct section_table *)
 xrealloc ((char *) target->to_sections,
    (sizeof (struct section_table)) * (num_added + old_count));
    }
  else
    {
      old_count = 0;
      target->to_sections = (struct section_table *)
 xmalloc ((sizeof (struct section_table)) * num_added);
    }
  target->to_sections_end = target->to_sections + (num_added + old_count);




  if (old_value)
    {
      for (t = target_structs; t < target_structs + target_struct_size;
    ++t)
 {
   if ((*t)->to_sections == old_value)
     {
       (*t)->to_sections = target->to_sections;
       (*t)->to_sections_end = target->to_sections_end;
     }
 }


      if (current_target.to_sections == old_value)
 {
   current_target.to_sections = target->to_sections;
   current_target.to_sections_end = target->to_sections_end;
 }
    }

  return old_count;

}
