#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_11__ {int /*<<< orphan*/  entry; TYPE_6__* parent; scalar_t__ node; } ;
typedef  TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_12__ {int txn_flags; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_path_change_add ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_x__dag_path_last_optional ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_6__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_root_t *root,
            const char *path,
            apr_pool_t *scratch_pool)
{
  svn_fs_x__dag_path_t *dag_path;
  dag_node_t *child;
  svn_fs_x__txn_id_t txn_id = FUNC8(root);
  apr_pool_t *subpool = FUNC10(scratch_pool);

  FUNC0(FUNC6(&dag_path, root, path,
                                 svn_fs_x__dag_path_last_optional,
                                 TRUE, subpool, subpool));

  /* If there's already a file by that name, complain.
     This also catches the case of trying to make a file named `/'.  */
  if (dag_path->node)
    return FUNC1(root, path);

  /* Check (non-recursively) to see if path is locked;  if so, check
     that we can use it. */
  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC4(path, root->fs, FALSE, FALSE,
                                             subpool));

  /* Create the file.  */
  FUNC0(FUNC7(root, dag_path->parent, path, subpool,
                                      subpool));
  FUNC0(FUNC5(&child,
                                  dag_path->parent->node,
                                  FUNC3(dag_path->parent,
                                                   subpool),
                                  dag_path->entry,
                                  txn_id,
                                  subpool, subpool));

  /* Add this file to the path cache. */
  FUNC9(child);

  /* Make a record of this modification in the changes table. */
  FUNC0(FUNC2(root->fs, txn_id, path,
                     svn_fs_path_change_add, TRUE, FALSE, FALSE,
                     svn_node_file, SVN_INVALID_REVNUM, NULL, subpool));

  FUNC11(subpool);
  return SVN_NO_ERROR;
}