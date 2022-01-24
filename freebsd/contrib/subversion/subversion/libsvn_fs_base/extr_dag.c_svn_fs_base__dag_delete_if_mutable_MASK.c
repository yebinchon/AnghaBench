#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_6__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_fs_t *fs,
                                   const svn_fs_id_t *id,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  dag_node_t *node;

  /* Get the node. */
  FUNC0(FUNC6(&node, fs, id, trail, pool));

  /* If immutable, do nothing and return immediately. */
  if (! FUNC4(node, txn_id))
    return SVN_NO_ERROR;

  /* Else it's mutable.  Recurse on directories... */
  if (node->kind == svn_node_dir)
    {
      apr_hash_t *entries;
      apr_hash_index_t *hi;

      /* Loop over hash entries */
      FUNC0(FUNC5(&entries, node, trail, pool));
      if (entries)
        {
          apr_pool_t *subpool = FUNC9(pool);
          for (hi = FUNC1(pool, entries);
               hi;
               hi = FUNC2(hi))
            {
              void *val;
              svn_fs_dirent_t *dirent;

              FUNC8(subpool);
              FUNC3(hi, NULL, NULL, &val);
              dirent = val;
              FUNC0(FUNC11(fs, dirent->id,
                                                         txn_id, trail,
                                                         subpool));
            }
          FUNC10(subpool);
        }
    }

  /* ... then delete the node itself, any mutable representations and
     strings it points to, and possibly its node-origins record. */
  return FUNC7(fs, id, txn_id, trail, pool);
}