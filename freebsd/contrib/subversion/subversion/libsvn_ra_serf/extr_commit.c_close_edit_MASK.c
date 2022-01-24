#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int code; } ;
struct TYPE_8__ {char* method; char* path; TYPE_1__ sline; struct TYPE_8__* response_baton; int /*<<< orphan*/  response_handler; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_commit_info_t ;
struct TYPE_9__ {char* activity_url; char* txn_url; scalar_t__ open_batons; int /*<<< orphan*/  session; int /*<<< orphan*/  callback_baton; int /*<<< orphan*/ * (* callback ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  keep_locks; int /*<<< orphan*/  lock_tokens; } ;
typedef  TYPE_3__ commit_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__expect_empty_body ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *edit_baton,
           apr_pool_t *pool)
{
  commit_context_t *ctx = edit_baton;
  const char *merge_target =
    ctx->activity_url ? ctx->activity_url : ctx->txn_url;
  const svn_commit_info_t *commit_info;
  svn_error_t *err = NULL;

  if (ctx->open_batons > 0)
    return FUNC4(
              SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION, NULL,
              FUNC1("Closing editor with directories or files open"));

  /* MERGE our activity */
  FUNC0(FUNC8(&commit_info,
                                 ctx->session,
                                 merge_target,
                                 ctx->lock_tokens,
                                 ctx->keep_locks,
                                 pool, pool));

  ctx->txn_url = NULL; /* If HTTPv2, the txn is now done */

  /* Inform the WC that we did a commit.  */
  if (ctx->callback)
    err = ctx->callback(commit_info, ctx->callback_baton, pool);

  /* If we're using activities, DELETE our completed activity.  */
  if (ctx->activity_url)
    {
      svn_ra_serf__handler_t *handler;

      handler = FUNC7(ctx->session, pool);

      handler->method = "DELETE";
      handler->path = ctx->activity_url;

      handler->response_handler = svn_ra_serf__expect_empty_body;
      handler->response_baton = handler;

      ctx->activity_url = NULL; /* Don't try again in abort_edit() on fail */

      FUNC0(FUNC3(
                  err,
                  FUNC6(handler, pool)));

      if (handler->sline.code != 204)
        return FUNC5(FUNC9(handler));
    }

  FUNC0(err);

  return SVN_NO_ERROR;
}