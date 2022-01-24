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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  do_write ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ error_pre_print ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_lasterr ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10 (struct ui_file *stream)
{
  if (&error_begin_hook)
    FUNC1 ();

  /* Copy the stream into the GDB_LASTERR buffer.  */
  FUNC8 (gdb_lasterr);
  FUNC7 (stream, do_write, gdb_lasterr);

  /* Write the message plus any error_pre_print to gdb_stderr.  */
  FUNC5 ();
  FUNC9 ("");		/* Force out any buffered output */
  FUNC4 (gdb_stdout);
  FUNC0 ();
  if (error_pre_print)
    FUNC3 (error_pre_print, gdb_stderr);
  FUNC7 (stream, do_write, gdb_stderr);
  FUNC2 (gdb_stderr, "\n");

  FUNC6 (RETURN_ERROR);
}