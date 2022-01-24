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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int predecessor_count; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(dag_node_t **root_p,
                            svn_fs_t *fs,
                            const char *txn_id,
                            trail_t *trail,
                            apr_pool_t *pool)
{
  const svn_fs_id_t *base_root_id, *root_id;
  node_revision_t *noderev;

  /* Get the node ID's of the root directories of the transaction and
     its base revision.  */
  FUNC0(FUNC3(&root_id, &base_root_id, fs, txn_id,
                                   trail, pool));

  /* Oh, give me a clone...
     (If they're the same, we haven't cloned the transaction's root
     directory yet.)  */
  if (FUNC6(root_id, base_root_id))
    {
      const char *base_copy_id = FUNC5(base_root_id);

      /* Of my own flesh and bone...
         (Get the NODE-REVISION for the base node, and then write
         it back out as the clone.) */
      FUNC0(FUNC8(&noderev, fs, base_root_id,
                                            trail, pool));

      /* With its Y-chromosome changed to X...
         (Store it with an updated predecessor count.) */
      /* ### TODO: Does it even makes sense to have a different copy id for
         the root node?  That is, does this function need a copy_id
         passed in?  */
      noderev->predecessor_id = FUNC4(base_root_id, pool);
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      FUNC0(FUNC1(&root_id, fs, base_root_id,
                                            noderev, base_copy_id,
                                            txn_id, trail, pool));

      /* ... And when it is grown
       *      Then my own little clone
       *        Will be of the opposite sex!
       */
      FUNC0(FUNC7(fs, txn_id, root_id, trail, pool));
    }

  /*
   * (Sung to the tune of "Home, Home on the Range", with thanks to
   * Randall Garrett and Isaac Asimov.)
   */

  /* One way or another, root_id now identifies a cloned root node. */
  return FUNC2(root_p, fs, root_id, trail, pool);
}