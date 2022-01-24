#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_13__ {TYPE_6__* parent; int /*<<< orphan*/  entry; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ svn_fs_x__dag_path_t ;
struct TYPE_14__ {int txn_flags; int /*<<< orphan*/  fs; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
struct TYPE_15__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ROOT_DIR ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_delete ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_6__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_fs_root_t *root,
              const char *path,
              apr_pool_t *scratch_pool)
{
  svn_fs_x__dag_path_t *dag_path;
  svn_fs_x__txn_id_t txn_id;
  apr_int64_t mergeinfo_count = 0;
  svn_node_kind_t kind;
  apr_pool_t *subpool = FUNC15(scratch_pool);

  if (! root->is_txn_root)
    return FUNC1(root);

  txn_id = FUNC14(root);
  FUNC0(FUNC11(&dag_path, root, path, 0, TRUE, subpool,
                                 subpool));
  kind = FUNC10(dag_path->node);

  /* We can't remove the root of the filesystem.  */
  if (! dag_path->parent)
    return FUNC6(SVN_ERR_FS_ROOT_DIR, NULL,
                            FUNC2("The root directory cannot be deleted"));

  /* Check to see if path (or any child thereof) is locked; if so,
     check that we can use the existing lock(s). */
  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC7(path, root->fs, TRUE, FALSE,
                                             subpool));

  /* Make the parent directory mutable, and do the deletion.  */
  FUNC0(FUNC13(root, dag_path->parent, path, subpool,
                                      subpool));
  mergeinfo_count = FUNC9(dag_path->node);
  FUNC0(FUNC8(dag_path->parent->node,
                               dag_path->entry,
                               txn_id, subpool));

  /* Remove this node and any children from the path cache. */
  FUNC12(root, FUNC5(dag_path, subpool));

  /* Update mergeinfo counts for parents */
  if (mergeinfo_count > 0)
    FUNC0(FUNC4(dag_path->parent,
                                        -mergeinfo_count,
                                        subpool));

  /* Make a record of this modification in the changes table. */
  FUNC0(FUNC3(root->fs, txn_id, path,
                     svn_fs_path_change_delete, FALSE, FALSE, FALSE, kind,
                     SVN_INVALID_REVNUM, NULL, subpool));

  FUNC16(subpool);
  return SVN_NO_ERROR;
}