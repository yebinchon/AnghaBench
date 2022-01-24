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
typedef  int off_t ;
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
#define  FIO_FD_CONSOLE_IN 129 
#define  FIO_FD_CONSOLE_OUT 128 
 int FIO_FD_INVALID ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  gdb_stdtargin ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char**,long*) ; 
 scalar_t__ FUNC6 (char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (scalar_t__,char*,int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (size_t) ; 

__attribute__((used)) static void
FUNC15 (char *buf)
{
  long target_fd, num;
  LONGEST lnum;
  CORE_ADDR ptrval;
  int fd, ret, retlength;
  char *buffer;
  size_t length;
  off_t old_offset, new_offset;

  /* 1. Parameter: file descriptor */
  if (FUNC5 (&buf, &target_fd))
    {
      FUNC7 ();
      return;
    }
  fd = FUNC8 ((int) target_fd);
  if (fd == FIO_FD_INVALID)
    {
      FUNC4 ();
      return;
    }
  /* 2. Parameter: buffer pointer */
  if (FUNC6 (&buf, &lnum))
    {
      FUNC7 ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;
  /* 3. Parameter: buffer length */
  if (FUNC5 (&buf, &num))
    {
      FUNC7 ();
      return;
    }
  length = (size_t) num;

  switch (fd)
    {
      case FIO_FD_CONSOLE_OUT:
	FUNC4 ();
	return;
      case FIO_FD_CONSOLE_IN:
	{
	  static char *remaining_buf = NULL;
	  static int remaining_length = 0;

	  buffer = (char *) FUNC14 (32768);
	  if (remaining_buf)
	    {
	      remote_fio_no_longjmp = 1;
	      if (remaining_length > length)
		{
		  FUNC1 (buffer, remaining_buf, length);
		  FUNC2 (remaining_buf, remaining_buf + length,
			   remaining_length - length);
		  remaining_length -= length;
		  ret = length;
		}
	      else
		{
		  FUNC1 (buffer, remaining_buf, remaining_length);
		  FUNC13 (remaining_buf);
		  remaining_buf = NULL;
		  ret = remaining_length;
		}
	    }
	  else
	    {
	      ret = FUNC12 (gdb_stdtargin, buffer, 32767);
	      remote_fio_no_longjmp = 1;
	      if (ret > 0 && (size_t)ret > length)
		{
		  remaining_buf = (char *) FUNC14 (ret - length);
		  remaining_length = ret - length;
		  FUNC1 (remaining_buf, buffer + length, remaining_length);
		  ret = length;
		}
	    }
	}
	break;
      default:
	buffer = (char *) FUNC14 (length);
	/* POSIX defines EINTR behaviour of read in a weird way.  It's allowed
	   for read() to return -1 even if "some" bytes have been read.  It
	   has been corrected in SUSv2 but that doesn't help us much...
	   Therefore a complete solution must check how many bytes have been
	   read on EINTR to return a more reliable value to the target */
	old_offset = FUNC0 (fd, 0, SEEK_CUR);
	remote_fio_no_longjmp = 1;
	ret = FUNC3 (fd, buffer, length);
	if (ret < 0 && errno == EINTR)
	  {
	    new_offset = FUNC0 (fd, 0, SEEK_CUR);
	    /* If some data has been read, return the number of bytes read.
	       The Ctrl-C flag is set in remote_fileio_reply() anyway */
	    if (old_offset != new_offset)
	      ret = new_offset - old_offset;
	  }
	break;
    }

  if (ret > 0)
    {
      retlength = FUNC11 (ptrval, buffer, ret);
      if (retlength != ret)
	ret = -1; /* errno has been set to EIO in remote_fileio_write_bytes() */
    }

  if (ret < 0)
    FUNC9 (-1);
  else
    FUNC10 (ret);

  FUNC13 (buffer);
}