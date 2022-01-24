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
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EBADF ; 
#define  FIO_FD_CONSOLE_IN 129 
#define  FIO_FD_CONSOLE_OUT 128 
 int FIO_FD_INVALID ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdtarg ; 
 int /*<<< orphan*/  gdb_stdtargerr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char**,long*) ; 
 scalar_t__ FUNC3 (char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC8 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC10 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (size_t) ; 

__attribute__((used)) static void
FUNC13 (char *buf)
{
  long target_fd, num;
  LONGEST lnum;
  CORE_ADDR ptrval;
  int fd, ret, retlength;
  char *buffer;
  size_t length;

  /* 1. Parameter: file descriptor */
  if (FUNC2 (&buf, &target_fd))
    {
      FUNC4 ();
      return;
    }
  fd = FUNC5 ((int) target_fd);
  if (fd == FIO_FD_INVALID)
    {
      FUNC1 ();
      return;
    }
  /* 2. Parameter: buffer pointer */
  if (FUNC3 (&buf, &lnum))
    {
      FUNC4 ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;
  /* 3. Parameter: buffer length */
  if (FUNC2 (&buf, &num))
    {
      FUNC4 ();
      return;
    }
  length = (size_t) num;
    
  buffer = (char *) FUNC12 (length);
  retlength = FUNC8 (ptrval, buffer, length);
  if (retlength != length)
    {
      FUNC11 (buffer);
      FUNC4 ();
      return;
    }

  remote_fio_no_longjmp = 1;
  switch (fd)
    {
      case FIO_FD_CONSOLE_IN:
	FUNC1 ();
	return;
      case FIO_FD_CONSOLE_OUT:
	FUNC9 (target_fd == 1 ? gdb_stdtarg : gdb_stdtargerr, buffer,
		       length);
	FUNC0 (target_fd == 1 ? gdb_stdtarg : gdb_stdtargerr);
	ret = length;
	break;
      default:
	ret = FUNC10 (fd, buffer, length);
	if (ret < 0 && errno == EACCES)
	  errno = EBADF; /* Cygwin returns EACCESS when writing to a R/O file.*/
	break;
    }

  if (ret < 0)
    FUNC6 (-1);
  else
    FUNC7 (ret);

  FUNC11 (buffer);
}