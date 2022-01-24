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
 int FIO_FD_CONSOLE_IN ; 
 int FIO_FD_CONSOLE_OUT ; 
 int FIO_FD_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char**,long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int remote_fio_no_longjmp ; 

__attribute__((used)) static void
FUNC8 (char *buf)
{
  long num;
  int fd;

  /* Parameter: file descriptor */
  if (FUNC3 (&buf, &num))
    {
      FUNC4 ();
      return;
    }
  fd = FUNC5 ((int) num);
  if (fd == FIO_FD_INVALID)
    {
      FUNC1 ();
      return;
    }

  remote_fio_no_longjmp = 1;
  if (fd != FIO_FD_CONSOLE_IN && fd != FIO_FD_CONSOLE_OUT && FUNC0 (fd))
    FUNC6 (-1);
  FUNC2 ((int) num);
  FUNC7 (0);
}