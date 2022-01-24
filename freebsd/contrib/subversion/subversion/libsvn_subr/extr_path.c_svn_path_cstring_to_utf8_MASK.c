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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(const char **path_utf8,
                         const char *path_apr,
                         apr_pool_t *pool)
{
#if !defined(WIN32) && !defined(DARWIN)
  svn_boolean_t path_is_utf8;
  FUNC0(FUNC2(&path_is_utf8, pool));
  if (path_is_utf8)
#endif
    {
      *path_utf8 = FUNC1(pool, path_apr);
      return SVN_NO_ERROR;
    }
#if !defined(WIN32) && !defined(DARWIN)
  else
    return FUNC3(path_utf8, path_apr, pool);
#endif
}