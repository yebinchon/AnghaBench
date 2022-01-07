
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section_offsets {int * offsets; } ;
struct section_addr_info {TYPE_1__* other; } ;
struct objfile {int num_sections; int sect_index_data; int sect_index_bss; int sect_index_rodata; struct section_offsets* section_offsets; scalar_t__ sect_index_text; int objfile_obstack; int obfd; } ;
struct TYPE_2__ {int addr; scalar_t__ name; } ;
typedef int CORE_ADDR ;


 int SIZEOF_N_SECTION_OFFSETS (int) ;
 int bfd_count_sections (int ) ;
 scalar_t__ obstack_alloc (int *,int ) ;
 int som_solib_section_offsets (struct objfile*,struct section_offsets*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static void
som_symfile_offsets (struct objfile *objfile, struct section_addr_info *addrs)
{
  int i;
  CORE_ADDR text_addr;

  objfile->num_sections = bfd_count_sections (objfile->obfd);
  objfile->section_offsets = (struct section_offsets *)
    obstack_alloc (&objfile->objfile_obstack,
     SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));







  objfile->sect_index_text = 0;
  objfile->sect_index_data = 1;
  objfile->sect_index_bss = 2;
  objfile->sect_index_rodata = 3;



  if (!som_solib_section_offsets (objfile, objfile->section_offsets))
    {



      for (i = 0; i < objfile->num_sections && addrs->other[i].name; i++)
 if (strcmp (addrs->other[i].name, ".text") == 0)
   break;
      text_addr = addrs->other[i].addr;

      for (i = 0; i < objfile->num_sections; i++)
 (objfile->section_offsets)->offsets[i] = text_addr;
    }
}
