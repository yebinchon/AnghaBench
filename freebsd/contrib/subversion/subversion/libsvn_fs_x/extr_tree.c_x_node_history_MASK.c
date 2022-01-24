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
struct TYPE_5__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  fs; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_history_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_REVISION_ROOT ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_history_t **history_p,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;

  /* We require a revision root. */
  if (root->is_txn_root)
    return FUNC3(SVN_ERR_FS_NOT_REVISION_ROOT, NULL, NULL);

  /* And we require that the path exist in the root. */
  FUNC0(FUNC4(&kind, root, path, scratch_pool));
  if (kind == svn_node_none)
    return FUNC1(root, path);

  /* Okay, all seems well.  Build our history object and return it. */
  *history_p = FUNC2(root->fs, path, root->rev, FALSE, NULL,
                                SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                                NULL, result_pool);
  return SVN_NO_ERROR;
}