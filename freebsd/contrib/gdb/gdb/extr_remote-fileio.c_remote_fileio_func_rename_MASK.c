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
 scalar_t__ EACCES ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ENOTEMPTY ; 
 int /*<<< orphan*/  FILEIO_EACCES ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (char**,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int remote_fio_no_longjmp ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (char*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC14 (char *buf)
{
  CORE_ADDR ptrval;
  int length, retlength;
  char *oldpath, *newpath;
  int ret, of, nf;
  struct stat ost, nst;

  /* 1. Parameter: Ptr to oldpath / length incl. trailing zero */
  if (FUNC4 (&buf, &ptrval, &length))
    {
      FUNC5 ();
      return;
    }
  /* Request oldpath using 'm' packet */
  oldpath = FUNC2 (length);
  retlength = FUNC9 (ptrval, oldpath, length);
  if (retlength != length)
    {
      FUNC5 ();
      return;
    }
  /* 2. Parameter: Ptr to newpath / length incl. trailing zero */
  if (FUNC4 (&buf, &ptrval, &length))
    {
      FUNC5 ();
      return;
    }
  /* Request newpath using 'm' packet */
  newpath = FUNC2 (length);
  retlength = FUNC9 (ptrval, newpath, length);
  if (retlength != length)
    {
      FUNC5 ();
      return;
    }
  
  /* Only operate on regular files and directories */
  of = FUNC11 (oldpath, &ost);
  nf = FUNC11 (newpath, &nst);
  if ((!of && !FUNC1 (ost.st_mode) && !FUNC0 (ost.st_mode))
      || (!nf && !FUNC1 (nst.st_mode) && !FUNC0 (nst.st_mode)))
    {
      FUNC6 (-1, FILEIO_EACCES);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = FUNC10 (oldpath, newpath);

  if (ret == -1)
    {
      /* Special case: newpath is a non-empty directory.  Some systems
         return ENOTEMPTY, some return EEXIST.  We coerce that to be
	 always EEXIST. */
      if (errno == ENOTEMPTY)
        errno = EEXIST;
#ifdef __CYGWIN__
      /* Workaround some Cygwin problems with correct errnos. */
      if (errno == EACCES)
        {
	  if (!of && !nf && S_ISDIR (nst.st_mode))
	    {
	      if (S_ISREG (ost.st_mode))
		errno = EISDIR;
	      else
		{
		  char oldfullpath[PATH_MAX + 1];
		  char newfullpath[PATH_MAX + 1];
		  int len;

		  cygwin_conv_to_full_posix_path (oldpath, oldfullpath);
		  cygwin_conv_to_full_posix_path (newpath, newfullpath);
		  len = strlen (oldfullpath);
		  if (newfullpath[len] == '/'
		      && !strncmp (oldfullpath, newfullpath, len))
		    errno = EINVAL;
		  else
		    errno = EEXIST;
		}
	    }
	}
#endif

      FUNC7 (-1);
    }
  else
    FUNC8 (ret);
}