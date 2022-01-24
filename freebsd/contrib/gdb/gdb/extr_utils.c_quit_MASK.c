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
struct serial {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * to_terminal_ours; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_QUIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ current_target ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ job_control ; 
 scalar_t__ quit_pre_print ; 
 int /*<<< orphan*/  FUNC4 (struct serial*) ; 
 struct serial* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct serial*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10 (void)
{
  struct serial *gdb_stdout_serial = FUNC5 (1);

  FUNC7 ();

  /* We want all output to appear now, before we print "Quit".  We
     have 3 levels of buffering we have to flush (it's possible that
     some of these should be changed to flush the lower-level ones
     too):  */

  /* 1.  The _filtered buffer.  */
  FUNC9 ((char *) 0);

  /* 2.  The stdio buffer.  */
  FUNC3 (gdb_stdout);
  FUNC3 (gdb_stderr);

  /* 3.  The system-level buffer.  */
  FUNC4 (gdb_stdout_serial);
  FUNC6 (gdb_stdout_serial);

  FUNC0 ();

  /* Don't use *_filtered; we don't want to prompt the user to continue.  */
  if (quit_pre_print)
    FUNC2 (quit_pre_print, gdb_stderr);

#ifdef __MSDOS__
  /* No steenking SIGINT will ever be coming our way when the
     program is resumed.  Don't lie.  */
  fprintf_unfiltered (gdb_stderr, "Quit\n");
#else
  if (job_control
      /* If there is no terminal switching for this target, then we can't
         possibly get screwed by the lack of job control.  */
      || current_target.to_terminal_ours == NULL)
    FUNC1 (gdb_stderr, "Quit\n");
  else
    FUNC1 (gdb_stderr,
			"Quit (expect signal SIGINT when the program is resumed)\n");
#endif
  FUNC8 (RETURN_QUIT);
}