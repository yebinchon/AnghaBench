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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int) ; 

const char *
FUNC5(const char *dirent, apr_pool_t *pool)
{
  apr_size_t len = FUNC2(dirent);
  apr_size_t start;

  FUNC1(!pool || FUNC3(dirent, pool));

  if (FUNC4(dirent, len))
    return "";
  else
    {
      start = len;
      while (start > 0 && dirent[start - 1] != '/'
#ifdef SVN_USE_DOS_PATHS
             && dirent[start - 1] != ':'
#endif
            )
        --start;
    }

  if (pool)
    return FUNC0(pool, dirent + start, len - start);
  else
    return dirent + start;
}