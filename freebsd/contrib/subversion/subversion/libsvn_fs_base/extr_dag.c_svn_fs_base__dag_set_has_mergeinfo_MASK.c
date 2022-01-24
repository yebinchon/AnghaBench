#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  mergeinfo_count; scalar_t__ has_mergeinfo; } ;
typedef  TYPE_2__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_FS_BASE__MIN_MERGEINFO_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(dag_node_t *node,
                                   svn_boolean_t has_mergeinfo,
                                   svn_boolean_t *had_mergeinfo,
                                   const char *txn_id,
                                   trail_t *trail,
                                   apr_pool_t *pool)
{
  node_revision_t *node_rev;
  svn_fs_t *fs = FUNC4(node);
  const svn_fs_id_t *id = FUNC5(node);

  FUNC0(FUNC6
          (trail->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));

  if (! FUNC3(node, txn_id))
    return FUNC2(SVN_ERR_FS_NOT_MUTABLE, NULL,
                             FUNC1("Attempted merge tracking info change on "
                               "immutable node"));

  FUNC0(FUNC7(&node_rev, fs, id, trail, pool));
  *had_mergeinfo = node_rev->has_mergeinfo;

  /* Are we changing the node? */
  if ((! has_mergeinfo) != (! *had_mergeinfo))
    {
      /* Note the new has-mergeinfo state. */
      node_rev->has_mergeinfo = has_mergeinfo;

      /* Increment or decrement the mergeinfo count as necessary. */
      if (has_mergeinfo)
        node_rev->mergeinfo_count++;
      else
        node_rev->mergeinfo_count--;

      FUNC0(FUNC8(fs, id, node_rev, trail, pool));
    }
  return SVN_NO_ERROR;
}