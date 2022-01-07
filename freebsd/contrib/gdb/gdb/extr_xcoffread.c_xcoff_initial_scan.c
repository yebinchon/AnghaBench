
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct objfile {char* name; TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; scalar_t__ sym_private; int objfile_obstack; int * obfd; } ;
struct coff_symfile_info {char* debugsec; int symtbl_num_syms; scalar_t__ symtbl; scalar_t__ max_lineno_offset; scalar_t__ min_lineno_offset; } ;
struct cleanup {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef scalar_t__ file_ptr ;
typedef unsigned int bfd_size_type ;
typedef int bfd ;
struct TYPE_6__ {int local_symesz; } ;


 int SEEK_SET ;
 int bfd_bread (scalar_t__,unsigned int,int *) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 struct bfd_section* bfd_get_section_by_name (int *,char*) ;
 int bfd_get_section_contents (int *,struct bfd_section*,char*,scalar_t__,unsigned int) ;
 int bfd_get_symcount (int *) ;
 int bfd_map_over_sections (int *,int ,struct coff_symfile_info*) ;
 unsigned int bfd_section_size (int *,struct bfd_section*) ;
 int bfd_seek (int *,scalar_t__,int ) ;
 TYPE_3__* coff_data (int *) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,char*,char*) ;
 int find_linenos ;
 int free_pending_blocks () ;
 int init_minimal_symbol_collection () ;
 int init_psymbol_list (struct objfile*,int) ;
 int init_stringtab (int *,scalar_t__,struct objfile*) ;
 int install_minimal_symbols (struct objfile*) ;
 struct cleanup* make_cleanup (int ,int ) ;
 int make_cleanup_discard_minimal_symbols () ;
 scalar_t__ obj_sym_filepos (int *) ;
 scalar_t__ obstack_alloc (int *,unsigned int) ;
 int perror_with_name (char*) ;
 int really_free_pendings ;
 int scan_xcoff_symtab (struct objfile*) ;
 int * symfile_bfd ;

__attribute__((used)) static void
xcoff_initial_scan (struct objfile *objfile, int mainline)
{
  bfd *abfd;
  int val;
  struct cleanup *back_to;
  int num_symbols;
  file_ptr symtab_offset;
  file_ptr stringtab_offset;
  struct coff_symfile_info *info;
  char *name;
  unsigned int size;

  info = (struct coff_symfile_info *) objfile->sym_private;
  symfile_bfd = abfd = objfile->obfd;
  name = objfile->name;

  num_symbols = bfd_get_symcount (abfd);
  symtab_offset = obj_sym_filepos (abfd);
  stringtab_offset = symtab_offset +
    num_symbols * coff_data (abfd)->local_symesz;

  info->min_lineno_offset = 0;
  info->max_lineno_offset = 0;
  bfd_map_over_sections (abfd, find_linenos, info);

  if (num_symbols > 0)
    {

      init_stringtab (abfd, stringtab_offset, objfile);


      {
 struct bfd_section *secp;
 bfd_size_type length;
 char *debugsec = ((void*)0);

 secp = bfd_get_section_by_name (abfd, ".debug");
 if (secp)
   {
     length = bfd_section_size (abfd, secp);
     if (length)
       {
  debugsec =
    (char *) obstack_alloc (&objfile->objfile_obstack, length);

  if (!bfd_get_section_contents (abfd, secp, debugsec,
            (file_ptr) 0, length))
    {
      error ("Error reading .debug section of `%s': %s",
      name, bfd_errmsg (bfd_get_error ()));
    }
       }
   }
 ((struct coff_symfile_info *) objfile->sym_private)->debugsec =
   debugsec;
      }
    }



  val = bfd_seek (abfd, symtab_offset, SEEK_SET);
  if (val < 0)
    error ("Error reading symbols from %s: %s",
    name, bfd_errmsg (bfd_get_error ()));
  size = coff_data (abfd)->local_symesz * num_symbols;
  ((struct coff_symfile_info *) objfile->sym_private)->symtbl =
    obstack_alloc (&objfile->objfile_obstack, size);
  ((struct coff_symfile_info *) objfile->sym_private)->symtbl_num_syms =
    num_symbols;

  val = bfd_bread (((struct coff_symfile_info *) objfile->sym_private)->symtbl,
     size, abfd);
  if (val != size)
    perror_with_name ("reading symbol table");


  if (mainline
      || (objfile->global_psymbols.size == 0
   && objfile->static_psymbols.size == 0))




    init_psymbol_list (objfile, num_symbols);

  free_pending_blocks ();
  back_to = make_cleanup (really_free_pendings, 0);

  init_minimal_symbol_collection ();
  make_cleanup_discard_minimal_symbols ();




  scan_xcoff_symtab (objfile);




  install_minimal_symbols (objfile);

  do_cleanups (back_to);
}
