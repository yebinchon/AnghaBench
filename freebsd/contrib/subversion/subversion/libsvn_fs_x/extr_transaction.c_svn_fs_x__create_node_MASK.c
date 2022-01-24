#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_5__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_6__ {TYPE_1__ noderev_id; int /*<<< orphan*/  copy_id; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_2__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_fs_t *fs,
                      svn_fs_x__noderev_t *noderev,
                      const svn_fs_x__id_t *copy_id,
                      svn_fs_x__txn_id_t txn_id,
                      apr_pool_t *scratch_pool)
{
  /* Get a new node-id for this node. */
  FUNC0(FUNC2(&noderev->node_id, fs, txn_id, scratch_pool));

  /* Assign copy-id. */
  noderev->copy_id = *copy_id;

  /* Noderev-id = Change set and item number within this change set. */
  noderev->noderev_id.change_set = FUNC3(txn_id);
  FUNC0(FUNC1(&noderev->noderev_id.number, fs, txn_id,
                              scratch_pool));

  FUNC0(FUNC4(fs, noderev, scratch_pool));

  return SVN_NO_ERROR;
}