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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 

svn_error_t *
FUNC7(const char *path,
                         apr_pool_t *pool)
{
  svn_node_kind_t kind;

  FUNC0(FUNC5(path, &kind, pool));

  if (kind != svn_node_none && kind != svn_node_dir)
    {
      /* If got an error other than dir non-existence, then we can't
         ensure this directory's existence, so just return the error.
         Might happen if there's a file in the way, for example. */
      return FUNC4(APR_ENOTDIR, NULL,
                               FUNC2("'%s' is not a directory"),
                               FUNC3(path, pool));
    }
  else if (kind == svn_node_none)
    {
      /* The dir doesn't exist, and it's our job to change that. */
      FUNC0(FUNC6(path, pool));
    }
  else  /* No problem, the dir already existed, so just leave. */
    FUNC1(kind == svn_node_dir);

  return SVN_NO_ERROR;
}