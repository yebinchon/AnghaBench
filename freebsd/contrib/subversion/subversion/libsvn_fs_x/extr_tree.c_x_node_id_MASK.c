#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_4__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  rev; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const svn_fs_id_t **id_p,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{
  svn_fs_x__id_t noderev_id;

  if ((! root->is_txn_root)
      && (path[0] == '\0' || ((path[0] == '/') && (path[1] == '\0'))))
    {
      /* Optimize the case where we don't need any db access at all.
         The root directory ("" or "/") node is stored in the
         svn_fs_root_t object, and never changes when it's a revision
         root, so we can just reach in and grab it directly. */
      FUNC5(&noderev_id, root->rev);
    }
  else
    {
      apr_pool_t *scratch_pool = FUNC6(pool);
      dag_node_t *node;

      FUNC0(FUNC2(&node, root, path, scratch_pool));
      noderev_id = *FUNC1(node);
      FUNC7(scratch_pool);
    }

  *id_p = FUNC3(FUNC4(root->fs, pool),
                              &noderev_id, pool);

  return SVN_NO_ERROR;
}