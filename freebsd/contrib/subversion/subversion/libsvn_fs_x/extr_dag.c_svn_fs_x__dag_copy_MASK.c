#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_13__ {int /*<<< orphan*/  noderev_id; int /*<<< orphan*/ * copyroot_path; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  created_path; int /*<<< orphan*/  predecessor_count; int /*<<< orphan*/  predecessor_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_14__ {TYPE_11__* node_revision; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC2 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(dag_node_t *to_node,
                   const char *entry,
                   dag_node_t *from_node,
                   svn_boolean_t preserve_history,
                   svn_revnum_t from_rev,
                   const char *from_path,
                   svn_fs_x__txn_id_t txn_id,
                   apr_pool_t *scratch_pool)
{
  const svn_fs_x__id_t *id;

  if (preserve_history)
    {
      svn_fs_x__noderev_t *to_noderev;
      svn_fs_x__id_t copy_id;
      svn_fs_t *fs = FUNC5(from_node);

      /* Make a copy of the original node revision. */
      to_noderev = FUNC2(from_node->node_revision, scratch_pool);

      /* Reserve a copy ID for this new copy. */
      FUNC0(FUNC8(&copy_id, fs, txn_id, scratch_pool));

      /* Create a successor with its predecessor pointing at the copy
         source. */
      to_noderev->predecessor_id = to_noderev->noderev_id;
      to_noderev->predecessor_count++;
      to_noderev->created_path =
        FUNC9(FUNC4(to_node), entry,
                         scratch_pool);
      to_noderev->copyfrom_path = FUNC1(scratch_pool, from_path);
      to_noderev->copyfrom_rev = from_rev;

      /* Set the copyroot equal to our own id. */
      to_noderev->copyroot_path = NULL;

      FUNC0(FUNC3(fs, to_noderev,
                                         &copy_id, txn_id, scratch_pool));
      id = &to_noderev->noderev_id;
    }
  else  /* don't preserve history */
    {
      id = FUNC6(from_node);
    }

  /* Set the entry in to_node to the new id. */
  return FUNC7(to_node, entry, id,
                                 from_node->node_revision->kind,
                                 txn_id, scratch_pool);
}