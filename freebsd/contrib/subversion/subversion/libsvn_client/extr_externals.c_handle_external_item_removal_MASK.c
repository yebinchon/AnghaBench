#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* err; scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_LEFT_LOCAL_MOD ; 
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC1 (scalar_t__*,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_left_local_modifications ; 
 int /*<<< orphan*/  svn_wc_notify_update_external_removed ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const svn_client_ctx_t *ctx,
                             const char *defining_abspath,
                             const char *local_abspath,
                             apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_node_kind_t external_kind;
  svn_node_kind_t kind;
  svn_boolean_t removed = FALSE;

  /* local_abspath should be a wcroot or a file external */
  FUNC0(FUNC6(&external_kind, NULL, NULL, NULL, NULL,
                                     ctx->wc_ctx, defining_abspath,
                                     local_abspath, FALSE,
                                     scratch_pool, scratch_pool));

  FUNC0(FUNC8(&kind, ctx->wc_ctx, local_abspath, TRUE, FALSE,
                           scratch_pool));

  if (external_kind != kind)
    external_kind = svn_node_none; /* Only remove the registration */

  err = FUNC1(&removed,
                        ctx->wc_ctx, defining_abspath, local_abspath,
                        external_kind,
                        ctx->cancel_func, ctx->cancel_baton,
                        scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_NOT_LOCKED && removed)
    {
      FUNC4(err);
      err = NULL; /* We removed the working copy, so we can't release the
                     lock that was stored inside */
    }

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify =
          FUNC7(local_abspath,
                               svn_wc_notify_update_external_removed,
                               scratch_pool);

      notify->kind = kind;
      notify->err = err;

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_LEFT_LOCAL_MOD)
        {
          notify = FUNC7(local_abspath,
                                      svn_wc_notify_left_local_modifications,
                                      scratch_pool);
          notify->kind = svn_node_dir;
          notify->err = err;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }
    }

  if (err && err->apr_err == SVN_ERR_WC_LEFT_LOCAL_MOD)
    {
      FUNC4(err);
      err = NULL;
    }

  return FUNC5(err);
}