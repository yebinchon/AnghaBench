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
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int MAXARGS ; 
 struct frame_info* FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct frame_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct frame_info* deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct frame_info* FUNC4 (struct frame_info*,int*) ; 
 struct frame_info* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 
 struct frame_info* FUNC7 (struct frame_info*) ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct value* FUNC10 (char*) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct value*) ; 
 int FUNC13 (struct value*) ; 
 int /*<<< orphan*/  xfree ; 

struct frame_info *
FUNC14 (char *frame_exp)
{
  int numargs = 0;
#define	MAXARGS	4
  CORE_ADDR args[MAXARGS];
  int level;

  if (frame_exp)
    {
      char *addr_string, *p;
      struct cleanup *tmp_cleanup;

      while (*frame_exp == ' ')
	frame_exp++;

      while (*frame_exp)
	{
	  if (numargs > MAXARGS)
	    FUNC3 ("Too many args in frame specification");
	  /* Parse an argument.  */
	  for (p = frame_exp; *p && *p != ' '; p++)
	    ;
	  addr_string = FUNC11 (frame_exp, p - frame_exp);

	  {
	    struct value *vp;

	    tmp_cleanup = FUNC8 (xfree, addr_string);

	    /* NOTE: we call parse_and_eval and then both
	       value_as_long and value_as_address rather than calling
	       parse_and_eval_long and parse_and_eval_address because
	       of the issue of potential side effects from evaluating
	       the expression.  */
	    vp = FUNC10 (addr_string);
	    if (numargs == 0)
	      level = FUNC13 (vp);

	    args[numargs++] = FUNC12 (vp);
	    FUNC2 (tmp_cleanup);
	  }

	  /* Skip spaces, move to possible next arg.  */
	  while (*p == ' ')
	    p++;
	  frame_exp = p;
	}
    }

  switch (numargs)
    {
    case 0:
      if (deprecated_selected_frame == NULL)
	FUNC3 ("No selected frame.");
      return deprecated_selected_frame;
      /* NOTREACHED */
    case 1:
      {
	struct frame_info *fid =
	FUNC4 (FUNC5 (), &level);
	struct frame_info *tfid;

	if (level == 0)
	  /* find_relative_frame was successful */
	  return fid;

	/* If SETUP_ARBITRARY_FRAME is defined, then frame specifications
	   take at least 2 addresses.  It is important to detect this case
	   here so that "frame 100" does not give a confusing error message
	   like "frame specification requires two addresses".  This of course
	   does not solve the "frame 100" problem for machines on which
	   a frame specification can be made with one address.  To solve
	   that, we need a new syntax for a specifying a frame by address.
	   I think the cleanest syntax is $frame(0x45) ($frame(0x23,0x45) for
	   two args, etc.), but people might think that is too much typing,
	   so I guess *0x23,0x45 would be a possible alternative (commas
	   really should be used instead of spaces to delimit; using spaces
	   normally works in an expression).  */
#ifdef SETUP_ARBITRARY_FRAME
	error ("No frame %s", paddr_d (args[0]));
#endif

	/* If (s)he specifies the frame with an address, he deserves what
	   (s)he gets.  Still, give the highest one that matches.  */

	for (fid = FUNC5 ();
	     fid && FUNC6 (fid) != args[0];
	     fid = FUNC7 (fid))
	  ;

	if (fid)
	  while ((tfid = FUNC7 (fid)) &&
		 (FUNC6 (tfid) == args[0]))
	    fid = tfid;

	/* We couldn't identify the frame as an existing frame, but
	   perhaps we can create one with a single argument.  */
      }

    default:
#ifdef SETUP_ARBITRARY_FRAME
      return SETUP_ARBITRARY_FRAME (numargs, args);
#else
      /* Usual case.  Do it here rather than have everyone supply
         a SETUP_ARBITRARY_FRAME that does this.  */
      if (numargs == 1)
	return FUNC1 (args[0], 0);
      FUNC3 ("Too many args in frame specification");
#endif
      /* NOTREACHED */
    }
  /* NOTREACHED */
}