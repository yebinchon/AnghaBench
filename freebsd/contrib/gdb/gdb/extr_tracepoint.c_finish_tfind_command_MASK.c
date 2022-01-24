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
struct symbol {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct symbol* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (char*,long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 

__attribute__((used)) static void
FUNC19 (char *msg,
		      long sizeof_msg,
		      int from_tty)
{
  int target_frameno = -1, target_tracept = -1;
  CORE_ADDR old_frame_addr;
  struct symbol *old_func;
  char *reply;

  old_frame_addr = FUNC6 (FUNC5 ());
  old_func = FUNC2 (FUNC10 ());

  FUNC9 (msg);
  reply = FUNC12 (msg, sizeof_msg);

  while (reply && *reply)
    switch (*reply)
      {
      case 'F':
	if ((target_frameno = (int) FUNC17 (++reply, &reply, 16)) == -1)
	  {
	    /* A request for a non-existant trace frame has failed.
	       Our response will be different, depending on FROM_TTY:

	       If FROM_TTY is true, meaning that this command was 
	       typed interactively by the user, then give an error
	       and DO NOT change the state of traceframe_number etc.

	       However if FROM_TTY is false, meaning that we're either
	       in a script, a loop, or a user-defined command, then 
	       DON'T give an error, but DO change the state of
	       traceframe_number etc. to invalid.

	       The rationalle is that if you typed the command, you
	       might just have committed a typo or something, and you'd
	       like to NOT lose your current debugging state.  However
	       if you're in a user-defined command or especially in a
	       loop, then you need a way to detect that the command
	       failed WITHOUT aborting.  This allows you to write
	       scripts that search thru the trace buffer until the end,
	       and then continue on to do something else.  */

	    if (from_tty)
	      FUNC1 ("Target failed to find requested trace frame.");
	    else
	      {
		if (info_verbose)
		  FUNC8 ("End of trace buffer.\n");
		/* The following will not recurse, since it's special-cased */
		FUNC18 ("-1", from_tty);
		reply = NULL;	/* break out of loop, 
				   (avoid recursive nonsense) */
	      }
	  }
	break;
      case 'T':
	if ((target_tracept = (int) FUNC17 (++reply, &reply, 16)) == -1)
	  FUNC1 ("Target failed to find requested trace frame.");
	break;
      case 'O':		/* "OK"? */
	if (reply[1] == 'K' && reply[2] == '\0')
	  reply += 2;
	else
	  FUNC1 ("Bogus reply from target: %s", reply);
	break;
      default:
	FUNC1 ("Bogus reply from target: %s", reply);
      }

  FUNC3 ();
  FUNC11 ();
  FUNC13 (FUNC5 ());
  FUNC15 (target_frameno);
  FUNC16 (target_tracept);
  if (target_frameno == -1)
    FUNC14 (-1);
  else
    FUNC14 (FUNC10 ());

  if (from_tty)
    {
      int source_only;

      /* NOTE: in immitation of the step command, try to determine
         whether we have made a transition from one function to another.
         If so, we'll print the "stack frame" (ie. the new function and
         it's arguments) -- otherwise we'll just show the new source line.

         This determination is made by checking (1) whether the current
         function has changed, and (2) whether the current FP has changed.
         Hack: if the FP wasn't collected, either at the current or the
         previous frame, assume that the FP has NOT changed.  */

      if (old_func == FUNC2 (FUNC10 ()) &&
	  (old_frame_addr == 0 ||
	   FUNC6 (FUNC5 ()) == 0 ||
	   old_frame_addr == FUNC6 (FUNC5 ())))
	source_only = -1;
      else
	source_only = 1;

      FUNC7 (deprecated_selected_frame,
			 FUNC4 (deprecated_selected_frame),
			 source_only);
      FUNC0 ();
    }
}