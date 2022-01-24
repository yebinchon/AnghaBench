#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int mergeinfo_count; } ;
typedef  TYPE_2__ node_revision_t ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_INT64_T_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_FS_BASE__MIN_MERGEINFO_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC10(dag_node_t *node,
                                        apr_int64_t count_delta,
                                        const char *txn_id,
                                        trail_t *trail,
                                        apr_pool_t *pool)
{
  node_revision_t *node_rev;
  svn_fs_t *fs = FUNC5(node);
  const svn_fs_id_t *id = FUNC6(node);

  FUNC0(FUNC7
          (trail->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));

  if (! FUNC4(node, txn_id))
    return FUNC3(SVN_ERR_FS_NOT_MUTABLE, NULL,
                             FUNC1("Attempted mergeinfo count change on "
                               "immutable node"));

  if (count_delta == 0)
    return SVN_NO_ERROR;

  FUNC0(FUNC8(&node_rev, fs, id, trail, pool));
  node_rev->mergeinfo_count = node_rev->mergeinfo_count + count_delta;
  if ((node_rev->mergeinfo_count < 0)
      || ((node->kind == svn_node_file) && (node_rev->mergeinfo_count > 1)))
    return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC2(pool,
                                          FUNC1("Invalid value (%%%s) for node "
                                            "revision mergeinfo count"),
                                          APR_INT64_T_FMT),
                             node_rev->mergeinfo_count);

  return FUNC9(fs, id, node_rev, trail, pool);
}