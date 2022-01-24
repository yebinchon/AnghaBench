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
struct fio_stat {int /*<<< orphan*/  fst_dev; } ;
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_EACCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char**,scalar_t__*) ; 
 scalar_t__ FUNC4 (char**,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct stat*,struct fio_stat*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,char*,int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC12 (scalar_t__,char*,int) ; 
 int FUNC13 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC14 (char *buf)
{
  CORE_ADDR ptrval;
  int ret, length, retlength;
  char *pathname;
  LONGEST lnum;
  struct stat st;
  struct fio_stat fst;

  /* 1. Parameter: Ptr to pathname / length incl. trailing zero */
  if (FUNC4 (&buf, &ptrval, &length))
    {
      FUNC5 ();
      return;
    }
  /* Request pathname using 'm' packet */
  pathname = FUNC2 (length);
  retlength = FUNC12 (ptrval, pathname, length);
  if (retlength != length)
    {
      FUNC5 ();
      return;
    }

  /* 2. Parameter: Ptr to struct stat */
  if (FUNC3 (&buf, &lnum))
    {
      FUNC5 ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  remote_fio_no_longjmp = 1;
  ret = FUNC13 (pathname, &st);

  if (ret == -1)
    {
      FUNC7 (-1);
      return;
    }
  /* Only operate on regular files and directories */
  if (!ret && !FUNC1 (st.st_mode) && !FUNC0 (st.st_mode))
    {
      FUNC6 (-1, FILEIO_EACCES);
      return;
    }
  if (ptrval)
    {
      FUNC9 (&st, &fst);
      FUNC10 (0, fst.fst_dev);
      
      retlength = FUNC11 (ptrval, (char *) &fst, sizeof fst);
      if (retlength != sizeof fst)
	{
	  FUNC7 (-1);
	  return;
	}
    }
  FUNC8 (ret);
}