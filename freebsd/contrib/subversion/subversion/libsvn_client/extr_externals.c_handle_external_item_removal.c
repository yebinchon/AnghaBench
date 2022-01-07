
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* err; scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_15__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_LEFT_LOCAL_MOD ;
 scalar_t__ SVN_ERR_WC_NOT_LOCKED ;
 int TRUE ;
 TYPE_2__* remove_external (scalar_t__*,int ,char const*,char const*,scalar_t__,int ,int ,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_wc__read_external_info (scalar_t__*,int *,int *,int *,int *,int ,char const*,char const*,scalar_t__,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_left_local_modifications ;
 int svn_wc_notify_update_external_removed ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
handle_external_item_removal(const svn_client_ctx_t *ctx,
                             const char *defining_abspath,
                             const char *local_abspath,
                             apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_node_kind_t external_kind;
  svn_node_kind_t kind;
  svn_boolean_t removed = FALSE;


  SVN_ERR(svn_wc__read_external_info(&external_kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ctx->wc_ctx, defining_abspath,
                                     local_abspath, FALSE,
                                     scratch_pool, scratch_pool));

  SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, local_abspath, TRUE, FALSE,
                           scratch_pool));

  if (external_kind != kind)
    external_kind = svn_node_none;

  err = remove_external(&removed,
                        ctx->wc_ctx, defining_abspath, local_abspath,
                        external_kind,
                        ctx->cancel_func, ctx->cancel_baton,
                        scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_NOT_LOCKED && removed)
    {
      svn_error_clear(err);
      err = ((void*)0);

    }

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify =
          svn_wc_create_notify(local_abspath,
                               svn_wc_notify_update_external_removed,
                               scratch_pool);

      notify->kind = kind;
      notify->err = err;

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);

      if (err && err->apr_err == SVN_ERR_WC_LEFT_LOCAL_MOD)
        {
          notify = svn_wc_create_notify(local_abspath,
                                      svn_wc_notify_left_local_modifications,
                                      scratch_pool);
          notify->kind = svn_node_dir;
          notify->err = err;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }
    }

  if (err && err->apr_err == SVN_ERR_WC_LEFT_LOCAL_MOD)
    {
      svn_error_clear(err);
      err = ((void*)0);
    }

  return svn_error_trace(err);
}
