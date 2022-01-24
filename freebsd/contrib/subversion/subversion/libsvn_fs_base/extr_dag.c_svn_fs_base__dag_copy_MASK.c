#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_11__ {int predecessor_count; int /*<<< orphan*/  created_path; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_kind_real ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(dag_node_t *to_node,
                      const char *entry,
                      dag_node_t *from_node,
                      svn_boolean_t preserve_history,
                      svn_revnum_t from_rev,
                      const char *from_path,
                      const char *txn_id,
                      trail_t *trail,
                      apr_pool_t *pool)
{
  const svn_fs_id_t *id;

  if (preserve_history)
    {
      node_revision_t *noderev;
      const char *copy_id;
      svn_fs_t *fs = FUNC5(from_node);
      const svn_fs_id_t *src_id = FUNC6(from_node);
      const char *from_txn_id = NULL;

      /* Make a copy of the original node revision. */
      FUNC0(FUNC11(&noderev, fs, from_node->id,
                                            trail, pool));

      /* Reserve a copy ID for this new copy. */
      FUNC0(FUNC12(&copy_id, fs, trail, pool));

      /* Create a successor with its predecessor pointing at the copy
         source. */
      noderev->predecessor_id = FUNC8(src_id, pool);
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      noderev->created_path = FUNC13
        (FUNC4(to_node), entry, pool);
      FUNC0(FUNC3(&id, fs, src_id, noderev,
                                            copy_id, txn_id, trail, pool));

      /* Translate FROM_REV into a transaction ID. */
      FUNC0(FUNC9(&from_txn_id, fs, from_rev,
                                          trail, pool));

      /* Now that we've done the copy, we need to add the information
         about the copy to the `copies' table, using the COPY_ID we
         reserved above.  */
      FUNC0(FUNC10
              (fs, copy_id,
               FUNC1(from_path, pool),
               from_txn_id, id, copy_kind_real, trail, pool));

      /* Finally, add the COPY_ID to the transaction's list of copies
         so that, if this transaction is aborted, the `copies' table
         entry we added above will be cleaned up. */
      FUNC0(FUNC2(fs, txn_id, copy_id, trail, pool));
    }
  else  /* don't preserve history */
    {
      id = FUNC6(from_node);
    }

  /* Set the entry in to_node to the new id. */
  return FUNC7(to_node, entry, id, txn_id,
                                    trail, pool);
}