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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char SVN_PATH_LOCAL_SEPARATOR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

const char *
FUNC2(const char *dirent, apr_pool_t *pool)
{
  /* Internally, Subversion represents the current directory with the
     empty string.  But users like to see "." . */
  if (FUNC0(dirent))
    return ".";

#if '/' != SVN_PATH_LOCAL_SEPARATOR
    {
      char *p = FUNC1(pool, dirent);
      dirent = p;

      /* Convert all canonical separators to the local-style ones. */
      for (; *p != '\0'; ++p)
        if (*p == '/')
          *p = SVN_PATH_LOCAL_SEPARATOR;
    }
#endif

  return dirent;
}