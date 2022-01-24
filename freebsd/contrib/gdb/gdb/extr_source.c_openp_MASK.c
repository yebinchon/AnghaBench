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
 int /*<<< orphan*/  DIRNAME_SEPARATOR ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int O_BINARY ; 
 char* SLASH_STRING ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 char* current_directory ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 

int
FUNC13 (const char *path, int try_cwd_first, const char *string,
       int mode, int prot,
       char **filename_opened)
{
  int fd;
  char *filename;
  const char *p;
  const char *p1;
  int len;
  int alloclen;

  if (!path)
    path = ".";

#if defined(_WIN32) || defined(__CYGWIN__)
  mode |= O_BINARY;
#endif

  if (try_cwd_first || FUNC0 (string))
    {
      int i;

      if (FUNC4 (string))
	{
	  filename = FUNC2 (FUNC9 (string) + 1);
	  FUNC8 (filename, string);
	  fd = FUNC5 (filename, mode, prot);
	  if (fd >= 0)
	    goto done;
	}
      else
	{
	  filename = NULL;
	  fd = -1;
	}

      for (i = 0; string[i]; i++)
	if (FUNC1 (string[i]))
	  goto done;
    }

  /* ./foo => foo */
  while (string[0] == '.' && FUNC1 (string[1]))
    string += 2;

  alloclen = FUNC9 (path) + FUNC9 (string) + 2;
  filename = FUNC2 (alloclen);
  fd = -1;
  for (p = path; p; p = p1 ? p1 + 1 : 0)
    {
      p1 = FUNC7 (p, DIRNAME_SEPARATOR);
      if (p1)
	len = p1 - p;
      else
	len = FUNC9 (p);

      if (len == 4 && p[0] == '$' && p[1] == 'c'
	  && p[2] == 'w' && p[3] == 'd')
	{
	  /* Name is $cwd -- insert current directory name instead.  */
	  int newlen;

	  /* First, realloc the filename buffer if too short. */
	  len = FUNC9 (current_directory);
	  newlen = len + FUNC9 (string) + 2;
	  if (newlen > alloclen)
	    {
	      alloclen = newlen;
	      filename = FUNC2 (alloclen);
	    }
	  FUNC8 (filename, current_directory);
	}
      else
	{
	  /* Normal file name in path -- just use it.  */
	  FUNC10 (filename, p, len);
	  filename[len] = 0;
	}

      /* Remove trailing slashes */
      while (len > 0 && FUNC1 (filename[len - 1]))
	filename[--len] = 0;

      FUNC6 (filename + len, SLASH_STRING);
      FUNC6 (filename, string);

      if (FUNC4 (filename))
      {
        fd = FUNC5 (filename, mode);
        if (fd >= 0)
          break;
      }
    }

done:
  if (filename_opened)
    {
      /* If a file was opened, canonicalize its filename. Use xfullpath
         rather than gdb_realpath to avoid resolving the basename part
         of filenames when the associated file is a symbolic link. This
         fixes a potential inconsistency between the filenames known to
         GDB and the filenames it prints in the annotations.  */
      if (fd < 0)
	*filename_opened = NULL;
      else if (FUNC0 (filename))
	*filename_opened = FUNC12 (filename);
      else
	{
	  /* Beware the // my son, the Emacs barfs, the botch that catch... */

	  char *f = FUNC3 (current_directory,
           FUNC1 (current_directory[FUNC9 (current_directory) - 1])
				     ? "" : SLASH_STRING,
				     filename, NULL);
	  *filename_opened = FUNC12 (f);
	  FUNC11 (f);
	}
    }

  return fd;
}