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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_EISDIR ; 
 int /*<<< orphan*/  FILEIO_ENODEV ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char**,long*) ; 
 scalar_t__ FUNC5 (char**,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (long,int) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC15 (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  long num;
  int flags, fd;
  mode_t mode;
  char *pathname;
  struct stat st;

  /* 1. Parameter: Ptr to pathname / length incl. trailing zero */
  if (FUNC5 (&buf, &ptrval, &length))
    {
      FUNC7 ();
      return;
    }
  /* 2. Parameter: open flags */
  if (FUNC4 (&buf, &num))
    {
      FUNC7 ();
      return;
    }
  flags = FUNC9 (num);
  /* 3. Parameter: open mode */
  if (FUNC4 (&buf, &num))
    {
      FUNC7 ();
      return;
    }
  mode = FUNC8 (num, 1);

  /* Request pathname using 'm' packet */
  pathname = FUNC2 (length);
  retlength = FUNC13 (ptrval, pathname, length);
  if (retlength != length)
    {
      FUNC7 ();
      return;
    }

  /* Check if pathname exists and is not a regular file or directory.  If so,
     return an appropriate error code.  Same for trying to open directories
     for writing. */
  if (!FUNC14 (pathname, &st))
    {
      if (!FUNC1 (st.st_mode) && !FUNC0 (st.st_mode))
	{
	  FUNC10 (-1, FILEIO_ENODEV);
	  return;
	}
      if (FUNC0 (st.st_mode)
	  && ((flags & O_WRONLY) == O_WRONLY || (flags & O_RDWR) == O_RDWR))
	{
	  FUNC10 (-1, FILEIO_EISDIR);
	  return;
	}
    }

  remote_fio_no_longjmp = 1;
  fd = FUNC3 (pathname, flags, mode);
  if (fd < 0)
    {
      FUNC11 (-1);
      return;
    }

  fd = FUNC6 (fd);
  FUNC12 (fd);
}