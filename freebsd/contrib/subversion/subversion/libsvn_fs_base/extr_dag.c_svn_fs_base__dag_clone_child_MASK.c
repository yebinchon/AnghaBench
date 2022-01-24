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

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int predecessor_count; int /*<<< orphan*/  created_path; int /*<<< orphan*/ * predecessor_id; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_14__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

svn_error_t *
FUNC12(dag_node_t **child_p,
                             dag_node_t *parent,
                             const char *parent_path,
                             const char *name,
                             const char *copy_id,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  dag_node_t *cur_entry; /* parent's current entry named NAME */
  const svn_fs_id_t *new_node_id; /* node id we'll put into NEW_NODE */
  svn_fs_t *fs = FUNC6(parent);

  /* First check that the parent is mutable. */
  if (! FUNC5(parent, txn_id))
    return FUNC3
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC1("Attempted to clone child of non-mutable node"));

  /* Make sure that NAME is a single path component. */
  if (! FUNC11(name))
    return FUNC3
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       FUNC1("Attempted to make a child clone with an illegal name '%s'"), name);

  /* Find the node named NAME in PARENT's entries list if it exists. */
  FUNC0(FUNC8(&cur_entry, parent, name, trail, pool));

  /* Check for mutability in the node we found.  If it's mutable, we
     don't need to clone it. */
  if (FUNC5(cur_entry, txn_id))
    {
      /* This has already been cloned */
      new_node_id = cur_entry->id;
    }
  else
    {
      node_revision_t *noderev;

      /* Go get a fresh NODE-REVISION for current child node. */
      FUNC0(FUNC9(&noderev, fs, cur_entry->id,
                                            trail, pool));

      /* Do the clone thingy here. */
      noderev->predecessor_id = cur_entry->id;
      if (noderev->predecessor_count != -1)
        noderev->predecessor_count++;
      noderev->created_path = FUNC10(parent_path, name, pool);
      FUNC0(FUNC4(&new_node_id, fs, cur_entry->id,
                                            noderev, copy_id, txn_id,
                                            trail, pool));

      /* Replace the ID in the parent's ENTRY list with the ID which
         refers to the mutable clone of this child. */
      FUNC0(FUNC2(parent, name, new_node_id, txn_id, trail, pool));
    }

  /* Initialize the youngster. */
  return FUNC7(child_p, fs, new_node_id, trail, pool);
}