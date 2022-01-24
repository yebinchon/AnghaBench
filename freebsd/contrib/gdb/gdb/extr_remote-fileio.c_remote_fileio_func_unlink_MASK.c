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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct stat*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  char *pathname;
  int ret;
  struct stat st;

  /* Parameter: Ptr to pathname / length incl. trailing zero */
  if (FUNC3 (&buf, &ptrval, &length))
    {
      FUNC4 ();
      return;
    }
  /* Request pathname using 'm' packet */
  pathname = FUNC2 (length);
  retlength = FUNC8 (ptrval, pathname, length);
  if (retlength != length)
    {
      FUNC4 ();
      return;
    }

  /* Only operate on regular files (and directories, which allows to return
     the correct return code) */
  if (!FUNC9 (pathname, &st) && !FUNC1 (st.st_mode) && !FUNC0 (st.st_mode))
    {
      FUNC5 (-1, FILEIO_ENODEV);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = FUNC10 (pathname);

  if (ret == -1)
    FUNC6 (-1);
  else
    FUNC7 (ret);
}