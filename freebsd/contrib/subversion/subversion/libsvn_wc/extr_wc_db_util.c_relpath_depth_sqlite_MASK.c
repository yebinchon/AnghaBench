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
typedef  int /*<<< orphan*/  svn_sqlite__value_t ;
typedef  int /*<<< orphan*/  svn_sqlite__context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_SQLITE__TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_sqlite__context_t *sctx,
                     int argc,
                     svn_sqlite__value_t *values[],
                     void *baton)
{
  const char *path = NULL;
  apr_int64_t depth;

  if (argc == 1 && FUNC3(values[0]) == SVN_SQLITE__TEXT)
    path = FUNC2(values[0]);
  if (!path)
    {
      FUNC1(sctx);
      return SVN_NO_ERROR;
    }

  depth = *path ? 1 : 0;
  while (*path)
    {
      if (*path == '/')
        ++depth;
      ++path;
    }
  FUNC0(sctx, depth);

  return SVN_NO_ERROR;
}