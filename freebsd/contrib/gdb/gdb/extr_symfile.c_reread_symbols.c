
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {long st_mtime; } ;
struct section_offsets {int dummy; } ;
struct TYPE_10__ {scalar_t__ list; } ;
struct objfile {long mtime; int num_sections; int flags; TYPE_2__* sf; struct section_offsets* section_offsets; int objfile_obstack; int name; void* macro_cache; void* psymbol_cache; int * md; int * fundamental_types; TYPE_3__ msymbol_demangled_hash; TYPE_3__ msymbol_hash; scalar_t__ minimal_symbol_count; int * sym_private; int * msymbols; int * cp_namespace_symtab; int * free_psymtabs; int * psymtabs; int * symtabs; int * sections; int * demangled_names_hash; TYPE_3__ static_psymbols; TYPE_3__ global_psymbols; TYPE_4__* obfd; struct objfile* next; } ;
struct cleanup {int dummy; } ;
struct TYPE_11__ {TYPE_1__* my_archive; } ;
struct TYPE_9__ {int (* sym_read ) (struct objfile*,int ) ;int (* sym_init ) (struct objfile*) ;int (* sym_new_init ) (struct objfile*) ;int (* sym_finish ) (struct objfile*) ;} ;
struct TYPE_8__ {int filename; } ;


 int OBJF_SYMS ;
 int RESET_HP_UX_GLOBALS () ;
 int SIZEOF_N_SECTION_OFFSETS (int) ;
 scalar_t__ alloca (int ) ;
 int bcache_xfree (void*) ;
 void* bcache_xmalloc () ;
 int bfd_check_format (TYPE_4__*,int ) ;
 int bfd_close (TYPE_4__*) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 char* bfd_get_filename (TYPE_4__*) ;
 int bfd_object ;
 TYPE_4__* bfd_openr (char*,int ) ;
 scalar_t__ build_objfile_section_table (struct objfile*) ;
 int clear_complaints (int *,int,int) ;
 int clear_objfile_data (struct objfile*) ;
 int clear_symtab_users () ;
 int clear_symtab_users_cleanup ;
 int discard_cleanups (struct cleanup*) ;
 int error (char*,int ,...) ;
 int gnutarget ;
 int have_full_symbols () ;
 int have_partial_symbols () ;
 int htab_delete (int *) ;
 int make_cleanup (int ,int ) ;
 struct cleanup* make_cleanup_free_objfile (struct objfile*) ;
 int memcpy (struct section_offsets*,struct section_offsets*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 struct objfile* object_files ;
 scalar_t__ obstack_alloc (int *,int ) ;
 int obstack_free (int *,int ) ;
 int obstack_init (int *) ;
 int printf_unfiltered (char*,...) ;
 int reinit_frame_cache () ;
 int reread_separate_symbols (struct objfile*) ;
 int stat (int ,struct stat*) ;
 int stub1 (struct objfile*) ;
 int stub2 (struct objfile*) ;
 int stub3 (struct objfile*) ;
 int stub4 (struct objfile*,int ) ;
 int symfile_complaints ;
 struct objfile* symfile_objfile ;
 int terminate_minimal_symbol_table (struct objfile*) ;
 int wrap_here (char*) ;
 int xmfree (int *,scalar_t__) ;

void
reread_symbols (void)
{
  struct objfile *objfile;
  long new_modtime;
  int reread_one = 0;
  struct stat new_statbuf;
  int res;







  for (objfile = object_files; objfile; objfile = objfile->next)
    {
      if (objfile->obfd)
 {
     res = stat (objfile->name, &new_statbuf);
   if (res != 0)
     {

       printf_unfiltered ("`%s' has disappeared; keeping its symbols.\n",
          objfile->name);
       continue;
     }
   new_modtime = new_statbuf.st_mtime;
   if (new_modtime != objfile->mtime)
     {
       struct cleanup *old_cleanups;
       struct section_offsets *offsets;
       int num_offsets;
       char *obfd_filename;

       printf_unfiltered ("`%s' has changed; re-reading symbols.\n",
          objfile->name);
       old_cleanups = make_cleanup_free_objfile (objfile);

       make_cleanup (clear_symtab_users_cleanup, 0 );




       obfd_filename = bfd_get_filename (objfile->obfd);
       if (!bfd_close (objfile->obfd))
  error ("Can't close BFD for %s: %s", objfile->name,
         bfd_errmsg (bfd_get_error ()));
       objfile->obfd = bfd_openr (obfd_filename, gnutarget);
       if (objfile->obfd == ((void*)0))
  error ("Can't open %s to read symbols.", objfile->name);

       if (!bfd_check_format (objfile->obfd, bfd_object))
  error ("Can't read symbols from %s: %s.", objfile->name,
         bfd_errmsg (bfd_get_error ()));



       num_offsets = objfile->num_sections;
       offsets = ((struct section_offsets *)
    alloca (SIZEOF_N_SECTION_OFFSETS (num_offsets)));
       memcpy (offsets, objfile->section_offsets,
        SIZEOF_N_SECTION_OFFSETS (num_offsets));







       if (objfile->global_psymbols.list)
  xmfree (objfile->md, objfile->global_psymbols.list);
       memset (&objfile->global_psymbols, 0,
        sizeof (objfile->global_psymbols));
       if (objfile->static_psymbols.list)
  xmfree (objfile->md, objfile->static_psymbols.list);
       memset (&objfile->static_psymbols, 0,
        sizeof (objfile->static_psymbols));


       bcache_xfree (objfile->psymbol_cache);
       objfile->psymbol_cache = bcache_xmalloc ();
       bcache_xfree (objfile->macro_cache);
       objfile->macro_cache = bcache_xmalloc ();
       if (objfile->demangled_names_hash != ((void*)0))
  {
    htab_delete (objfile->demangled_names_hash);
    objfile->demangled_names_hash = ((void*)0);
  }
       obstack_free (&objfile->objfile_obstack, 0);
       objfile->sections = ((void*)0);
       objfile->symtabs = ((void*)0);
       objfile->psymtabs = ((void*)0);
       objfile->free_psymtabs = ((void*)0);
       objfile->cp_namespace_symtab = ((void*)0);
       objfile->msymbols = ((void*)0);
       objfile->sym_private = ((void*)0);
       objfile->minimal_symbol_count = 0;
       memset (&objfile->msymbol_hash, 0,
        sizeof (objfile->msymbol_hash));
       memset (&objfile->msymbol_demangled_hash, 0,
        sizeof (objfile->msymbol_demangled_hash));
       objfile->fundamental_types = ((void*)0);
       clear_objfile_data (objfile);
       if (objfile->sf != ((void*)0))
  {
    (*objfile->sf->sym_finish) (objfile);
  }


       objfile->md = ((void*)0);
       objfile->psymbol_cache = bcache_xmalloc ();
       objfile->macro_cache = bcache_xmalloc ();




       obstack_init (&objfile->objfile_obstack);
       if (build_objfile_section_table (objfile))
  {
    error ("Can't find the file sections in `%s': %s",
    objfile->name, bfd_errmsg (bfd_get_error ()));
  }
              terminate_minimal_symbol_table (objfile);



       objfile->section_offsets = (struct section_offsets *)
  obstack_alloc (&objfile->objfile_obstack,
          SIZEOF_N_SECTION_OFFSETS (num_offsets));
       memcpy (objfile->section_offsets, offsets,
        SIZEOF_N_SECTION_OFFSETS (num_offsets));
       objfile->num_sections = num_offsets;




       if (objfile == symfile_objfile)
  {
    (*objfile->sf->sym_new_init) (objfile);



  }

       (*objfile->sf->sym_init) (objfile);
       clear_complaints (&symfile_complaints, 1, 1);



       (*objfile->sf->sym_read) (objfile, 0);
       if (!have_partial_symbols () && !have_full_symbols ())
  {
    wrap_here ("");
    printf_unfiltered ("(no debugging symbols found)\n");
    wrap_here ("");
  }
       objfile->flags |= OBJF_SYMS;


       clear_complaints (&symfile_complaints, 0, 1);




       reinit_frame_cache ();


       discard_cleanups (old_cleanups);




       objfile->mtime = new_modtime;
       reread_one = 1;
              reread_separate_symbols (objfile);
     }
 }
    }

  if (reread_one)
    clear_symtab_users ();
}
