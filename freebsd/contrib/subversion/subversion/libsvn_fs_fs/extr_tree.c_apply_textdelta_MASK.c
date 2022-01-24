#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  node; int /*<<< orphan*/  path; TYPE_5__* root; int /*<<< orphan*/  interpreter_baton; int /*<<< orphan*/  interpreter; int /*<<< orphan*/  pool; int /*<<< orphan*/  target_stream; int /*<<< orphan*/  source_stream; TYPE_3__* base_checksum; } ;
typedef  TYPE_1__ txdelta_baton_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_11__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ parent_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int txn_flags; int /*<<< orphan*/  fs; } ;
struct TYPE_12__ {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_modify ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(void *baton, apr_pool_t *pool)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  parent_path_t *parent_path;
  const svn_fs_fs__id_part_t *txn_id = FUNC5(tb->root);

  /* Call open_path with no flags, as we want this to return an error
     if the node for which we are searching doesn't exist. */
  FUNC0(FUNC4(&parent_path, tb->root, tb->path, 0, TRUE, pool));

  /* Check (non-recursively) to see if path is locked; if so, check
     that we can use it. */
  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC8(tb->path, tb->root->fs,
                                              FALSE, FALSE, pool));

  /* Now, make sure this path is mutable. */
  FUNC0(FUNC3(tb->root, parent_path, tb->path, pool));
  tb->node = parent_path->node;

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;

      /* Until we finalize the node, its data_key points to the old
         contents, in other words, the base text. */
      FUNC0(FUNC9(&checksum, tb->node,
                                           tb->base_checksum->kind, pool));
      if (!FUNC6(tb->base_checksum, checksum))
        return FUNC7(tb->base_checksum, checksum, pool,
                                         FUNC1("Base checksum mismatch on '%s'"),
                                         tb->path);
    }

  /* Make a readable "source" stream out of the current contents of
     ROOT/PATH; obviously, this must done in the context of a db_txn.
     The stream is returned in tb->source_stream. */
  FUNC0(FUNC10(&(tb->source_stream),
                                      tb->node, tb->pool));

  /* Make a writable "target" stream */
  FUNC0(FUNC11(&(tb->target_stream), tb->node,
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
                    FUNC12(tb->node),
                    svn_fs_path_change_modify, TRUE, FALSE, FALSE,
                    svn_node_file, SVN_INVALID_REVNUM, NULL, pool);
}