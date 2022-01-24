#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  path; TYPE_3__* root; int /*<<< orphan*/  interpreter_baton; int /*<<< orphan*/  interpreter; int /*<<< orphan*/  pool; int /*<<< orphan*/  target_stream; int /*<<< orphan*/  source_stream; int /*<<< orphan*/  node; TYPE_8__* base_checksum; } ;
typedef  TYPE_1__ txdelta_baton_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_11__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ svn_fs_x__dag_path_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  kind; } ;
struct TYPE_12__ {int txn_flags; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_modify ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(void *baton,
                apr_pool_t *scratch_pool)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  svn_fs_x__dag_path_t *dag_path;
  svn_fs_x__txn_id_t txn_id = FUNC12(tb->root);

  /* Call open_path with no flags, as we want this to return an error
     if the node for which we are searching doesn't exist. */
  FUNC0(FUNC10(&dag_path, tb->root, tb->path, 0, TRUE,
                                 scratch_pool, scratch_pool));

  /* Check (non-recursively) to see if path is locked; if so, check
     that we can use it. */
  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC5(tb->path, tb->root->fs,
                                             FALSE, FALSE, scratch_pool));

  /* Now, make sure this path is mutable. */
  FUNC0(FUNC11(tb->root, dag_path, tb->path,
                                      scratch_pool, scratch_pool));
  tb->node = FUNC6(dag_path->node, tb->pool);

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;

      /* Until we finalize the node, its data_key points to the old
         contents, in other words, the base text. */
      FUNC0(FUNC7(&checksum, tb->node,
                                          tb->base_checksum->kind,
                                          scratch_pool));
      if (!FUNC3(tb->base_checksum, checksum))
        return FUNC4(tb->base_checksum, checksum,
                                         scratch_pool,
                                         FUNC1("Base checksum mismatch on '%s'"),
                                         tb->path);
    }

  /* Make a readable "source" stream out of the current contents of
     ROOT/PATH; obviously, this must done in the context of a db_txn.
     The stream is returned in tb->source_stream. */
  FUNC0(FUNC8(&(tb->source_stream),
                                     tb->node, tb->pool));

  /* Make a writable "target" stream */
  FUNC0(FUNC9(&(tb->target_stream), tb->node,
                                        tb->pool));

  /* Now, create a custom window handler that uses our two streams. */
  FUNC13(tb->source_stream,
                    tb->target_stream,
                    NULL,
                    tb->path,
                    tb->pool,
                    &(tb->interpreter),
                    &(tb->interpreter_baton));

  /* Make a record of this modification in the changes table. */
  return FUNC2(tb->root->fs, txn_id, tb->path,
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, NULL, scratch_pool);
}