#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_GENERAL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_boolean_t *changed_p,
                   svn_fs_root_t *root1,
                   const char *path1,
                   svn_fs_root_t *root2,
                   const char *path2,
                   svn_boolean_t strict,
                   apr_pool_t *scratch_pool)
{
  dag_node_t *node1, *node2;
  apr_pool_t *subpool = FUNC8(scratch_pool);

  /* Check that roots are in the same fs. */
  if (root1->fs != root2->fs)
    return FUNC2
      (SVN_ERR_FS_GENERAL, NULL,
       FUNC1("Cannot compare file contents between two different filesystems"));

  FUNC0(FUNC6(&node1, root1, path1, subpool, subpool));
  /* Make sure that path is file. */
  if (FUNC4(node1) != svn_node_file)
    return FUNC3
      (SVN_ERR_FS_GENERAL, NULL, FUNC1("'%s' is not a file"), path1);

  FUNC0(FUNC7(&node2, root2, path2, subpool));
  /* Make sure that path is file. */
  if (FUNC4(node2) != svn_node_file)
    return FUNC3
      (SVN_ERR_FS_GENERAL, NULL, FUNC1("'%s' is not a file"), path2);

  FUNC0(FUNC5(NULL, changed_p, node1, node2,
                                         strict, subpool));

  FUNC9(subpool);
  return SVN_NO_ERROR;
}