#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct objfile {char* name; TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; scalar_t__ sym_private; int /*<<< orphan*/  objfile_obstack; int /*<<< orphan*/ * obfd; } ;
struct coff_symfile_info {char* debugsec; int symtbl_num_syms; scalar_t__ symtbl; scalar_t__ max_lineno_offset; scalar_t__ min_lineno_offset; } ;
struct cleanup {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef  scalar_t__ file_ptr ;
typedef  unsigned int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int local_symesz; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (scalar_t__,unsigned int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct bfd_section* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bfd_section*,char*,scalar_t__,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct coff_symfile_info*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,struct bfd_section*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/  find_linenos ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct objfile*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,struct objfile*) ; 
 int /*<<< orphan*/  FUNC16 (struct objfile*) ; 
 struct cleanup* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  really_free_pendings ; 
 int /*<<< orphan*/  FUNC22 (struct objfile*) ; 
 int /*<<< orphan*/ * symfile_bfd ; 

__attribute__((used)) static void
FUNC23 (struct objfile *objfile, int mainline)
{
  bfd *abfd;
  int val;
  struct cleanup *back_to;
  int num_symbols;		/* # of symbols */
  file_ptr symtab_offset;	/* symbol table and */
  file_ptr stringtab_offset;	/* string table file offsets */
  struct coff_symfile_info *info;
  char *name;
  unsigned int size;

  info = (struct coff_symfile_info *) objfile->sym_private;
  symfile_bfd = abfd = objfile->obfd;
  name = objfile->name;

  num_symbols = FUNC5 (abfd);	/* # of symbols */
  symtab_offset = FUNC19 (abfd);	/* symbol table file offset */
  stringtab_offset = symtab_offset +
    num_symbols * FUNC9 (abfd)->local_symesz;

  info->min_lineno_offset = 0;
  info->max_lineno_offset = 0;
  FUNC6 (abfd, find_linenos, info);

  if (num_symbols > 0)
    {
      /* Read the string table.  */
      FUNC15 (abfd, stringtab_offset, objfile);

      /* Read the .debug section, if present.  */
      {
	struct bfd_section *secp;
	bfd_size_type length;
	char *debugsec = NULL;

	secp = FUNC3 (abfd, ".debug");
	if (secp)
	  {
	    length = FUNC7 (abfd, secp);
	    if (length)
	      {
		debugsec =
		  (char *) FUNC20 (&objfile->objfile_obstack, length);

		if (!FUNC4 (abfd, secp, debugsec,
					       (file_ptr) 0, length))
		  {
		    FUNC11 ("Error reading .debug section of `%s': %s",
			   name, FUNC1 (FUNC2 ()));
		  }
	      }
	  }
	((struct coff_symfile_info *) objfile->sym_private)->debugsec =
	  debugsec;
      }
    }

  /* Read the symbols.  We keep them in core because we will want to
     access them randomly in read_symbol*.  */
  val = FUNC8 (abfd, symtab_offset, SEEK_SET);
  if (val < 0)
    FUNC11 ("Error reading symbols from %s: %s",
	   name, FUNC1 (FUNC2 ()));
  size = FUNC9 (abfd)->local_symesz * num_symbols;
  ((struct coff_symfile_info *) objfile->sym_private)->symtbl =
    FUNC20 (&objfile->objfile_obstack, size);
  ((struct coff_symfile_info *) objfile->sym_private)->symtbl_num_syms =
    num_symbols;

  val = FUNC0 (((struct coff_symfile_info *) objfile->sym_private)->symtbl,
		   size, abfd);
  if (val != size)
    FUNC21 ("reading symbol table");

  /* If we are reinitializing, or if we have never loaded syms yet, init */
  if (mainline
      || (objfile->global_psymbols.size == 0
	  && objfile->static_psymbols.size == 0))
    /* I'm not sure how how good num_symbols is; the rule of thumb in
       init_psymbol_list was developed for a.out.  On the one hand,
       num_symbols includes auxents.  On the other hand, it doesn't
       include N_SLINE.  */
    FUNC14 (objfile, num_symbols);

  FUNC12 ();
  back_to = FUNC17 (really_free_pendings, 0);

  FUNC13 ();
  FUNC18 ();

  /* Now that the symbol table data of the executable file are all in core,
     process them and define symbols accordingly.  */

  FUNC22 (objfile);

  /* Install any minimal symbols that have been collected as the current
     minimal symbols for this objfile. */

  FUNC16 (objfile);

  FUNC10 (back_to);
}