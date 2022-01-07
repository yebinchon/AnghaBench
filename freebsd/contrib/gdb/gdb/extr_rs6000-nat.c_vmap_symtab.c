
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap {scalar_t__ dvma; scalar_t__ dstart; scalar_t__ tvma; scalar_t__ tstart; int loaded; struct objfile* objfile; } ;
struct section_offsets {scalar_t__* offsets; } ;
struct objfile {int num_sections; int section_offsets; } ;


 scalar_t__ ANOFFSET (int ,int) ;
 size_t SECT_OFF_BSS (struct objfile*) ;
 size_t SECT_OFF_DATA (struct objfile*) ;
 size_t SECT_OFF_TEXT (struct objfile*) ;
 int SIZEOF_N_SECTION_OFFSETS (int) ;
 scalar_t__ alloca (int ) ;
 int objfile_relocate (struct objfile*,struct section_offsets*) ;
 struct objfile* symfile_objfile ;

__attribute__((used)) static void
vmap_symtab (struct vmap *vp)
{
  struct objfile *objfile;
  struct section_offsets *new_offsets;
  int i;

  objfile = vp->objfile;
  if (objfile == ((void*)0))
    {



      if (symfile_objfile == ((void*)0))
 return;
      objfile = symfile_objfile;
    }
  else if (!vp->loaded)

    return;

  new_offsets =
    (struct section_offsets *)
    alloca (SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));

  for (i = 0; i < objfile->num_sections; ++i)
    new_offsets->offsets[i] = ANOFFSET (objfile->section_offsets, i);



  new_offsets->offsets[SECT_OFF_TEXT (objfile)] = vp->tstart - vp->tvma;
  new_offsets->offsets[SECT_OFF_DATA (objfile)] = vp->dstart - vp->dvma;
  new_offsets->offsets[SECT_OFF_BSS (objfile)] = vp->dstart - vp->dvma;

  objfile_relocate (objfile, new_offsets);
}
