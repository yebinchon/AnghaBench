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
struct partial_symtab {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct partial_symtab*) ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct partial_symtab* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct frame_info* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*) ; 
 struct frame_info* FUNC5 (struct frame_info*) ; 
 scalar_t__ info_verbose ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct frame_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  target_has_stack ; 

__attribute__((used)) static void
FUNC10 (char *count_exp, int show_locals, int from_tty)
{
  struct frame_info *fi;
  int count;
  int i;
  struct frame_info *trailing;
  int trailing_level;

  if (!target_has_stack)
    FUNC1 ("No stack.");

  /* The following code must do two things.  First, it must
     set the variable TRAILING to the frame from which we should start
     printing.  Second, it must set the variable count to the number
     of frames which we should print, or -1 if all of them.  */
  trailing = FUNC3 ();

  /* The target can be in a state where there is no valid frames
     (e.g., just connected). */
  if (trailing == NULL)
    FUNC1 ("No stack.");

  trailing_level = 0;
  if (count_exp)
    {
      count = FUNC6 (count_exp);
      if (count < 0)
	{
	  struct frame_info *current;

	  count = -count;

	  current = trailing;
	  while (current && count--)
	    {
	      QUIT;
	      current = FUNC5 (current);
	    }

	  /* Will stop when CURRENT reaches the top of the stack.  TRAILING
	     will be COUNT below it.  */
	  while (current)
	    {
	      QUIT;
	      trailing = FUNC5 (trailing);
	      current = FUNC5 (current);
	      trailing_level++;
	    }

	  count = -1;
	}
    }
  else
    count = -1;

  if (info_verbose)
    {
      struct partial_symtab *ps;

      /* Read in symbols for all of the frames.  Need to do this in
         a separate pass so that "Reading in symbols for xxx" messages
         don't screw up the appearance of the backtrace.  Also
         if people have strong opinions against reading symbols for
         backtrace this may have to be an option.  */
      i = count;
      for (fi = trailing;
	   fi != NULL && i--;
	   fi = FUNC5 (fi))
	{
	  QUIT;
	  ps = FUNC2 (FUNC4 (fi));
	  if (ps)
	    FUNC0 (ps);	/* Force syms to come in */
	}
    }

  for (i = 0, fi = trailing;
       fi && count--;
       i++, fi = FUNC5 (fi))
    {
      QUIT;

      /* Don't use print_stack_frame; if an error() occurs it probably
         means further attempts to backtrace would fail (on the other
         hand, perhaps the code does or could be fixed to make sure
         the frame->prev field gets set to NULL in that case).  */
      FUNC7 (fi, trailing_level + i, 0, 1);
      if (show_locals)
	FUNC8 (fi, 1, gdb_stdout);
    }

  /* If we've stopped before the end, mention that.  */
  if (fi && from_tty)
    FUNC9 ("(More stack frames follow...)\n");
}