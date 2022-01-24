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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/ * predecessor_id; scalar_t__ edit_key; scalar_t__ data_key; scalar_t__ prop_key; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                             const svn_fs_id_t *id,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  dag_node_t *node;
  node_revision_t *noderev;

  /* Fetch the node. */
  FUNC0(FUNC4(&node, fs, id, trail, pool));

  /* If immutable, do nothing and return immediately. */
  if (! FUNC3(node, txn_id))
    return FUNC2(SVN_ERR_FS_NOT_MUTABLE, NULL,
                             FUNC1("Attempted removal of immutable node"));

  /* Get a fresh node-revision. */
  FUNC0(FUNC7(&noderev, fs, id, trail, pool));

  /* Delete any mutable property representation. */
  if (noderev->prop_key)
    FUNC0(FUNC6(fs, noderev->prop_key,
                                               txn_id, trail, pool));

  /* Delete any mutable data representation. */
  if (noderev->data_key)
    FUNC0(FUNC6(fs, noderev->data_key,
                                               txn_id, trail, pool));

  /* Delete any mutable edit representation (files only). */
  if (noderev->edit_key)
    FUNC0(FUNC6(fs, noderev->edit_key,
                                               txn_id, trail, pool));

  /* Delete the node revision itself. */
  return FUNC5(fs, id,
                                           noderev->predecessor_id == NULL,
                                           trail, pool);
}