
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section_offsets {int dummy; } ;
struct section_addr_info {int num_sections; int * other; } ;
struct partial_symtab {struct partial_symtab* next; } ;
struct objfile {int * sf; TYPE_1__* separate_debug_objfile; struct partial_symtab* psymtabs; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {struct objfile* separate_debug_objfile_backlink; } ;


 int OBJF_READNOW ;
 struct section_addr_info* alloc_section_addr_info (int ) ;
 struct objfile* allocate_objfile (int *,int) ;
 int bfd_count_sections (int *) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 char* find_separate_debug_file (struct objfile*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ have_full_symbols () ;
 scalar_t__ have_partial_symbols () ;
 scalar_t__ info_verbose ;
 struct cleanup* make_cleanup (int (*) (char*),struct section_addr_info*) ;
 int new_symfile_objfile (struct objfile*,int,int) ;
 int post_add_symbol_hook () ;
 int pre_add_symbol_hook (char*) ;
 int printf_unfiltered (char*,...) ;
 int psymtab_to_symtab (struct partial_symtab*) ;
 int put_objfile_before (TYPE_1__*,struct objfile*) ;
 int query (char*,char*) ;
 scalar_t__ readnow_symbol_files ;
 void* symbol_file_add (char*,int,struct section_addr_info*,int ,int) ;
 int * symfile_bfd_open (char*) ;
 int syms_from_objfile (struct objfile*,struct section_addr_info*,struct section_offsets*,int,int,int) ;
 int target_new_objfile_hook (struct objfile*) ;
 int wrap_here (char*) ;
 int xfree (char*) ;

__attribute__((used)) static struct objfile *
symbol_file_add_with_addrs_or_offsets (char *name, int from_tty,
                                       struct section_addr_info *addrs,
                                       struct section_offsets *offsets,
                                       int num_offsets,
                                       int mainline, int flags)
{
  struct objfile *objfile;
  struct partial_symtab *psymtab;
  char *debugfile;
  bfd *abfd;
  struct section_addr_info *orig_addrs;
  struct cleanup *my_cleanups;




  abfd = symfile_bfd_open (name);

  if ((have_full_symbols () || have_partial_symbols ())
      && mainline
      && from_tty
      && !query ("Load new symbol table from \"%s\"? ", name))
    error ("Not confirmed.");

  objfile = allocate_objfile (abfd, flags);

  orig_addrs = alloc_section_addr_info (bfd_count_sections (abfd));
  my_cleanups = make_cleanup (xfree, orig_addrs);
  if (addrs)
    {
      int i;
      orig_addrs->num_sections = addrs->num_sections;
      for (i = 0; i < addrs->num_sections; i++)
 orig_addrs->other[i] = addrs->other[i];
    }




  if (from_tty || info_verbose)
    {
      if (pre_add_symbol_hook)
 pre_add_symbol_hook (name);
      else
 {
   printf_unfiltered ("Reading symbols from %s...", name);
   wrap_here ("");
   gdb_flush (gdb_stdout);
 }
    }
  syms_from_objfile (objfile, addrs, offsets, num_offsets,
       mainline, from_tty);






  if ((flags & OBJF_READNOW) || readnow_symbol_files)
    {
      if (from_tty || info_verbose)
 {
   printf_unfiltered ("expanding to full symbols...");
   wrap_here ("");
   gdb_flush (gdb_stdout);
 }

      for (psymtab = objfile->psymtabs;
    psymtab != ((void*)0);
    psymtab = psymtab->next)
 {
   psymtab_to_symtab (psymtab);
 }
    }

  debugfile = find_separate_debug_file (objfile);
  if (debugfile)
    {
      if (addrs != ((void*)0))
 {
   objfile->separate_debug_objfile
            = symbol_file_add (debugfile, from_tty, orig_addrs, 0, flags);
 }
      else
 {
   objfile->separate_debug_objfile
            = symbol_file_add (debugfile, from_tty, ((void*)0), 0, flags);
 }
      objfile->separate_debug_objfile->separate_debug_objfile_backlink
        = objfile;



      put_objfile_before (objfile->separate_debug_objfile, objfile);

      xfree (debugfile);
    }

  if (!have_partial_symbols () && !have_full_symbols ())
    {
      wrap_here ("");
      printf_unfiltered ("(no debugging symbols found)...");
      wrap_here ("");
    }

  if (from_tty || info_verbose)
    {
      if (post_add_symbol_hook)
 post_add_symbol_hook ();
      else
 {
   printf_unfiltered ("done.\n");
 }
    }




  gdb_flush (gdb_stdout);

  do_cleanups (my_cleanups);

  if (objfile->sf == ((void*)0))
    return objfile;

  new_symfile_objfile (objfile, mainline, from_tty);

  if (target_new_objfile_hook)
    target_new_objfile_hook (objfile);

  return (objfile);
}
