
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int notify_baton2; int (* notify_func2 ) (int ,int *,int *) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_12__ {int (* tree_conflict_get_local_details_func ) (TYPE_2__*,TYPE_1__*,int *) ;int (* tree_conflict_get_incoming_details_func ) (TYPE_2__*,TYPE_1__*,int *) ;} ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert_tree_conflict (TYPE_2__*,int *) ;
 int ignore_authz_failures (int ) ;
 int stub1 (int ,int *,int *) ;
 int stub2 (TYPE_2__*,TYPE_1__*,int *) ;
 int stub3 (TYPE_2__*,TYPE_1__*,int *) ;
 int stub4 (int ,int *,int *) ;
 int svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 int * svn_wc_create_notify (int ,int ,int *) ;
 int svn_wc_notify_begin_search_tree_conflict_details ;
 int svn_wc_notify_end_search_tree_conflict_details ;

svn_error_t *
svn_client_conflict_tree_get_details(svn_client_conflict_t *conflict,
                                     svn_client_ctx_t *ctx,
                                     apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_tree_conflict(conflict, scratch_pool));

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      notify = svn_wc_create_notify(
                 svn_client_conflict_get_local_abspath(conflict),
                 svn_wc_notify_begin_search_tree_conflict_details,
                 scratch_pool),
      ctx->notify_func2(ctx->notify_baton2, notify,
                                  scratch_pool);
    }



  if (conflict->tree_conflict_get_incoming_details_func)
    SVN_ERR(ignore_authz_failures(
      conflict->tree_conflict_get_incoming_details_func(conflict, ctx,
                                                        scratch_pool)));


  if (conflict->tree_conflict_get_local_details_func)
    SVN_ERR(ignore_authz_failures(
      conflict->tree_conflict_get_local_details_func(conflict, ctx,
                                                    scratch_pool)));

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      notify = svn_wc_create_notify(
                 svn_client_conflict_get_local_abspath(conflict),
                 svn_wc_notify_end_search_tree_conflict_details,
                 scratch_pool),
      ctx->notify_func2(ctx->notify_baton2, notify,
                                  scratch_pool);
    }

  return SVN_NO_ERROR;
}
