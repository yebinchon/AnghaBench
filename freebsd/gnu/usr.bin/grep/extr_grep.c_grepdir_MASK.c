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
struct TYPE_2__ {scalar_t__ st_ino; scalar_t__ st_dev; int /*<<< orphan*/  st_size; } ;
typedef  struct stats {struct stats const* parent; TYPE_1__ stat; } const stats ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  excluded_patterns ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,struct stats const*) ; 
 int /*<<< orphan*/  included_patterns ; 
 int /*<<< orphan*/  no_filenames ; 
 int out_file ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  suppress_errors ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (char*,size_t) ; 

__attribute__((used)) static int
FUNC12 (char const *dir, struct stats const *stats)
{
  int status = 1;
  struct stats const *ancestor;
  char *name_space;

  /* Mingw32 does not support st_ino.  No known working hosts use zero
     for st_ino, so assume that the Mingw32 bug applies if it's zero.  */
  if (stats->stat.st_ino)
    for (ancestor = stats;  (ancestor = ancestor->parent) != 0;  )
      if (ancestor->stat.st_ino == stats->stat.st_ino
	  && ancestor->stat.st_dev == stats->stat.st_dev)
	{
	  if (!suppress_errors)
	    FUNC3 (0, 0, FUNC2("warning: %s: %s"), dir,
		   FUNC2("recursive directory loop"));
	  return 1;
	}

  name_space = FUNC6 (dir, stats->stat.st_size, included_patterns,
			excluded_patterns);

  if (! name_space)
    {
      if (errno)
	FUNC9 (dir, errno);
      else
	FUNC10 ();
    }
  else
    {
      size_t dirlen = FUNC8 (dir);
      int needs_slash = ! (dirlen == FUNC0 (dir)
			   || FUNC1 (dir[dirlen - 1]));
      char *file = NULL;
      char const *namep = name_space;
      struct stats child;
      child.parent = stats;
      out_file += !no_filenames;
      while (*namep)
	{
	  size_t namelen = FUNC8 (namep);
	  file = FUNC11 (file, dirlen + 1 + namelen + 1);
	  FUNC7 (file, dir);
	  file[dirlen] = '/';
	  FUNC7 (file + dirlen + needs_slash, namep);
	  namep += namelen + 1;
	  status &= FUNC5 (file, &child);
	}
      out_file -= !no_filenames;
      if (file)
        FUNC4 (file);
      FUNC4 (name_space);
    }

  return status;
}