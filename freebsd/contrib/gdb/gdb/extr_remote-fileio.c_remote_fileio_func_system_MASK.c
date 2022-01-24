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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int remote_fio_no_longjmp ; 
 int /*<<< orphan*/  remote_fio_system_call_allowed ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (char *buf)
{
  CORE_ADDR ptrval;
  int ret, length, retlength;
  char *cmdline;

  /* Check if system(3) has been explicitely allowed using the
     `set remote system-call-allowed 1' command.  If not, return
     EPERM */
  if (!remote_fio_system_call_allowed)
    {
      FUNC4 (-1, FILEIO_EPERM);
      return;
    }

  /* Parameter: Ptr to commandline / length incl. trailing zero */
  if (FUNC2 (&buf, &ptrval, &length))
    {
      FUNC3 ();
      return;
    }
  /* Request commandline using 'm' packet */
  cmdline = FUNC1 (length);
  retlength = FUNC7 (ptrval, cmdline, length);
  if (retlength != length)
    {
      FUNC3 ();
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = FUNC8 (cmdline);

  if (ret == -1)
    FUNC5 (-1);
  else
    FUNC6 (FUNC0 (ret));
}