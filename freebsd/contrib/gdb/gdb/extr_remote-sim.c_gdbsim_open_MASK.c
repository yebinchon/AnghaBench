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

/* Variables and functions */
#define  BFD_ENDIAN_BIG 130 
#define  BFD_ENDIAN_LITTLE 129 
#define  BFD_ENDIAN_UNKNOWN 128 
 int /*<<< orphan*/  SIM_OPEN_DEBUG ; 
 scalar_t__ FUNC0 (int) ; 
 char** FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  gdb_callback ; 
 int /*<<< orphan*/ * gdbsim_desc ; 
 int /*<<< orphan*/  gdbsim_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16 (char *args, int from_tty)
{
  int len;
  char *arg_buf;
  char **argv;

  if (FUNC10 ())
    FUNC5 ("gdbsim_open: args \"%s\"\n", args ? args : "(null)");

  /* Remove current simulator if one exists.  Only do this if the simulator
     has been opened because sim_close requires it.
     This is important because the call to push_target below will cause
     sim_close to be called if the simulator is already open, but push_target
     is called after sim_open!  We can't move the call to push_target before
     the call to sim_open because sim_open may invoke `error'.  */
  if (gdbsim_desc != NULL)
    FUNC15 (&gdbsim_ops);

  len = (7 + 1			/* gdbsim */
	 + FUNC13 (" -E little")
	 + FUNC13 (" --architecture=xxxxxxxxxx")
	 + (args ? FUNC13 (args) : 0)
	 + 50) /* slack */ ;
  arg_buf = (char *) FUNC0 (len);
  FUNC12 (arg_buf, "gdbsim");	/* 7 */
  /* Specify the byte order for the target when it is both selectable
     and explicitly specified by the user (not auto detected). */
  switch (FUNC8 ())
    {
    case BFD_ENDIAN_BIG:
      FUNC11 (arg_buf, " -E big");
      break;
    case BFD_ENDIAN_LITTLE:
      FUNC11 (arg_buf, " -E little");
      break;
    case BFD_ENDIAN_UNKNOWN:
      break;
    }
  /* Specify the architecture of the target when it has been
     explicitly specified */
  if (FUNC7 () != NULL)
    {
      FUNC11 (arg_buf, " --architecture=");
      FUNC11 (arg_buf, FUNC7 ());
    }
  /* finally, any explicit args */
  if (args)
    {
      FUNC11 (arg_buf, " ");	/* 1 */
      FUNC11 (arg_buf, args);
    }
  argv = FUNC1 (arg_buf);
  if (argv == NULL)
    FUNC2 ("Insufficient memory available to allocate simulator arg list.");
  FUNC4 (argv);

  FUNC3 ();
  gdbsim_desc = FUNC9 (SIM_OPEN_DEBUG, &gdb_callback, exec_bfd, argv);

  if (gdbsim_desc == 0)
    FUNC2 ("unable to create simulator instance");

  FUNC6 (&gdbsim_ops);
  FUNC14 (-1);
  FUNC5 ("Connected to the simulator.\n");
}