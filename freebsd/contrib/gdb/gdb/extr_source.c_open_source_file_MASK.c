#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab {char* fullname; char const* dirname; char const* filename; TYPE_1__* objfile; } ;
struct TYPE_2__ {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 char const DIRNAME_SEPARATOR ; 
 int /*<<< orphan*/  OPEN_MODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t cdir_len ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char const* source_path ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

int
FUNC12 (struct symtab *s)
{
  char *path = source_path;
  const char *p;
  int result;
  char *fullname;

  /* Quick way out if we already know its full name */
  if (s->fullname)
    {
      result = FUNC3 (s->fullname, OPEN_MODE);
      if (result >= 0)
	return result;
      /* Didn't work -- free old one, try again. */
      FUNC11 (s->objfile->md, s->fullname);
      s->fullname = NULL;
    }

  if (s->dirname != NULL)
    {
      /* Replace a path entry of  $cdir  with the compilation directory name */
#define	cdir_len	5
      /* We cast strstr's result in case an ANSIhole has made it const,
         which produces a "required warning" when assigned to a nonconst. */
      p = (char *) FUNC9 (source_path, "$cdir");
      if (p && (p == path || p[-1] == DIRNAME_SEPARATOR)
	  && (p[cdir_len] == DIRNAME_SEPARATOR || p[cdir_len] == '\0'))
	{
	  int len;

	  path = (char *)
	    FUNC0 (FUNC7 (source_path) + 1 + FUNC7 (s->dirname) + 1);
	  len = p - source_path;
	  FUNC8 (path, source_path, len);	/* Before $cdir */
	  FUNC6 (path + len, s->dirname);	/* new stuff */
	  FUNC5 (path + len, source_path + len + cdir_len);	/* After $cdir */
	}
    }

  result = FUNC4 (path, 0, s->filename, OPEN_MODE, 0, &s->fullname);
  if (result < 0)
    {
      /* Didn't work.  Try using just the basename. */
      p = FUNC1 (s->filename);
      if (p != s->filename)
	result = FUNC4 (path, 0, p, OPEN_MODE, 0, &s->fullname);
    }

  if (result >= 0)
    {
      fullname = s->fullname;
      s->fullname = FUNC2 (s->objfile->md, s->fullname);
      FUNC10 (fullname);
    }
  return result;
}