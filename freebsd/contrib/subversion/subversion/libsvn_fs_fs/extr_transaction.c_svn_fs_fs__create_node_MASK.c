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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  const* id; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(const svn_fs_id_t **id_p,
                       svn_fs_t *fs,
                       node_revision_t *noderev,
                       const svn_fs_fs__id_part_t *copy_id,
                       const svn_fs_fs__id_part_t *txn_id,
                       apr_pool_t *pool)
{
  svn_fs_fs__id_part_t node_id;
  const svn_fs_id_t *id;

  /* Get a new node-id for this node. */
  FUNC0(FUNC1(&node_id, fs, txn_id, pool));

  id = FUNC2(&node_id, copy_id, txn_id, pool);

  noderev->id = id;

  FUNC0(FUNC3(fs, noderev->id, noderev, FALSE, pool));

  *id_p = id;

  return SVN_NO_ERROR;
}