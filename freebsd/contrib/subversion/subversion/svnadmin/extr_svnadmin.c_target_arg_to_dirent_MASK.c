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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **dirent,
                     const char *path,
                     apr_pool_t *pool)
{
  if (FUNC3(path))
    return FUNC2(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                             FUNC0("Path '%s' is not a local path"), path);
  *dirent = FUNC1(path, pool);
  return SVN_NO_ERROR;
}