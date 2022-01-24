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
struct stat {int st_mode; } ;

/* Variables and functions */
 char DIRNAME_SEPARATOR ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* SLASH_STRING ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 char* FUNC2 (char*,char*,char*,...) ; 
 char* current_directory ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (char*),char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*) ; 

void
FUNC16 (char *dirname, char **which_path, int parse_separators)
{
  char *old = *which_path;
  int prefix = 0;

  if (dirname == 0)
    return;

  dirname = FUNC15 (dirname);
  FUNC4 (xfree, dirname);

  do
    {
      char *name = dirname;
      char *p;
      struct stat st;

      {
	char *separator = NULL;
	char *space = NULL;
	char *tab = NULL;

	if (parse_separators)
	  {
	    separator = FUNC8 (name, DIRNAME_SEPARATOR);
	    space = FUNC8 (name, ' ');
	    tab = FUNC8 (name, '\t');
	  }

	if (separator == 0 && space == 0 && tab == 0)
	  p = dirname = name + FUNC10 (name);
	else
	  {
	    p = 0;
	    if (separator != 0 && (p == 0 || separator < p))
	      p = separator;
	    if (space != 0 && (p == 0 || space < p))
	      p = space;
	    if (tab != 0 && (p == 0 || tab < p))
	      p = tab;
	    dirname = p + 1;
	    while (*dirname == DIRNAME_SEPARATOR
		   || *dirname == ' '
		   || *dirname == '\t')
	      ++dirname;
	  }
      }

      if (!(FUNC1 (*name) && p <= name + 1)	 /* "/" */
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      /* On MS-DOS and MS-Windows, h:\ is different from h: */
	  && !(p == name + 3 && name[1] == ':') 	 /* "d:/" */
#endif
	  && FUNC1 (p[-1]))
	/* Sigh. "foo/" => "foo" */
	--p;
      *p = '\0';

      while (p > name && p[-1] == '.')
	{
	  if (p - name == 1)
	    {
	      /* "." => getwd ().  */
	      name = current_directory;
	      goto append;
	    }
	  else if (p > name + 1 && FUNC1 (p[-2]))
	    {
	      if (p - name == 2)
		{
		  /* "/." => "/".  */
		  *--p = '\0';
		  goto append;
		}
	      else
		{
		  /* "...foo/." => "...foo".  */
		  p -= 2;
		  *p = '\0';
		  continue;
		}
	    }
	  else
	    break;
	}

      if (name[0] == '~')
	name = FUNC12 (name);
#ifdef HAVE_DOS_BASED_FILE_SYSTEM
      else if (IS_ABSOLUTE_PATH (name) && p == name + 2) /* "d:" => "d:." */
	name = concat (name, ".", NULL);
#endif
      else if (!FUNC0 (name) && name[0] != '$')
	name = FUNC2 (current_directory, SLASH_STRING, name, NULL);
      else
	name = FUNC6 (name, p - name);
      FUNC4 (xfree, name);

      /* Unless it's a variable, check existence.  */
      if (name[0] != '$')
	{
	  /* These are warnings, not errors, since we don't want a
	     non-existent directory in a .gdbinit file to stop processing
	     of the .gdbinit file.

	     Whether they get added to the path is more debatable.  Current
	     answer is yes, in case the user wants to go make the directory
	     or whatever.  If the directory continues to not exist/not be
	     a directory/etc, then having them in the path should be
	     harmless.  */
	  if (FUNC7 (name, &st) < 0)
	    {
	      int save_errno = errno;
	      FUNC3 (gdb_stderr, "Warning: ");
	      FUNC5 (name, save_errno);
	    }
	  else if ((st.st_mode & S_IFMT) != S_IFDIR)
	    FUNC13 ("%s is not a directory.", name);
	}

    append:
      {
	unsigned int len = FUNC10 (name);

	p = *which_path;
	while (1)
	  {
	    /* FIXME: strncmp loses in interesting ways on MS-DOS and
	       MS-Windows because of case-insensitivity and two different
	       but functionally identical slash characters.  We need a
	       special filesystem-dependent file-name comparison function.

	       Actually, even on Unix I would use realpath() or its work-
	       alike before comparing.  Then all the code above which
	       removes excess slashes and dots could simply go away.  */
	    if (!FUNC11 (p, name, len)
		&& (p[len] == '\0' || p[len] == DIRNAME_SEPARATOR))
	      {
		/* Found it in the search path, remove old copy */
		if (p > *which_path)
		  p--;		/* Back over leading separator */
		if (prefix > p - *which_path)
		  goto skip_dup;	/* Same dir twice in one cmd */
		FUNC9 (p, &p[len + 1]);	/* Copy from next \0 or  : */
	      }
	    p = FUNC8 (p, DIRNAME_SEPARATOR);
	    if (p != 0)
	      ++p;
	    else
	      break;
	  }
	if (p == 0)
	  {
	    char tinybuf[2];

	    tinybuf[0] = DIRNAME_SEPARATOR;
	    tinybuf[1] = '\0';

	    /* If we have already tacked on a name(s) in this command, be sure they stay 
	       on the front as we tack on some more.  */
	    if (prefix)
	      {
		char *temp, c;

		c = old[prefix];
		old[prefix] = '\0';
		temp = FUNC2 (old, tinybuf, name, NULL);
		old[prefix] = c;
		*which_path = FUNC2 (temp, "", &old[prefix], NULL);
		prefix = FUNC10 (temp);
		FUNC14 (temp);
	      }
	    else
	      {
		*which_path = FUNC2 (name, (old[0] ? tinybuf : old), old, NULL);
		prefix = FUNC10 (name);
	      }
	    FUNC14 (old);
	    old = *which_path;
	  }
      }
    skip_dup:;
    }
  while (*dirname != '\0');
}