#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int txn_flags; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int /*<<< orphan*/  entry; struct TYPE_13__* parent; scalar_t__ node; } ;
typedef  TYPE_2__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_path_last_optional ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_path_change_add ; 
 int /*<<< orphan*/  svn_node_file ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_fs_root_t *root,
             const char *path,
             apr_pool_t *pool)
{
  parent_path_t *parent_path;
  dag_node_t *child;
  const svn_fs_fs__id_part_t *txn_id = FUNC8(root);

  FUNC0(FUNC3(path, pool));

  path = FUNC9(path, pool);
  FUNC0(FUNC6(&parent_path, root, path, open_path_last_optional,
                    TRUE, pool));

  /* If there's already a file by that name, complain.
     This also catches the case of trying to make a file named `/'.  */
  if (parent_path->node)
    return FUNC1(root, path);

  /* Check (non-recursively) to see if path is locked;  if so, check
     that we can use it. */
  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC10(path, root->fs, FALSE, FALSE,
                                              pool));

  /* Create the file.  */
  FUNC0(FUNC5(root, parent_path->parent, path, pool));
  FUNC0(FUNC12(&child,
                                   parent_path->parent->node,
                                   FUNC7(parent_path->parent,
                                                    pool),
                                   parent_path->entry,
                                   txn_id,
                                   pool));

  /* Add this file to the path cache. */
  FUNC0(FUNC4(root, FUNC7(parent_path, pool), child,
                             pool));

  /* Make a record of this modification in the changes table. */
  return FUNC2(root->fs, txn_id, path, FUNC11(child),
                    svn_fs_path_change_add, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, NULL, pool);
}