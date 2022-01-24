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
typedef  scalar_t__ off_t ;
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_EINVAL ; 
 int /*<<< orphan*/  FILEIO_ESPIPE ; 
 int FIO_FD_CONSOLE_IN ; 
 int FIO_FD_CONSOLE_OUT ; 
 int FIO_FD_INVALID ; 
 scalar_t__ FUNC0 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char**,long*) ; 
 scalar_t__ FUNC3 (char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (long,int*) ; 
 int remote_fio_no_longjmp ; 

__attribute__((used)) static void
FUNC10 (char *buf)
{
  long num;
  LONGEST lnum;
  int fd, flag;
  off_t offset, ret;

  /* 1. Parameter: file descriptor */
  if (FUNC2 (&buf, &num))
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
  else if (fd == FIO_FD_CONSOLE_IN || fd == FIO_FD_CONSOLE_OUT)
    {
      FUNC6 (-1, FILEIO_ESPIPE);
      return;
    }

  /* 2. Parameter: offset */
  if (FUNC3 (&buf, &lnum))
    {
      FUNC4 ();
      return;
    }
  offset = (off_t) lnum;
  /* 3. Parameter: flag */
  if (FUNC2 (&buf, &num))
    {
      FUNC4 ();
      return;
    }
  if (FUNC9 (num, &flag))
    {
      FUNC6 (-1, FILEIO_EINVAL);
      return;
    }
  
  remote_fio_no_longjmp = 1;
  ret = FUNC0 (fd, offset, flag);

  if (ret == (off_t) -1)
    FUNC7 (-1);
  else
    FUNC8 (ret);
}