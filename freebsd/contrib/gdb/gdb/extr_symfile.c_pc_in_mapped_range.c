
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vma; } ;
typedef TYPE_1__ asection ;
typedef scalar_t__ CORE_ADDR ;


 int bfd_get_section_size (TYPE_1__*) ;
 scalar_t__ overlay_debugging ;
 scalar_t__ section_is_overlay (TYPE_1__*) ;

CORE_ADDR
pc_in_mapped_range (CORE_ADDR pc, asection *section)
{


  int size;

  if (overlay_debugging)
    if (section && section_is_overlay (section))
      {
 size = bfd_get_section_size (section);
 if (section->vma <= pc && pc < section->vma + size)
   return 1;
      }
  return 0;
}
