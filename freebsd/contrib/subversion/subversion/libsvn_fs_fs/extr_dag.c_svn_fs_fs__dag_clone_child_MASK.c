#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  created_path; int /*<<< orphan*/  predecessor_count; int /*<<< orphan*/  predecessor_id; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/ * copyfrom_path; int /*<<< orphan*/  copyroot_path; int /*<<< orphan*/  copyroot_rev; } ;
typedef  TYPE_1__ node_revision_t ;
struct TYPE_15__ {int /*<<< orphan*/ * id; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(dag_node_t **child_p,
                           dag_node_t *parent,
                           const char *parent_path,
                           const char *name,
                           const svn_fs_fs__id_part_t *copy_id,
                           const svn_fs_fs__id_part_t *txn_id,
                           svn_boolean_t is_parent_copyroot,
                           apr_pool_t *pool)
{
  dag_node_t *cur_entry; /* parent's current entry named NAME */
  const svn_fs_id_t *new_node_id; /* node id we'll put into NEW_NODE */
  svn_fs_t *fs = FUNC7(parent);
  apr_pool_t *subpool = FUNC13(pool);

  /* First check that the parent is mutable. */
  if (! FUNC6(parent))
    return FUNC4
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       "Attempted to clone child of non-mutable node");

  /* Make sure that NAME is a single path component. */
  if (! FUNC12(name))
    return FUNC4
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       "Attempted to make a child clone with an illegal name '%s'", name);

  /* Find the node named NAME in PARENT's entries list if it exists. */
  FUNC0(FUNC9(&cur_entry, parent, name, pool, subpool));
  if (! cur_entry)
    return FUNC4
      (SVN_ERR_FS_NOT_FOUND, NULL,
       "Attempted to open non-existent child node '%s'", name);

  /* Check for mutability in the node we found.  If it's mutable, we
     don't need to clone it. */
  if (FUNC6(cur_entry))
    {
      /* This has already been cloned */
      new_node_id = cur_entry->id;
    }
  else
    {
      node_revision_t *noderev, *parent_noderev;

      /* Go get a fresh NODE-REVISION for current child node. */
      FUNC0(FUNC2(&noderev, cur_entry));

      if (is_parent_copyroot)
        {
          FUNC0(FUNC2(&parent_noderev, parent));
          noderev->copyroot_rev = parent_noderev->copyroot_rev;
          noderev->copyroot_path = FUNC1(pool,
                                               parent_noderev->copyroot_path);
        }

      noderev->copyfrom_path = NULL;
      noderev->copyfrom_rev = SVN_INVALID_REVNUM;

      noderev->predecessor_id = FUNC10(cur_entry->id, pool);
      noderev->predecessor_count++;
      noderev->created_path = FUNC11(parent_path, name, pool);

      FUNC0(FUNC5(&new_node_id, fs, cur_entry->id,
                                          noderev, copy_id, txn_id, pool));

      /* Replace the ID in the parent's ENTRY list with the ID which
         refers to the mutable clone of this child. */
      FUNC0(FUNC3(parent, name, new_node_id, noderev->kind, txn_id,
                        pool));
    }

  /* Initialize the youngster. */
  FUNC14(subpool);
  return FUNC8(child_p, fs, new_node_id, pool);
}