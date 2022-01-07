
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int sect_index_text; int sect_index_data; int sect_index_bss; int sect_index_rodata; int num_sections; int section_offsets; int obfd; } ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ asection ;


 scalar_t__ ANOFFSET (int ,int) ;
 TYPE_1__* bfd_get_section_by_name (int ,char*) ;

__attribute__((used)) static void
init_objfile_sect_indices (struct objfile *objfile)
{
  asection *sect;
  int i;

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
  for (i = 0; i < objfile->num_sections; i++)
    {
      if (ANOFFSET (objfile->section_offsets, i) != 0)
 {
   break;
 }
    }
  if (i == objfile->num_sections)
    {
      if (objfile->sect_index_text == -1)
 objfile->sect_index_text = 0;
      if (objfile->sect_index_data == -1)
 objfile->sect_index_data = 0;
      if (objfile->sect_index_bss == -1)
 objfile->sect_index_bss = 0;
      if (objfile->sect_index_rodata == -1)
 objfile->sect_index_rodata = 0;
    }
}
