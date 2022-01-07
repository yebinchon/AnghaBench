
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obj_section {scalar_t__ ovly_mapped; int * the_bfd_section; TYPE_1__* objfile; } ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int * obfd; } ;


 size_t LMA ;
 size_t MAPPED ;
 int TARGET_LONG_BYTES ;
 size_t VMA ;
 int bfd_get_section_size (int *) ;
 scalar_t__ bfd_section_lma (int *,int *) ;
 scalar_t__ bfd_section_vma (int *,int *) ;
 int cache_novlys ;
 scalar_t__** cache_ovly_table ;
 scalar_t__ cache_ovly_table_base ;
 int read_target_long_array (scalar_t__,int*,int) ;

__attribute__((used)) static int
simple_overlay_update_1 (struct obj_section *osect)
{
  int i, size;
  bfd *obfd = osect->objfile->obfd;
  asection *bsect = osect->the_bfd_section;

  size = bfd_get_section_size (osect->the_bfd_section);
  for (i = 0; i < cache_novlys; i++)
    if (cache_ovly_table[i][VMA] == bfd_section_vma (obfd, bsect)
 && cache_ovly_table[i][LMA] == bfd_section_lma (obfd, bsect)
                                            )
      {
 read_target_long_array (cache_ovly_table_base + i * TARGET_LONG_BYTES,
    (int *) cache_ovly_table[i], 4);
 if (cache_ovly_table[i][VMA] == bfd_section_vma (obfd, bsect)
     && cache_ovly_table[i][LMA] == bfd_section_lma (obfd, bsect)
                                                )
   {
     osect->ovly_mapped = cache_ovly_table[i][MAPPED];
     return 1;
   }
 else
   return 0;
      }
  return 0;
}
