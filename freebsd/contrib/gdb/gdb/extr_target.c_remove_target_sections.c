
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {struct section_table* to_sections_end; struct section_table* to_sections; } ;
struct section_table {int * bfd; } ;
typedef int bfd ;


 int target_resize_to_sections (struct target_ops*,int) ;
 int target_struct_size ;
 struct target_ops** target_structs ;

void
remove_target_sections (bfd *abfd)
{
  struct target_ops **t;

  for (t = target_structs; t < target_structs + target_struct_size; t++)
    {
      struct section_table *src, *dest;

      dest = (*t)->to_sections;
      for (src = (*t)->to_sections; src < (*t)->to_sections_end; src++)
 if (src->bfd != abfd)
   {

     if (dest < src) *dest = *src;
     dest++;
   }


      if (dest < src)
 target_resize_to_sections (*t, dest - src);
    }
}
