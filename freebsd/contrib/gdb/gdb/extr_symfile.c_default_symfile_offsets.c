
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_offsets {scalar_t__* offsets; } ;
struct section_addr_info {int num_sections; struct other_sections* other; } ;
struct other_sections {scalar_t__ addr; size_t sectindex; scalar_t__ name; } ;
struct objfile {struct section_offsets* section_offsets; int num_sections; int objfile_obstack; int obfd; } ;


 int SIZEOF_N_SECTION_OFFSETS (int ) ;
 int bfd_count_sections (int ) ;
 int init_objfile_sect_indices (struct objfile*) ;
 int memset (struct section_offsets*,int ,int ) ;
 scalar_t__ obstack_alloc (int *,int ) ;

void
default_symfile_offsets (struct objfile *objfile,
    struct section_addr_info *addrs)
{
  int i;

  objfile->num_sections = bfd_count_sections (objfile->obfd);
  objfile->section_offsets = (struct section_offsets *)
    obstack_alloc (&objfile->objfile_obstack,
     SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));
  memset (objfile->section_offsets, 0,
   SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));



  for (i = 0; i < addrs->num_sections && addrs->other[i].name; i++)
    {
      struct other_sections *osp ;

      osp = &addrs->other[i] ;
      if (osp->addr == 0)
   continue;




      (objfile->section_offsets)->offsets[osp->sectindex] = osp->addr;
    }



  init_objfile_sect_indices (objfile);
}
