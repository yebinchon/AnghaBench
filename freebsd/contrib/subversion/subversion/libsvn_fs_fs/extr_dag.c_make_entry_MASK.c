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
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_14__ {scalar_t__ kind; int /*<<< orphan*/ * copyfrom_path; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyroot_rev; int /*<<< orphan*/  copyroot_path; int /*<<< orphan*/  created_path; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  new_noderev ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC16(dag_node_t **child_p,
           dag_node_t *parent,
           const char *parent_path,
           const char *name,
           svn_boolean_t is_dir,
           const svn_fs_fs__id_part_t *txn_id,
           apr_pool_t *pool)
{
  const svn_fs_id_t *new_node_id;
  node_revision_t new_noderev, *parent_noderev;

  /* Make sure that NAME is a single path component. */
  if (! FUNC15(name))
    return FUNC7
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       FUNC1("Attempted to create a node with an illegal name '%s'"), name);

  /* Make sure that parent is a directory */
  if (parent->kind != svn_node_dir)
    return FUNC6
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC1("Attempted to create entry in non-directory parent"));

  /* Check that the parent is mutable. */
  if (! FUNC9(parent))
    return FUNC7
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC1("Attempted to clone child of non-mutable node"));

  /* Create the new node's NODE-REVISION */
  FUNC4(&new_noderev, 0, sizeof(new_noderev));
  new_noderev.kind = is_dir ? svn_node_dir : svn_node_file;
  new_noderev.created_path = FUNC14(parent_path, name, pool);

  FUNC0(FUNC3(&parent_noderev, parent));
  new_noderev.copyroot_path = FUNC2(pool,
                                          parent_noderev->copyroot_path);
  new_noderev.copyroot_rev = parent_noderev->copyroot_rev;
  new_noderev.copyfrom_rev = SVN_INVALID_REVNUM;
  new_noderev.copyfrom_path = NULL;

  FUNC0(FUNC8
          (&new_node_id, FUNC10(parent), &new_noderev,
           FUNC13(FUNC11(parent)),
           txn_id, pool));

  /* Create a new dag_node_t for our new node */
  FUNC0(FUNC12(child_p, FUNC10(parent),
                                  new_node_id, pool));

  /* We can safely call set_entry because we already know that
     PARENT is mutable, and we just created CHILD, so we know it has
     no ancestors (therefore, PARENT cannot be an ancestor of CHILD) */
  return FUNC5(parent, name, FUNC11(*child_p),
                   new_noderev.kind, txn_id, pool);
}