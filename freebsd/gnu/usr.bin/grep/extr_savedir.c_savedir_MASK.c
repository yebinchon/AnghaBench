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
struct exclude {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct exclude*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 char* path ; 
 scalar_t__ pathlen ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*,int) ; 
 char* FUNC10 (char*,char*) ; 

char *
FUNC11 (const char *dir, off_t name_size, struct exclude *included_patterns,
	 struct exclude *excluded_patterns)
{
  DIR *dirp;
  struct dirent *dp;
  char *name_space;
  char *namep;

  dirp = FUNC7 (dir);
  if (dirp == NULL)
    return NULL;

  /* Be sure name_size is at least `1' so there's room for
     the final NUL byte.  */
  if (name_size <= 0)
    name_size = 1;

  name_space = (char *) FUNC6 (name_size);
  if (name_space == NULL)
    {
      FUNC2 (dirp);
      return NULL;
    }
  namep = name_space;

  while ((dp = FUNC8 (dirp)) != NULL)
    {
      /* Skip "." and ".." (some NFS filesystems' directories lack them). */
      if (dp->d_name[0] != '.'
	  || (dp->d_name[1] != '\0'
	      && (dp->d_name[1] != '.' || dp->d_name[2] != '\0')))
	{
	  off_t size_needed = (namep - name_space) + FUNC1 (dp) + 2;

	  if ((included_patterns || excluded_patterns)
	      && !FUNC5 (dir, dp->d_name))
	    {
	      if (included_patterns
		  && !FUNC3 (included_patterns, path, 0))
		continue;
	      if (excluded_patterns
		  && FUNC3 (excluded_patterns, path, 0))
		continue;
	    }

	  if (size_needed > name_size)
	    {
	      char *new_name_space;

	      while (size_needed > name_size)
		name_size += 1024;

	      new_name_space = FUNC9 (name_space, name_size);
	      if (new_name_space == NULL)
		{
		  FUNC2 (dirp);
		  return NULL;
		}
	      namep += new_name_space - name_space;
	      name_space = new_name_space;
	    }
	  namep = FUNC10 (namep, dp->d_name) + 1;
	}
    }
  *namep = '\0';
  if (FUNC0 (dirp))
    {
      FUNC4 (name_space);
      return NULL;
    }
  if (path)
    {
      FUNC4 (path);
      path = NULL;
      pathlen = 0;
    }
  return name_space;
}