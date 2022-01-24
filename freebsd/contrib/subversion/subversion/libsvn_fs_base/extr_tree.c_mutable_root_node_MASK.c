#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_3__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  fs; int /*<<< orphan*/  txn; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(dag_node_t **node_p,
                  svn_fs_root_t *root,
                  const char *error_path,
                  trail_t *trail,
                  apr_pool_t *pool)
{
  if (root->is_txn_root)
    return FUNC1(node_p, root->fs, root->txn,
                                       trail, pool);
  else
    /* If it's not a transaction root, we can't change its contents.  */
    return FUNC0(root->fs, root->rev, error_path);
}