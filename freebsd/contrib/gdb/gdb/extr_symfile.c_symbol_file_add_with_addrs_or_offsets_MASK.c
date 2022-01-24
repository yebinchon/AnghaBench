#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct section_offsets {int dummy; } ;
struct section_addr_info {int num_sections; int /*<<< orphan*/ * other; } ;
struct partial_symtab {struct partial_symtab* next; } ;
struct objfile {int /*<<< orphan*/ * sf; TYPE_1__* separate_debug_objfile; struct partial_symtab* psymtabs; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {struct objfile* separate_debug_objfile_backlink; } ;

/* Variables and functions */
 int OBJF_READNOW ; 
 struct section_addr_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct objfile* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ info_verbose ; 
 struct cleanup* FUNC9 (int /*<<< orphan*/  (*) (char*),struct section_addr_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct objfile*,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct partial_symtab*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ readnow_symbol_files ; 
 void* FUNC17 (char*,int,struct section_addr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct objfile*,struct section_addr_info*,struct section_offsets*,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static struct objfile *
FUNC23 (char *name, int from_tty,
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

  /* Open a bfd for the file, and give user a chance to burp if we'd be
     interactively wiping out any existing symbols.  */

  abfd = FUNC18 (name);

  if ((FUNC7 () || FUNC8 ())
      && mainline
      && from_tty
      && !FUNC16 ("Load new symbol table from \"%s\"? ", name))
    FUNC4 ("Not confirmed.");

  objfile = FUNC1 (abfd, flags);

  orig_addrs = FUNC0 (FUNC2 (abfd));
  my_cleanups = FUNC9 (xfree, orig_addrs);
  if (addrs)
    {
      int i;
      orig_addrs->num_sections = addrs->num_sections;
      for (i = 0; i < addrs->num_sections; i++)
	orig_addrs->other[i] = addrs->other[i];
    }

  /* We either created a new mapped symbol table, mapped an existing
     symbol table file which has not had initial symbol reading
     performed, or need to read an unmapped symbol table. */
  if (from_tty || info_verbose)
    {
      if (&pre_add_symbol_hook)
	FUNC12 (name);
      else
	{
	  FUNC13 ("Reading symbols from %s...", name);
	  FUNC21 ("");
	  FUNC6 (gdb_stdout);
	}
    }
  FUNC19 (objfile, addrs, offsets, num_offsets,
		     mainline, from_tty);

  /* We now have at least a partial symbol table.  Check to see if the
     user requested that all symbols be read on initial access via either
     the gdb startup command line or on a per symbol file basis.  Expand
     all partial symbol tables for this objfile if so. */

  if ((flags & OBJF_READNOW) || readnow_symbol_files)
    {
      if (from_tty || info_verbose)
	{
	  FUNC13 ("expanding to full symbols...");
	  FUNC21 ("");
	  FUNC6 (gdb_stdout);
	}

      for (psymtab = objfile->psymtabs;
	   psymtab != NULL;
	   psymtab = psymtab->next)
	{
	  FUNC14 (psymtab);
	}
    }

  debugfile = FUNC5 (objfile);
  if (debugfile)
    {
      if (addrs != NULL)
	{
	  objfile->separate_debug_objfile
            = FUNC17 (debugfile, from_tty, orig_addrs, 0, flags);
	}
      else
	{
	  objfile->separate_debug_objfile
            = FUNC17 (debugfile, from_tty, NULL, 0, flags);
	}
      objfile->separate_debug_objfile->separate_debug_objfile_backlink
        = objfile;
      
      /* Put the separate debug object before the normal one, this is so that
         usage of the ALL_OBJFILES_SAFE macro will stay safe. */
      FUNC15 (objfile->separate_debug_objfile, objfile);
      
      FUNC22 (debugfile);
    }
  
  if (!FUNC8 () && !FUNC7 ())
    {
      FUNC21 ("");
      FUNC13 ("(no debugging symbols found)...");
      FUNC21 ("");
    }

  if (from_tty || info_verbose)
    {
      if (&post_add_symbol_hook)
	FUNC11 ();
      else
	{
	  FUNC13 ("done.\n");
	}
    }

  /* We print some messages regardless of whether 'from_tty ||
     info_verbose' is true, so make sure they go out at the right
     time.  */
  FUNC6 (gdb_stdout);

  FUNC3 (my_cleanups);

  if (objfile->sf == NULL)
    return objfile;	/* No symbols. */

  FUNC10 (objfile, mainline, from_tty);

  if (&target_new_objfile_hook)
    FUNC20 (objfile);

  return (objfile);
}