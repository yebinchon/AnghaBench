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
 scalar_t__ FUNC0 (char**,long*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int remote_fio_no_longjmp ; 

__attribute__((used)) static void
FUNC4 (char *buf)
{
  long target_fd;
  int fd;

  /* Parameter: file descriptor */
  if (FUNC0 (&buf, &target_fd))
    {
      FUNC1 ();
      return;
    }
  remote_fio_no_longjmp = 1;
  fd = FUNC2 ((int) target_fd);
  FUNC3 (fd == FIO_FD_CONSOLE_IN ||
  				fd == FIO_FD_CONSOLE_OUT ? 1 : 0);
}