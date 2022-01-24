#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct symloc {int lineno_off; } ;
struct subfile {struct linetable* line_vector; } ;
struct linetable_entry {int dummy; } ;
struct linetable {int nitems; } ;
struct coff_symfile_info {int max_lineno_offset; } ;
typedef  int /*<<< orphan*/  main_subfile ;
typedef  int file_ptr ;
struct TYPE_10__ {int local_linesz; } ;
struct TYPE_9__ {int line_vector_length; struct linetable* line_vector; struct linetable* name; } ;
struct TYPE_8__ {int begin; unsigned int funStartLine; int end; char* name; struct subfile* subfile; } ;
struct TYPE_7__ {TYPE_1__* objfile; scalar_t__ read_symtab_private; } ;
struct TYPE_6__ {int /*<<< orphan*/  obfd; scalar_t__ sym_private; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct linetable* FUNC0 (struct linetable*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current_subfile ; 
 int /*<<< orphan*/  FUNC2 (struct subfile*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int inclIndx ; 
 TYPE_3__* inclTable ; 
 int /*<<< orphan*/  FUNC3 (struct subfile*,char,int) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 TYPE_2__* this_symtab_psymtab ; 
 int /*<<< orphan*/  FUNC8 (struct linetable*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct linetable*,int) ; 
 struct linetable* FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12 (CORE_ADDR start, CORE_ADDR end)
{
  int offset, ii;
  file_ptr max_offset =
  ((struct coff_symfile_info *) this_symtab_psymtab->objfile->sym_private)
  ->max_lineno_offset;

  /* subfile structure for the main compilation unit.  */
  struct subfile main_subfile;

  /* In the main source file, any time we see a function entry, we
     reset this variable to function's absolute starting line number.
     All the following line numbers in the function are relative to
     this, and we record absolute line numbers in record_line().  */

  unsigned int main_source_baseline = 0;

  unsigned *firstLine;

  offset =
    ((struct symloc *) this_symtab_psymtab->read_symtab_private)->lineno_off;
  if (offset == 0)
    goto return_after_cleanup;

  FUNC3 (&main_subfile, '\0', sizeof (main_subfile));

  if (inclIndx == 0)
    /* All source lines were in the main source file. None in include files. */

    FUNC2 (&main_subfile, offset, 0, start, end,
		      &main_source_baseline);

  else
    {
      /* There was source with line numbers in include files.  */

      int linesz =
	FUNC1 (this_symtab_psymtab->objfile->obfd)->local_linesz;
      main_source_baseline = 0;

      for (ii = 0; ii < inclIndx; ++ii)
	{
	  struct subfile *tmpSubfile;

	  /* If there is main file source before include file, enter it.  */
	  if (offset < inclTable[ii].begin)
	    {
	      FUNC2
		(&main_subfile, offset, inclTable[ii].begin - linesz,
		 start, 0, &main_source_baseline);
	    }

	  /* Have a new subfile for the include file.  */

	  tmpSubfile = inclTable[ii].subfile =
	    (struct subfile *) FUNC9 (sizeof (struct subfile));

	  FUNC3 (tmpSubfile, '\0', sizeof (struct subfile));
	  firstLine = &(inclTable[ii].funStartLine);

	  /* Enter include file's lines now.  */
	  FUNC2 (tmpSubfile, inclTable[ii].begin,
			    inclTable[ii].end, start, 0, firstLine);

	  if (offset <= inclTable[ii].end)
	    offset = inclTable[ii].end + linesz;
	}

      /* All the include files' line have been processed at this point.  Now,
         enter remaining lines of the main file, if any left.  */
      if (offset < max_offset + 1 - linesz)
	{
	  FUNC2 (&main_subfile, offset, 0, start, end,
			    &main_source_baseline);
	}
    }

  /* Process main file's line numbers.  */
  if (main_subfile.line_vector)
    {
      struct linetable *lineTb, *lv;

      lv = main_subfile.line_vector;

      /* Line numbers are not necessarily ordered. xlc compilation will
         put static function to the end. */

      lineTb = FUNC0 (lv);
      if (lv == lineTb)
	{
	  current_subfile->line_vector = (struct linetable *)
	    FUNC10 (lv, (sizeof (struct linetable)
			   + lv->nitems * sizeof (struct linetable_entry)));
	}
      else
	{
	  FUNC8 (lv);
	  current_subfile->line_vector = lineTb;
	}

      current_subfile->line_vector_length =
	current_subfile->line_vector->nitems;
    }

  /* Now, process included files' line numbers.  */

  for (ii = 0; ii < inclIndx; ++ii)
    {
      if ((inclTable[ii].subfile)->line_vector)		/* Useless if!!! FIXMEmgo */
	{
	  struct linetable *lineTb, *lv;

	  lv = (inclTable[ii].subfile)->line_vector;

	  /* Line numbers are not necessarily ordered. xlc compilation will
	     put static function to the end. */

	  lineTb = FUNC0 (lv);

	  FUNC5 ();

	  /* For the same include file, we might want to have more than one
	     subfile.  This happens if we have something like:

	     ......
	     #include "foo.h"
	     ......
	     #include "foo.h"
	     ......

	     while foo.h including code in it. (stupid but possible)
	     Since start_subfile() looks at the name and uses an
	     existing one if finds, we need to provide a fake name and
	     fool it.  */

#if 0
	  start_subfile (inclTable[ii].name, (char *) 0);
#else
	  {
	    /* Pick a fake name that will produce the same results as this
	       one when passed to deduce_language_from_filename.  Kludge on
	       top of kludge.  */
	    char *fakename = FUNC7 (inclTable[ii].name, '.');
	    if (fakename == NULL)
	      fakename = " ?";
	    FUNC6 (fakename, (char *) 0);
	    FUNC8 (current_subfile->name);
	  }
	  current_subfile->name = FUNC11 (inclTable[ii].name);
#endif

	  if (lv == lineTb)
	    {
	      current_subfile->line_vector =
		(struct linetable *) FUNC10
		(lv, (sizeof (struct linetable)
		      + lv->nitems * sizeof (struct linetable_entry)));

	    }
	  else
	    {
	      FUNC8 (lv);
	      current_subfile->line_vector = lineTb;
	    }

	  current_subfile->line_vector_length =
	    current_subfile->line_vector->nitems;
	  FUNC6 (FUNC4 (), (char *) 0);
	}
    }

return_after_cleanup:

  /* We don't want to keep alloc/free'ing the global include file table.  */
  inclIndx = 0;

  /* Start with a fresh subfile structure for the next file.  */
  FUNC3 (&main_subfile, '\0', sizeof (struct subfile));
}