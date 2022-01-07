
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int obfd; } ;
struct find_targ_sec_arg {int targ_index; int* resultp; struct objfile* objfile; int ** bfd_sect; } ;
typedef int asection ;


 int SECT_OFF_TEXT (struct objfile*) ;
 int bfd_map_over_sections (int ,int ,struct find_targ_sec_arg*) ;
 int find_targ_sec ;

__attribute__((used)) static asection *
secnum_to_bfd_section (int secnum, struct objfile *objfile)
{
  int off = SECT_OFF_TEXT (objfile);
  asection *sect = ((void*)0);
  struct find_targ_sec_arg args;
  args.targ_index = secnum;
  args.resultp = &off;
  args.bfd_sect = &sect;
  args.objfile = objfile;
  bfd_map_over_sections (objfile->obfd, find_targ_sec, &args);
  return sect;
}
