#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_20__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_21__ {int /*<<< orphan*/  resolution_tree; } ;
typedef  TYPE_3__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_tree ; 
 TYPE_1__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_client_conflict_option_t *option,
                               svn_client_conflict_t *conflict,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  const char *local_abspath;
  const char *parent_abspath;
  const char *lock_abspath;
  svn_error_t *err;

  option_id = FUNC3(option);
  local_abspath = FUNC2(conflict);

  /* Deleting a node requires a lock on the node's parent. */
  parent_abspath = FUNC4(local_abspath, scratch_pool);
  FUNC0(FUNC7(&lock_abspath, ctx->wc_ctx,
                                                 parent_abspath,
                                                 scratch_pool, scratch_pool));

  err = FUNC12(conflict, option, ctx,
                                               scratch_pool);
  if (err)
    goto unlock_wc;

  /* Delete the tree conflict victim. Marks the conflict resolved. */
  err = FUNC11(ctx->wc_ctx, local_abspath, FALSE, FALSE,
                       NULL, NULL, /* don't allow user to cancel here */
                       ctx->notify_func2, ctx->notify_baton2,
                       scratch_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          /* Not a versioned path. This can happen if the victim has already
           * been deleted in our branche's history, for example. Either way,
           * the item is gone, which is what we want, so don't treat this as
           * a fatal error. */
          FUNC5(err);

          /* Resolve to current working copy state. */
          err = FUNC8(ctx->wc_ctx, local_abspath,
                                          scratch_pool);
        }

      if (err)
        goto unlock_wc;
    }

  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      FUNC10(local_abspath,
                                           svn_wc_notify_resolved_tree,
                                           scratch_pool),
                      scratch_pool);

unlock_wc:
  err = FUNC6(err, FUNC9(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC0(err);

  conflict->resolution_tree = option_id;

  return SVN_NO_ERROR;
}