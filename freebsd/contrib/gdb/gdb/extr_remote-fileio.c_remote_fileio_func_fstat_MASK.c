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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct stat {int st_mode; int st_nlink; int st_blksize; scalar_t__ st_ctime; scalar_t__ st_mtime; scalar_t__ st_atime; scalar_t__ st_blocks; scalar_t__ st_size; scalar_t__ st_rdev; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
struct fio_stat {int /*<<< orphan*/  fst_dev; } ;
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FIO_FD_CONSOLE_IN ; 
 int FIO_FD_CONSOLE_OUT ; 
 int FIO_FD_INVALID ; 
 int S_IFCHR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int FUNC0 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char**,long*) ; 
 scalar_t__ FUNC6 (char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct stat*,struct fio_stat*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,char*,int) ; 
 int remote_fio_no_longjmp ; 

__attribute__((used)) static void
FUNC14 (char *buf)
{
  CORE_ADDR ptrval;
  int fd, ret, retlength;
  long target_fd;
  LONGEST lnum;
  struct stat st;
  struct fio_stat fst;
  struct timeval tv;

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
  /* 2. Parameter: Ptr to struct stat */
  if (FUNC6 (&buf, &lnum))
    {
      FUNC7 ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  remote_fio_no_longjmp = 1;
  if (fd == FIO_FD_CONSOLE_IN || fd == FIO_FD_CONSOLE_OUT)
    {
      FUNC12 (1, fst.fst_dev);
      st.st_mode = S_IFCHR | (fd == FIO_FD_CONSOLE_IN ? S_IRUSR : S_IWUSR);
      st.st_nlink = 1;
      st.st_uid = FUNC3 ();
      st.st_gid = FUNC1 ();
      st.st_rdev = 0;
      st.st_size = 0;
      st.st_blksize = 512;
#if HAVE_STRUCT_STAT_ST_BLOCKS
      st.st_blocks = 0;
#endif
      if (!FUNC2 (&tv, NULL))
	st.st_atime = st.st_mtime = st.st_ctime = tv.tv_sec;
      else
        st.st_atime = st.st_mtime = st.st_ctime = (time_t) 0;
      ret = 0;
    }
  else
    ret = FUNC0 (fd, &st);

  if (ret == -1)
    {
      FUNC9 (-1);
      return;
    }
  if (ptrval)
    {
      FUNC11 (&st, &fst);

      retlength = FUNC13 (ptrval, (char *) &fst, sizeof fst);
      if (retlength != sizeof fst)
	{
	  FUNC9 (-1);
	  return;
	}
    }
  FUNC10 (ret);
}