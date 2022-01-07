
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int * obj_private; int section_offsets; scalar_t__ export_list_size; int * export_list; int name; int * obfd; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;


 int do_cleanups (struct cleanup*) ;
 int do_pxdb (int ) ;
 int hpread_build_psymtabs (struct objfile*,int) ;
 int init_export_symbols (struct objfile*) ;
 int init_import_symbols (struct objfile*) ;
 int init_minimal_symbol_collection () ;
 int install_minimal_symbols (struct objfile*) ;
 struct cleanup* make_cleanup_discard_minimal_symbols () ;
 int som_symtab_read (int *,struct objfile*,int ) ;
 int stabsect_build_psymtabs (struct objfile*,int,char*,char*,char*) ;
 int symfile_bfd_open (int ) ;

__attribute__((used)) static void
som_symfile_read (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  do_pxdb (symfile_bfd_open (objfile->name));

  init_minimal_symbol_collection ();
  back_to = make_cleanup_discard_minimal_symbols ();





  init_import_symbols (objfile);



  objfile->export_list = ((void*)0);
  objfile->export_list_size = 0;







  som_symtab_read (abfd, objfile, objfile->section_offsets);






  install_minimal_symbols (objfile);
  do_cleanups (back_to);





  stabsect_build_psymtabs (objfile, mainline,
      "$GDB_SYMBOLS$", "$GDB_STRINGS$", "$TEXT$");





  hpread_build_psymtabs (objfile, mainline);


  objfile->obj_private = ((void*)0);
}
