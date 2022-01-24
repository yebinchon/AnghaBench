#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; scalar_t__ data_rep; scalar_t__ prop_rep; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_13__ {scalar_t__ txn_dir_cache; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__**,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                                const svn_fs_id_t *id,
                                apr_pool_t *pool)
{
  node_revision_t *noderev;

  FUNC0(FUNC3(&noderev, fs, id, pool, pool));

  /* Delete any mutable property representation. */
  if (noderev->prop_rep && FUNC1(noderev->prop_rep))
    FUNC0(FUNC8(FUNC6(fs, id, pool),
                                FALSE, pool));

  /* Delete any mutable data representation. */
  if (noderev->data_rep && FUNC1(noderev->data_rep)
      && noderev->kind == svn_node_dir)
    {
      fs_fs_data_t *ffd = fs->fsap_data;
      FUNC0(FUNC8(FUNC5(fs, id,
                                                                    pool),
                                  FALSE, pool));

      /* remove the corresponding entry from the cache, if such exists */
      if (ffd->txn_dir_cache)
        {
          const char *key = FUNC4(id, pool)->data;
          FUNC0(FUNC2(ffd->txn_dir_cache, key, NULL, pool));
        }
    }

  return FUNC8(FUNC7(fs, id, pool),
                             FALSE, pool);
}