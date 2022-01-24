#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  interpreter_baton; int /*<<< orphan*/  interpreter; int /*<<< orphan*/  pool; int /*<<< orphan*/  path; int /*<<< orphan*/  string_stream; int /*<<< orphan*/  source_stream; int /*<<< orphan*/  target_string; int /*<<< orphan*/  node; int /*<<< orphan*/  target_stream; TYPE_10__* base_checksum; TYPE_13__* root; } ;
typedef  TYPE_1__ txdelta_baton_t ;
struct TYPE_21__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_22__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_3__ parent_path_t ;
struct TYPE_19__ {char* txn; int txn_flags; } ;
struct TYPE_18__ {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_to_string ; 

__attribute__((used)) static svn_error_t *
FUNC14(void *baton, trail_t *trail)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  parent_path_t *parent_path;
  const char *txn_id = tb->root->txn;

  /* Call open_path with no flags, as we want this to return an error
     if the node for which we are searching doesn't exist. */
  FUNC0(FUNC3(&parent_path, tb->root, tb->path, 0, txn_id,
                    trail, trail->pool));

  /* Check to see if path is locked;  if so, check that we can use it. */
  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC6(tb->path, FALSE,
                                                trail, trail->pool));

  /* Now, make sure this path is mutable. */
  FUNC0(FUNC2(tb->root, parent_path, tb->path,
                            trail, trail->pool));
  tb->node = parent_path->node;

  if (tb->base_checksum)
    {
      svn_checksum_t *checksum;

      /* Until we finalize the node, its data_key points to the old
         contents, in other words, the base text. */
      FUNC0(FUNC7(&checksum,
                                             tb->base_checksum->kind,
                                             tb->node, trail, trail->pool));
      /* TODO: This only compares checksums if they are the same kind, but
         we're calculating both SHA1 and MD5 checksums somewhere in
         reps-strings.c.  Could we keep them both around somehow so this
         check could be more comprehensive? */
      if (!FUNC4(tb->base_checksum, checksum))
        return FUNC5(tb->base_checksum, checksum,
                            trail->pool,
                            FUNC1("Base checksum mismatch on '%s'"),
                            tb->path);
    }

  /* Make a readable "source" stream out of the current contents of
     ROOT/PATH; obviously, this must done in the context of a db_txn.
     The stream is returned in tb->source_stream. */
  FUNC0(FUNC8(&(tb->source_stream),
                                        tb->node, trail, tb->pool));

  /* Make a writable "target" stream */
  FUNC0(FUNC9(&(tb->target_stream), tb->node,
                                           txn_id, trail, tb->pool));

  /* Make a writable "string" stream which writes data to
     tb->target_string. */
  tb->target_string = FUNC12(tb->pool);
  tb->string_stream = FUNC10(tb, tb->pool);
  FUNC11(tb->string_stream, write_to_string);

  /* Now, create a custom window handler that uses our two streams. */
  FUNC13(tb->source_stream,
                    tb->string_stream,
                    NULL,
                    tb->path,
                    tb->pool,
                    &(tb->interpreter),
                    &(tb->interpreter_baton));

  return SVN_NO_ERROR;
}