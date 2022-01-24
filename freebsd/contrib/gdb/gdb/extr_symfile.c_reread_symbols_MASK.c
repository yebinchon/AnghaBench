#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {long st_mtime; } ;
struct section_offsets {int dummy; } ;
struct TYPE_10__ {scalar_t__ list; } ;
struct objfile {long mtime; int num_sections; int /*<<< orphan*/  flags; TYPE_2__* sf; struct section_offsets* section_offsets; int /*<<< orphan*/  objfile_obstack; int /*<<< orphan*/  name; void* macro_cache; void* psymbol_cache; int /*<<< orphan*/ * md; int /*<<< orphan*/ * fundamental_types; TYPE_3__ msymbol_demangled_hash; TYPE_3__ msymbol_hash; scalar_t__ minimal_symbol_count; int /*<<< orphan*/ * sym_private; int /*<<< orphan*/ * msymbols; int /*<<< orphan*/ * cp_namespace_symtab; int /*<<< orphan*/ * free_psymtabs; int /*<<< orphan*/ * psymtabs; int /*<<< orphan*/ * symtabs; int /*<<< orphan*/ * sections; int /*<<< orphan*/ * demangled_names_hash; TYPE_3__ static_psymbols; TYPE_3__ global_psymbols; TYPE_4__* obfd; struct objfile* next; } ;
struct cleanup {int dummy; } ;
struct TYPE_11__ {TYPE_1__* my_archive; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* sym_read ) (struct objfile*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* sym_init ) (struct objfile*) ;int /*<<< orphan*/  (* sym_new_init ) (struct objfile*) ;int /*<<< orphan*/  (* sym_finish ) (struct objfile*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJF_SYMS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_4__* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  clear_symtab_users_cleanup ; 
 int /*<<< orphan*/  FUNC15 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC21 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC22 (struct section_offsets*,struct section_offsets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 struct objfile* object_files ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct objfile*) ; 
 int FUNC30 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC31 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC32 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC33 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC34 (struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 struct objfile* symfile_objfile ; 
 int /*<<< orphan*/  FUNC35 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC38 (void)
{
  struct objfile *objfile;
  long new_modtime;
  int reread_one = 0;
  struct stat new_statbuf;
  int res;

  /* With the addition of shared libraries, this should be modified,
     the load time should be saved in the partial symbol tables, since
     different tables may come from different source files.  FIXME.
     This routine should then walk down each partial symbol table
     and see if the symbol table that it originates from has been changed */

  for (objfile = object_files; objfile; objfile = objfile->next)
    {
      if (objfile->obfd)
	{
#ifdef DEPRECATED_IBM6000_TARGET
	  /* If this object is from a shared library, then you should
	     stat on the library name, not member name. */

	  if (objfile->obfd->my_archive)
	    res = stat (objfile->obfd->my_archive->filename, &new_statbuf);
	  else
#endif
	    res = FUNC30 (objfile->name, &new_statbuf);
	  if (res != 0)
	    {
	      /* FIXME, should use print_sys_errmsg but it's not filtered. */
	      FUNC27 ("`%s' has disappeared; keeping its symbols.\n",
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

	      FUNC27 ("`%s' has changed; re-reading symbols.\n",
			       objfile->name);

	      /* There are various functions like symbol_file_add,
	         symfile_bfd_open, syms_from_objfile, etc., which might
	         appear to do what we want.  But they have various other
	         effects which we *don't* want.  So we just do stuff
	         ourselves.  We don't worry about mapped files (for one thing,
	         any mapped file will be out of date).  */

	      /* If we get an error, blow away this objfile (not sure if
	         that is the correct response for things like shared
	         libraries).  */
	      old_cleanups = FUNC21 (objfile);
	      /* We need to do this whenever any symbols go away.  */
	      FUNC20 (clear_symtab_users_cleanup, 0 /*ignore*/);

	      /* Clean up any state BFD has sitting around.  We don't need
	         to close the descriptor but BFD lacks a way of closing the
	         BFD without closing the descriptor.  */
	      obfd_filename = FUNC9 (objfile->obfd);
	      if (!FUNC6 (objfile->obfd))
		FUNC16 ("Can't close BFD for %s: %s", objfile->name,
		       FUNC7 (FUNC8 ()));
	      objfile->obfd = FUNC10 (obfd_filename, gnutarget);
	      if (objfile->obfd == NULL)
		FUNC16 ("Can't open %s to read symbols.", objfile->name);
	      /* bfd_openr sets cacheable to true, which is what we want.  */
	      if (!FUNC5 (objfile->obfd, bfd_object))
		FUNC16 ("Can't read symbols from %s: %s.", objfile->name,
		       FUNC7 (FUNC8 ()));

	      /* Save the offsets, we will nuke them with the rest of the
	         objfile_obstack.  */
	      num_offsets = objfile->num_sections;
	      offsets = ((struct section_offsets *) 
			 FUNC2 (FUNC1 (num_offsets)));
	      FUNC22 (offsets, objfile->section_offsets, 
		      FUNC1 (num_offsets));

	      /* Nuke all the state that we will re-read.  Much of the following
	         code which sets things to NULL really is necessary to tell
	         other parts of GDB that there is nothing currently there.  */

	      /* FIXME: Do we have to free a whole linked list, or is this
	         enough?  */
	      if (objfile->global_psymbols.list)
		FUNC37 (objfile->md, objfile->global_psymbols.list);
	      FUNC23 (&objfile->global_psymbols, 0,
		      sizeof (objfile->global_psymbols));
	      if (objfile->static_psymbols.list)
		FUNC37 (objfile->md, objfile->static_psymbols.list);
	      FUNC23 (&objfile->static_psymbols, 0,
		      sizeof (objfile->static_psymbols));

	      /* Free the obstacks for non-reusable objfiles */
	      FUNC3 (objfile->psymbol_cache);
	      objfile->psymbol_cache = FUNC4 ();
	      FUNC3 (objfile->macro_cache);
	      objfile->macro_cache = FUNC4 ();
	      if (objfile->demangled_names_hash != NULL)
		{
		  FUNC19 (objfile->demangled_names_hash);
		  objfile->demangled_names_hash = NULL;
		}
	      FUNC25 (&objfile->objfile_obstack, 0);
	      objfile->sections = NULL;
	      objfile->symtabs = NULL;
	      objfile->psymtabs = NULL;
	      objfile->free_psymtabs = NULL;
	      objfile->cp_namespace_symtab = NULL;
	      objfile->msymbols = NULL;
	      objfile->sym_private = NULL;
	      objfile->minimal_symbol_count = 0;
	      FUNC23 (&objfile->msymbol_hash, 0,
		      sizeof (objfile->msymbol_hash));
	      FUNC23 (&objfile->msymbol_demangled_hash, 0,
		      sizeof (objfile->msymbol_demangled_hash));
	      objfile->fundamental_types = NULL;
	      FUNC13 (objfile);
	      if (objfile->sf != NULL)
		{
		  (*objfile->sf->sym_finish) (objfile);
		}

	      /* We never make this a mapped file.  */
	      objfile->md = NULL;
	      objfile->psymbol_cache = FUNC4 ();
	      objfile->macro_cache = FUNC4 ();
	      /* obstack_init also initializes the obstack so it is
	         empty.  We could use obstack_specify_allocation but
	         gdb_obstack.h specifies the alloc/dealloc
	         functions.  */
	      FUNC26 (&objfile->objfile_obstack);
	      if (FUNC11 (objfile))
		{
		  FUNC16 ("Can't find the file sections in `%s': %s",
			 objfile->name, FUNC7 (FUNC8 ()));
		}
              FUNC35 (objfile);

	      /* We use the same section offsets as from last time.  I'm not
	         sure whether that is always correct for shared libraries.  */
	      objfile->section_offsets = (struct section_offsets *)
		FUNC24 (&objfile->objfile_obstack, 
			       FUNC1 (num_offsets));
	      FUNC22 (objfile->section_offsets, offsets, 
		      FUNC1 (num_offsets));
	      objfile->num_sections = num_offsets;

	      /* What the hell is sym_new_init for, anyway?  The concept of
	         distinguishing between the main file and additional files
	         in this way seems rather dubious.  */
	      if (objfile == symfile_objfile)
		{
		  (*objfile->sf->sym_new_init) (objfile);
#ifdef HPUXHPPA
		  RESET_HP_UX_GLOBALS ();
#endif
		}

	      (*objfile->sf->sym_init) (objfile);
	      FUNC12 (&symfile_complaints, 1, 1);
	      /* The "mainline" parameter is a hideous hack; I think leaving it
	         zero is OK since dbxread.c also does what it needs to do if
	         objfile->global_psymbols.size is 0.  */
	      (*objfile->sf->sym_read) (objfile, 0);
	      if (!FUNC18 () && !FUNC17 ())
		{
		  FUNC36 ("");
		  FUNC27 ("(no debugging symbols found)\n");
		  FUNC36 ("");
		}
	      objfile->flags |= OBJF_SYMS;

	      /* We're done reading the symbol file; finish off complaints.  */
	      FUNC12 (&symfile_complaints, 0, 1);

	      /* Getting new symbols may change our opinion about what is
	         frameless.  */

	      FUNC28 ();

	      /* Discard cleanups as symbol reading was successful.  */
	      FUNC15 (old_cleanups);

	      /* If the mtime has changed between the time we set new_modtime
	         and now, we *want* this to be out of date, so don't call stat
	         again now.  */
	      objfile->mtime = new_modtime;
	      reread_one = 1;
              FUNC29 (objfile);
	    }
	}
    }

  if (reread_one)
    FUNC14 ();
}