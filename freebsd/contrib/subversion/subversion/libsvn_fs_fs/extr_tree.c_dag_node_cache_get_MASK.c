#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* fs; int /*<<< orphan*/  rev; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cache__t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  dag_node_cache; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(dag_node_t **node_p,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  svn_boolean_t found;
  dag_node_t *node = NULL;
  svn_cache__t *cache;
  const char *key;

  FUNC1(*path == '/');

  if (!root->is_txn_root)
    {
      /* immutable DAG node. use the global caches for it */

      fs_fs_data_t *ffd = root->fs->fsap_data;

      node = FUNC3(ffd->dag_node_cache, root->rev, path);
      if (node == NULL)
        {
          FUNC4(&cache, &key, root, path, pool);
          FUNC0(FUNC5((void **)&node, &found, cache, key, pool));
          if (found && node)
            {
              /* Patch up the FS, since this might have come from an old FS
               * object. */
              FUNC7(node, root->fs);

              /* Retain the DAG node in L1 cache. */
              FUNC2(ffd->dag_node_cache, root->rev, path, node);
            }
        }
      else
        {
          /* Copy the node from L1 cache into the passed-in POOL. */
          node = FUNC6(node, pool);
        }
    }
  else
    {
      /* DAG is mutable / may become invalid. Use the TXN-local cache */

      FUNC4(&cache, &key, root, path, pool);

      FUNC0(FUNC5((void **) &node, &found, cache, key, pool));
      if (found && node)
        {
          /* Patch up the FS, since this might have come from an old FS
           * object. */
          FUNC7(node, root->fs);
        }
    }

  *node_p = node;

  return SVN_NO_ERROR;
}