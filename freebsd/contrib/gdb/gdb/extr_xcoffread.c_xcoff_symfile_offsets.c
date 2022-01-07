
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section_offsets {scalar_t__* offsets; } ;
struct section_addr_info {int dummy; } ;
struct objfile {int num_sections; struct section_offsets* section_offsets; int sect_index_rodata; int obfd; int sect_index_bss; int sect_index_data; int sect_index_text; int objfile_obstack; } ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ asection ;


 int SIZEOF_N_SECTION_OFFSETS (int) ;
 int bfd_count_sections (int ) ;
 TYPE_1__* bfd_get_section_by_name (int ,char*) ;
 scalar_t__ obstack_alloc (int *,int ) ;

__attribute__((used)) static void
xcoff_symfile_offsets (struct objfile *objfile, struct section_addr_info *addrs)
{
  asection *sect = ((void*)0);
  int i;

  objfile->num_sections = bfd_count_sections (objfile->obfd);
  objfile->section_offsets = (struct section_offsets *)
    obstack_alloc (&objfile->objfile_obstack,
     SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));


  sect = bfd_get_section_by_name (objfile->obfd, ".text");
  if (sect)
    objfile->sect_index_text = sect->index;

  sect = bfd_get_section_by_name (objfile->obfd, ".data");
  if (sect)
    objfile->sect_index_data = sect->index;

  sect = bfd_get_section_by_name (objfile->obfd, ".bss");
  if (sect)
    objfile->sect_index_bss = sect->index;

  sect = bfd_get_section_by_name (objfile->obfd, ".rodata");
  if (sect)
    objfile->sect_index_rodata = sect->index;

  for (i = 0; i < objfile->num_sections; ++i)
    {
 (objfile->section_offsets)->offsets[i] = 0;
    }
}
