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
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  created_path; scalar_t__ kind; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  new_noderev ;
struct TYPE_14__ {scalar_t__ kind; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ALREADY_EXISTS ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC15(dag_node_t **child_p,
           dag_node_t *parent,
           const char *parent_path,
           const char *name,
           svn_boolean_t is_dir,
           const char *txn_id,
           trail_t *trail,
           apr_pool_t *pool)
{
  const svn_fs_id_t *new_node_id;
  node_revision_t new_noderev;

  /* Make sure that NAME is a single path component. */
  if (! FUNC14(name))
    return FUNC6
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       FUNC1("Attempted to create a node with an illegal name '%s'"), name);

  /* Make sure that parent is a directory */
  if (parent->kind != svn_node_dir)
    return FUNC5
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC1("Attempted to create entry in non-directory parent"));

  /* Check that the parent is mutable. */
  if (! FUNC8(parent, txn_id))
    return FUNC6
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       FUNC1("Attempted to clone child of non-mutable node"));

  /* Check that parent does not already have an entry named NAME. */
  FUNC0(FUNC2(&new_node_id, parent, name, trail, pool));
  if (new_node_id)
    return FUNC6
      (SVN_ERR_FS_ALREADY_EXISTS, NULL,
       FUNC1("Attempted to create entry that already exists"));

  /* Create the new node's NODE-REVISION */
  FUNC3(&new_noderev, 0, sizeof(new_noderev));
  new_noderev.kind = is_dir ? svn_node_dir : svn_node_file;
  new_noderev.created_path = FUNC13(parent_path, name, pool);
  FUNC0(FUNC7
          (&new_node_id, FUNC9(parent), &new_noderev,
           FUNC12(FUNC10(parent)),
           txn_id, trail, pool));

  /* Create a new dag_node_t for our new node */
  FUNC0(FUNC11(child_p,
                                    FUNC9(parent),
                                    new_node_id, trail, pool));

  /* We can safely call set_entry because we already know that
     PARENT is mutable, and we just created CHILD, so we know it has
     no ancestors (therefore, PARENT cannot be an ancestor of CHILD) */
  return FUNC4(parent, name, FUNC10(*child_p),
                   txn_id, trail, pool);
}