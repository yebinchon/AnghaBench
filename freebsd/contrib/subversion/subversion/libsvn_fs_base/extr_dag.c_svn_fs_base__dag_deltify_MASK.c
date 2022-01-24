#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  data_key; int /*<<< orphan*/  prop_key; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(dag_node_t *target,
                         dag_node_t *source,
                         svn_boolean_t props_only,
                         const char *txn_id,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  node_revision_t *source_nr, *target_nr;
  svn_fs_t *fs = FUNC2(target);

  /* Get node revisions for the two nodes.  */
  FUNC0(FUNC3(&target_nr, fs, target->id,
                                        trail, pool));
  FUNC0(FUNC3(&source_nr, fs, source->id,
                                        trail, pool));

  /* If TARGET and SOURCE both have properties, and are not sharing a
     property key, deltify TARGET's properties.  */
  FUNC0(FUNC1(target_nr->prop_key, source_nr->prop_key,
                                    txn_id, trail, pool));

  /* If we are not only attending to properties, and if TARGET and
     SOURCE both have data, and are not sharing a data key, deltify
     TARGET's data.  */
  if (! props_only)
    FUNC0(FUNC1(target_nr->data_key, source_nr->data_key,
                                      txn_id, trail, pool));

  return SVN_NO_ERROR;
}