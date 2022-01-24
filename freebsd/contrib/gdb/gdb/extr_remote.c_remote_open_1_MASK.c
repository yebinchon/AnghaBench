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
struct target_ops {int dummy; } ;
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC_NULL_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int baud_rate ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int continue_thread ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ exec_bfd ; 
 int general_thread ; 
 struct remote_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct target_ops*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int remote_async_terminal_ours_p ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * remote_desc ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  remote_start_remote ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  symfile_objfile ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC23 (struct target_ops*) ; 
 int use_threadextra_query ; 
 int use_threadinfo_query ; 
 int wait_forever_enabled_p ; 

__attribute__((used)) static void
FUNC24 (char *name, int from_tty, struct target_ops *target,
	       int extended_p, int async_p)
{
  int ex;
  struct remote_state *rs = FUNC5 ();
  if (name == 0)
    FUNC4 ("To open a remote debug connection, you need to specify what\n"
	   "serial device is attached to the remote system\n"
	   "(e.g. /dev/ttyS0, /dev/ttya, COM1, etc.).");

  /* See FIXME above */
  if (!async_p)
    wait_forever_enabled_p = 1;

  FUNC21 (from_tty);

  FUNC23 (target);

  remote_desc = FUNC16 (name);
  if (!remote_desc)
    FUNC9 (name);

  if (baud_rate != -1)
    {
      if (FUNC20 (remote_desc, baud_rate))
	{
	  /* The requested speed could not be set.  Error out to
	     top level after closing remote_desc.  Take care to
	     set remote_desc to NULL to avoid closing remote_desc
	     more than once.  */
	  FUNC17 (remote_desc);
	  remote_desc = NULL;
	  FUNC9 (name);
	}
    }

  FUNC19 (remote_desc);

  /* If there is something sitting in the buffer we might take it as a
     response to a command, which would be bad.  */
  FUNC18 (remote_desc);

  if (from_tty)
    {
      FUNC14 ("Remote debugging using ");
      FUNC14 (name);
      FUNC14 ("\n");
    }
  FUNC12 (target);		/* Switch to using remote target now */

  FUNC7 ();

  general_thread = -2;
  continue_thread = -2;

  /* Probe for ability to use "ThreadInfo" query, as required.  */
  use_threadinfo_query = 1;
  use_threadextra_query = 1;

  /* Without this, some commands which require an active target (such
     as kill) won't work.  This variable serves (at least) double duty
     as both the pid of the target process (if it has such), and as a
     flag indicating that a target is active.  These functions should
     be split out into seperate variables, especially since GDB will
     someday have a notion of debugging several processes.  */

  inferior_ptid = FUNC10 (MAGIC_NULL_PID);

  if (async_p)
    {
      /* With this target we start out by owning the terminal. */
      remote_async_terminal_ours_p = 1;

      /* FIXME: cagney/1999-09-23: During the initial connection it is
	 assumed that the target is already ready and able to respond to
	 requests. Unfortunately remote_start_remote() eventually calls
	 wait_for_inferior() with no timeout.  wait_forever_enabled_p gets
	 around this. Eventually a mechanism that allows
	 wait_for_inferior() to expect/get timeouts will be
	 implemented. */
      wait_forever_enabled_p = 0;
    }

#ifdef SOLIB_CREATE_INFERIOR_HOOK
  /* First delete any symbols previously loaded from shared libraries. */
  no_shared_libraries (NULL, 0);
#endif

  /* Start the remote connection.  If error() or QUIT, discard this
     target (we'd otherwise be in an inconsistent state) and then
     propogate the error on up the exception chain.  This ensures that
     the caller doesn't stumble along blindly assuming that the
     function succeeded.  The CLI doesn't have this problem but other
     UI's, such as MI do.

     FIXME: cagney/2002-05-19: Instead of re-throwing the exception,
     this function should return an error indication letting the
     caller restore the previous state.  Unfortunately the command
     ``target remote'' is directly wired to this function making that
     impossible.  On a positive note, the CLI side of this problem has
     been fixed - the function set_cmd_context() makes it possible for
     all the ``target ....'' commands to share a common callback
     function.  See cli-dump.c.  */
  ex = FUNC3 (uiout,
			 remote_start_remote, NULL,
			 "Couldn't establish connection to remote"
			 " target\n",
			 RETURN_MASK_ALL);
  if (ex < 0)
    {
      FUNC11 ();
      if (async_p)
	wait_forever_enabled_p = 1;
      FUNC22 (ex);
    }

  if (async_p)
    wait_forever_enabled_p = 1;

  if (extended_p)
    {
      /* Tell the remote that we are using the extended protocol.  */
      char *buf = FUNC2 (rs->remote_packet_size);
      FUNC13 ("!");
      FUNC6 (buf, (rs->remote_packet_size), 0);
    }
#ifdef SOLIB_CREATE_INFERIOR_HOOK
  /* FIXME: need a master target_open vector from which all
     remote_opens can be called, so that stuff like this can
     go there.  Failing that, the following code must be copied
     to the open function for any remote target that wants to
     support svr4 shared libraries.  */

  /* Set up to detect and load shared libraries. */
  if (exec_bfd) 	/* No use without an exec file. */
    {
      SOLIB_CREATE_INFERIOR_HOOK (PIDGET (inferior_ptid));
      remote_check_symbols (symfile_objfile);
    }
#endif
}