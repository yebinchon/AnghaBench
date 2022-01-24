#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct text_baton_t {int /*<<< orphan*/  stream; int /*<<< orphan*/  pool; int /*<<< orphan*/  node; int /*<<< orphan*/  file_stream; int /*<<< orphan*/  path; TYPE_7__* root; } ;
struct TYPE_13__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ parent_path_t ;
struct TYPE_14__ {char* txn; int txn_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct text_baton_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_stream_closer ; 
 int /*<<< orphan*/  text_stream_writer ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton, trail_t *trail)
{
  struct text_baton_t *tb = baton;
  parent_path_t *parent_path;
  const char *txn_id = tb->root->txn;

  /* Call open_path with no flags, as we want this to return an error
     if the node for which we are searching doesn't exist. */
  FUNC0(FUNC2(&parent_path, tb->root, tb->path, 0, txn_id,
                    trail, trail->pool));

  /* Check to see if path is locked;  if so, check that we can use it. */
  if (tb->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    FUNC0(FUNC3(tb->path, FALSE,
                                                trail, trail->pool));

  /* Now, make sure this path is mutable. */
  FUNC0(FUNC1(tb->root, parent_path, tb->path,
                            trail, trail->pool));
  tb->node = parent_path->node;

  /* Make a writable stream for replacing the file's text. */
  FUNC0(FUNC4(&(tb->file_stream), tb->node,
                                           txn_id, trail, tb->pool));

  /* Create a 'returnable' stream which writes to the file_stream. */
  tb->stream = FUNC5(tb, tb->pool);
  FUNC7(tb->stream, text_stream_writer);
  FUNC6(tb->stream, text_stream_closer);

  return SVN_NO_ERROR;
}