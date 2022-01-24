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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_node_kind_t *kind,
            svn_fs_root_t *root,
            const char *path,
            apr_pool_t *pool)
{
  FUNC0(FUNC3(kind, root, path, pool));

  if (*kind == svn_node_none)
    {
      if (FUNC4(path))  /* check for a common mistake. */
        return FUNC2
          (SVN_ERR_FS_NOT_FOUND, NULL,
           FUNC1("'%s' is a URL, probably should be a path"), path);
      else
        return FUNC2
          (SVN_ERR_FS_NOT_FOUND, NULL, FUNC1("Path '%s' does not exist"), path);
    }

  return SVN_NO_ERROR;
}