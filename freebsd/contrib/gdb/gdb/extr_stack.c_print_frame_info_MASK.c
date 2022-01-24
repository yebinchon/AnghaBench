#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symtab_and_line {scalar_t__ pc; scalar_t__ line; scalar_t__ symtab; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ DUMMY_FRAME ; 
 int LOCATION ; 
 int LOC_AND_ADDRESS ; 
 scalar_t__ SIGTRAMP_FRAME ; 
 int SRC_AND_LOC ; 
 int SRC_LINE ; 
 scalar_t__ addressprint ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ annotation_level ; 
 int /*<<< orphan*/  FUNC6 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*,struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct symtab_and_line FUNC9 () ; 
 scalar_t__ FUNC10 (struct frame_info*) ; 
 scalar_t__ FUNC11 (struct frame_info*) ; 
 int FUNC12 () ; 
 int FUNC13 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 struct cleanup* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct frame_info*,int,int,int,struct symtab_and_line) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC20 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  ui_left ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC27 (struct frame_info *fi, int level, int source, int args)
{
  struct symtab_and_line sal;
  int source_print;
  int location_print;

  if (FUNC11 (fi) == DUMMY_FRAME
      || FUNC11 (fi) == SIGTRAMP_FRAME)
    {
      struct cleanup *uiout_cleanup
	= FUNC14 (uiout, "frame");

      FUNC2 (level == -1 ? 0 : level, FUNC10 (fi));

      /* Do this regardless of SOURCE because we don't have any source
         to list for this frame.  */
      if (level >= 0)
        {
          FUNC26 (uiout, "#");
          FUNC23 (uiout, 2, ui_left, "level", level);
        }
      if (FUNC25 (uiout))
        {
          FUNC0 ();
          FUNC22 (uiout, "addr", FUNC10 (fi));
          FUNC1 ();
        }

      if (FUNC11 (fi) == DUMMY_FRAME)
        {
          FUNC4 ();
          FUNC24 (uiout, "func", "<function called from gdb>");
	}
      else if (FUNC11 (fi) == SIGTRAMP_FRAME)
        {
	  FUNC5 ();
          FUNC24 (uiout, "func", "<signal handler called>");
        }
      FUNC26 (uiout, "\n");
      FUNC3 ();

      FUNC6 (uiout_cleanup);
      return;
    }

  /* If fi is not the innermost frame, that normally means that fi->pc
     points to *after* the call instruction, and we want to get the
     line containing the call, never the next line.  But if the next
     frame is a SIGTRAMP_FRAME or a DUMMY_FRAME, then the next frame
     was not entered as the result of a call, and we want to get the
     line containing fi->pc.  */
  FUNC7 (fi, &sal);

  location_print = (source == LOCATION 
		    || source == LOC_AND_ADDRESS
		    || source == SRC_AND_LOC);

  if (location_print || !sal.symtab)
    FUNC16 (fi, level, source, args, sal);

  source_print = (source == SRC_LINE || source == SRC_AND_LOC);

  if (sal.symtab)
    FUNC19 (&sal);

  if (source_print && sal.symtab)
    {
      struct symtab_and_line cursal;
      int done = 0;
      int mid_statement = (source == SRC_LINE) && (FUNC10 (fi) != sal.pc);

      if (annotation_level)
	done = FUNC13 (sal.symtab, sal.line, mid_statement,
				     FUNC10 (fi));
      if (!done)
	{
	  if (&print_frame_info_listing_hook)
	    FUNC17 (sal.symtab, sal.line, sal.line + 1, 0);
	  else
	    {
	      /* We used to do this earlier, but that is clearly
		 wrong. This function is used by many different
		 parts of gdb, including normal_stop in infrun.c,
		 which uses this to print out the current PC
		 when we stepi/nexti into the middle of a source
		 line. Only the command line really wants this
		 behavior. Other UIs probably would like the
		 ability to decide for themselves if it is desired. */
	      if (addressprint && mid_statement)
		{
		  FUNC22 (uiout, "addr", FUNC10 (fi));
		  FUNC26 (uiout, "\t");
		}

	      FUNC18 (sal.symtab, sal.line, sal.line + 1, 0);
	    }
	}
      /* Make sure we have at least a default source file */
      FUNC21 ();
      cursal = FUNC9 ();
      cursal.line = FUNC15 (sal.line - FUNC12 () / 2, 1);
      FUNC19 (&cursal);
    }

  if (source != 0)
    FUNC20 (1, FUNC10 (fi), sal.symtab, sal.line);

  FUNC3 ();

  FUNC8 (gdb_stdout);
}