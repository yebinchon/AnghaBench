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
struct stat {scalar_t__ st_mtime; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  char* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,char**,int /*<<< orphan*/ *) ; 
 char* ERROR_ALREADY_EXISTS ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_ALWAYS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UPLOAD_ALWAYS ; 
 scalar_t__ UPLOAD_NEVER ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 scalar_t__ FUNC9 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int FUNC13 (int,char*,int) ; 
 scalar_t__ remote_directory ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int FUNC16 (char const*) ; 
 char* FUNC17 (char const*,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ upload_when ; 
 scalar_t__ FUNC20 (char*,int) ; 

char *
FUNC21 (const char *to, const char *from)
{
  HANDLE h;
  const char *dir = remote_directory ?: "\\gdb";
  int len;
  static char *remotefile = NULL;
  LPWSTR wstr;
  char *p;
  DWORD err;
  const char *in_to = to;
  FILETIME crtime, actime, wrtime;
  time_t utime;
  struct stat st;
  int fd;

  /* Look for a path separator and only use trailing part. */
  while ((p = FUNC17 (to, "/\\")) != NULL)
    to = p + 1;

  if (!*to)
    FUNC8 ("no filename found to upload - %s.", in_to);

  len = FUNC16 (dir) + FUNC16 (to) + 2;
  remotefile = (char *) FUNC20 (remotefile, len);
  FUNC15 (remotefile, dir);
  FUNC14 (remotefile, "\\");
  FUNC14 (remotefile, to);

  if (upload_when == UPLOAD_NEVER)
    return remotefile;		/* Don't bother uploading. */

  /* Open the source. */
  if ((fd = FUNC11 (FUNC10 ("PATH"), TRUE, (char *) from, O_RDONLY, 0, NULL)) < 0)
    FUNC8 ("couldn't open %s", from);

  /* Get the time for later comparison. */
  if (FUNC9 (fd, &st))
    st.st_mtime = (time_t) - 1;

  /* Always attempt to create the directory on the remote system. */
  wstr = FUNC19 (dir, NULL);
  (void) FUNC1 (wstr, NULL);

  /* Attempt to open the remote file, creating it if it doesn't exist. */
  wstr = FUNC19 (remotefile, NULL);
  h = FUNC2 (wstr, GENERIC_READ | GENERIC_WRITE, 0, NULL,
		    OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);

  /* Some kind of problem? */
  err = FUNC4 ();
  if (h == NULL || h == INVALID_HANDLE_VALUE)
    FUNC8 ("error opening file \"%s\".  Windows error %d.",
	   remotefile, err);

  FUNC3 (h, &crtime, &actime, &wrtime);
  utime = FUNC18 (&wrtime);
#if 0
  if (utime < st.st_mtime)
    {
      char buf[80];
      strcpy (buf, ctime(&utime));
      printf ("%s < %s\n", buf, ctime(&st.st_mtime));
    }
#endif
  /* See if we need to upload the file. */
  if (upload_when == UPLOAD_ALWAYS ||
      err != ERROR_ALREADY_EXISTS ||
      !FUNC3 (h, &crtime, &actime, &wrtime) ||
      FUNC18 (&wrtime) < st.st_mtime)
    {
      DWORD nbytes;
      char buf[4096];
      int n;

      /* Upload the file. */
      while ((n = FUNC13 (fd, buf, sizeof (buf))) > 0)
	if (!FUNC5 (h, buf, (DWORD) n, &nbytes, NULL))
	  FUNC8 ("error writing to remote device - %d.",
		 FUNC4 ());
    }

  FUNC6 (fd);
  if (!FUNC0 (h))
    FUNC8 ("error closing remote file - %d.", FUNC4 ());

  return remotefile;
}