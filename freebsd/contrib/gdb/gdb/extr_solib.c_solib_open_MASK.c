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
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char**) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  inferior_environ ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* solib_absolute_prefix ; 
 int /*<<< orphan*/ * solib_search_path ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*) ; 

int
FUNC12 (char *in_pathname, char **found_pathname)
{
  int found_file = -1;
  char *temp_pathname = NULL;
  char *p = in_pathname;

  while (*p && !FUNC1 (*p))
    p++;

  if (*p)
    {
      if (! FUNC0 (in_pathname) || solib_absolute_prefix == NULL)
        temp_pathname = in_pathname;
      else
	{
	  int prefix_len = FUNC9 (solib_absolute_prefix);

	  /* Remove trailing slashes from absolute prefix.  */
	  while (prefix_len > 0
		 && FUNC1 (solib_absolute_prefix[prefix_len - 1]))
	    prefix_len--;

	  /* Cat the prefixed pathname together.  */
	  temp_pathname = FUNC3 (prefix_len + FUNC9 (in_pathname) + 1);
	  FUNC10 (temp_pathname, solib_absolute_prefix, prefix_len);
	  temp_pathname[prefix_len] = '\0';
	  FUNC8 (temp_pathname, in_pathname);
	}

      /* Now see if we can open it.  */
      found_file = FUNC6 (temp_pathname, O_RDONLY, 0);
    }

  /* If the search in solib_absolute_prefix failed, and the path name is
     absolute at this point, make it relative.  (openp will try and open the
     file according to its absolute path otherwise, which is not what we want.)
     Affects subsequent searches for this solib.  */
  if (found_file < 0 && FUNC0 (in_pathname))
    {
      /* First, get rid of any drive letters etc.  */
      while (!FUNC1 (*in_pathname))
        in_pathname++;

      /* Next, get rid of all leading dir separators.  */
      while (FUNC1 (*in_pathname))
        in_pathname++;
    }
  
  /* If not found, search the solib_search_path (if any).  */
  if (found_file < 0 && solib_search_path != NULL)
    found_file = FUNC7 (solib_search_path,
			1, in_pathname, O_RDONLY, 0, &temp_pathname);
  
  /* If not found, next search the solib_search_path (if any) for the basename
     only (ignoring the path).  This is to allow reading solibs from a path
     that differs from the opened path.  */
  if (found_file < 0 && solib_search_path != NULL)
    found_file = FUNC7 (solib_search_path, 
                        1, FUNC5 (in_pathname), O_RDONLY, 0,
                        &temp_pathname);

  /* If not found, try to use target supplied solib search method */
  if (found_file < 0 && &TARGET_SO_FIND_AND_OPEN_SOLIB != NULL)
    found_file = FUNC2
                 (in_pathname, O_RDONLY, &temp_pathname);

  /* If not found, next search the inferior's $PATH environment variable. */
  if (found_file < 0 && solib_absolute_prefix == NULL)
    found_file = FUNC7 (FUNC4 (inferior_environ, "PATH"),
			1, in_pathname, O_RDONLY, 0, &temp_pathname);

  /* If not found, next search the inferior's $LD_LIBRARY_PATH 
     environment variable. */
  if (found_file < 0 && solib_absolute_prefix == NULL)
    found_file = FUNC7 (FUNC4 (inferior_environ, "LD_LIBRARY_PATH"),
			1, in_pathname, O_RDONLY, 0, &temp_pathname);

  /* Done.  If not found, tough luck.  Return found_file and 
     (optionally) found_pathname.  */
  if (found_pathname != NULL && temp_pathname != NULL)
    *found_pathname = FUNC11 (temp_pathname);
  return found_file;
}