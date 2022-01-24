#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_8__ {scalar_t__ kind; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_ENTRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(dag_node_t *parent,
                      const char *name,
                      const svn_fs_fs__id_part_t *txn_id,
                      apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  svn_fs_t *fs = parent->fs;
  svn_fs_dirent_t *dirent;
  svn_fs_id_t *id;
  apr_pool_t *subpool;

  /* Make sure parent is a directory. */
  if (parent->kind != svn_node_dir)
    return FUNC2
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       "Attempted to delete entry '%s' from *non*-directory node", name);

  /* Make sure parent is mutable. */
  if (! FUNC3(parent))
    return FUNC2
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       "Attempted to delete entry '%s' from immutable directory node", name);

  /* Make sure that NAME is a single path component. */
  if (! FUNC8(name))
    return FUNC2
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, NULL,
       "Attempted to delete a node with an illegal name '%s'", name);

  /* Get a fresh NODE-REVISION for the parent node. */
  FUNC0(FUNC1(&parent_noderev, parent));

  subpool = FUNC9(pool);

  /* Search this directory for a dirent with that NAME. */
  FUNC0(FUNC6(&dirent, fs, parent_noderev,
                                            name, subpool, subpool));

  /* If we never found ID in ENTRIES (perhaps because there are no
     ENTRIES, perhaps because ID just isn't in the existing ENTRIES
     ... it doesn't matter), return an error.  */
  if (! dirent)
    return FUNC2
      (SVN_ERR_FS_NO_SUCH_ENTRY, NULL,
       "Delete failed--directory has no entry '%s'", name);

  /* Copy the ID out of the subpool and release the rest of the
     directory listing. */
  id = FUNC5(dirent->id, pool);
  FUNC10(subpool);

  /* If mutable, remove it and any mutable children from db. */
  FUNC0(FUNC4(parent->fs, id, pool));

  /* Remove this entry from its parent's entries list. */
  return FUNC7(parent->fs, txn_id, parent_noderev, name,
                              NULL, svn_node_unknown, pool);
}