#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_13__ {int txn_flags; int /*<<< orphan*/  fs; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  node; TYPE_8__* parent; int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ parent_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
struct TYPE_15__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_ROOT_DIR ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_8__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_delete ; 

__attribute__((used)) static svn_error_t *
FUNC18(svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  parent_path_t *parent_path;
  const svn_fs_fs__id_part_t *txn_id;
  apr_int64_t mergeinfo_count = 0;
  svn_node_kind_t kind;

  if (! root->is_txn_root)
    return FUNC1(root);

  txn_id = FUNC9(root);
  path = FUNC11(path, pool);
  FUNC0(FUNC7(&parent_path, root, path, 0, TRUE, pool));
  kind = FUNC16(parent_path->node);

  /* We can't remove the root of the filesystem.  */
  if (! parent_path->parent)
    return FUNC10(SVN_ERR_FS_ROOT_DIR, NULL,
                            FUNC2("The root directory cannot be deleted"));

  /* Check to see if path (or any child thereof) is locked; if so,
     check that we can use the existing lock(s). */
  if (root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC12(path, root->fs, TRUE, FALSE,
                                              pool));

  /* Make the parent directory mutable, and do the deletion.  */
  FUNC0(FUNC6(root, parent_path->parent, path, pool));
  if (FUNC17(root->fs))
    FUNC0(FUNC15(&mergeinfo_count,
                                               parent_path->node));
  FUNC0(FUNC13(parent_path->parent->node,
                                parent_path->entry,
                                txn_id, pool));

  /* Remove this node and any children from the path cache. */
  FUNC0(FUNC4(root, FUNC8(parent_path, pool),
                                    pool));

  /* Update mergeinfo counts for parents */
  if (mergeinfo_count > 0)
    FUNC0(FUNC5(parent_path->parent,
                                        -mergeinfo_count,
                                        pool));

  /* Make a record of this modification in the changes table. */
  return FUNC3(root->fs, txn_id, path,
                    FUNC14(parent_path->node),
                    svn_fs_path_change_delete, FALSE, FALSE, FALSE, kind,
                    SVN_INVALID_REVNUM, NULL, pool);
}