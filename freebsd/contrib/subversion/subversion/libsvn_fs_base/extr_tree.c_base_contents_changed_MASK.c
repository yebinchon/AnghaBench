#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_5__ {scalar_t__ fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct things_changed_args {char const* path1; char const* path2; int /*<<< orphan*/  strict; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * changed_p; TYPE_1__* root2; TYPE_1__* root1; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_GENERAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct things_changed_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  txn_body_contents_changed ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *changed_p,
                      svn_fs_root_t *root1,
                      const char *path1,
                      svn_fs_root_t *root2,
                      const char *path2,
                      svn_boolean_t strict,
                      apr_pool_t *pool)
{
  struct things_changed_args args;

  /* Check that roots are in the same fs. */
  if (root1->fs != root2->fs)
    return FUNC3
      (SVN_ERR_FS_GENERAL, NULL,
       FUNC1("Cannot compare file contents between two different filesystems"));

  /* Check that both paths are files. */
  {
    svn_node_kind_t kind;

    FUNC0(FUNC2(&kind, root1, path1, pool));
    if (kind != svn_node_file)
      return FUNC4
        (SVN_ERR_FS_GENERAL, NULL, FUNC1("'%s' is not a file"), path1);

    FUNC0(FUNC2(&kind, root2, path2, pool));
    if (kind != svn_node_file)
      return FUNC4
        (SVN_ERR_FS_GENERAL, NULL, FUNC1("'%s' is not a file"), path2);
  }

  args.root1      = root1;
  args.root2      = root2;
  args.path1      = path1;
  args.path2      = path2;
  args.changed_p  = changed_p;
  args.pool       = pool;
  args.strict     = strict;

  return FUNC5(root1->fs, txn_body_contents_changed, &args,
                                TRUE, pool);
}