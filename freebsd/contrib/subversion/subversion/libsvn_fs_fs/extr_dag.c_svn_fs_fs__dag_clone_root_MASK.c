#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

svn_error_t *
FUNC5(dag_node_t **root_p,
                          svn_fs_t *fs,
                          const svn_fs_fs__id_part_t *txn_id,
                          apr_pool_t *pool)
{
  const svn_fs_id_t *base_root_id, *root_id;

  /* Get the node ID's of the root directories of the transaction and
     its base revision.  */
  FUNC0(FUNC3(&root_id, &base_root_id, fs, txn_id, pool));

  /* Oh, give me a clone...
     (If they're the same, we haven't cloned the transaction's root
     directory yet.)  */
  FUNC1(!FUNC4(root_id, base_root_id));

  /*
   * (Sung to the tune of "Home, Home on the Range", with thanks to
   * Randall Garrett and Isaac Asimov.)
   */

  /* One way or another, root_id now identifies a cloned root node. */
  return FUNC2(root_p, fs, root_id, pool);
}