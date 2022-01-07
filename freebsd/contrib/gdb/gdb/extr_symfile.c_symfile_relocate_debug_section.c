
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_DEBUGGING ;
 int SEC_RELOC ;
 int bfd_map_over_sections (int *,int ,int *) ;
 int * bfd_simple_get_relocated_section_contents (int *,TYPE_1__*,int *,int *) ;
 int symfile_dummy_outputs ;

bfd_byte *
symfile_relocate_debug_section (bfd *abfd, asection *sectp, bfd_byte *buf)
{


  if ((sectp->flags & SEC_RELOC) == 0)
    return ((void*)0);
  if ((sectp->flags & SEC_DEBUGGING) == 0)
    return ((void*)0);



  bfd_map_over_sections (abfd, symfile_dummy_outputs, ((void*)0));

  return bfd_simple_get_relocated_section_contents (abfd, sectp, buf, ((void*)0));
}
