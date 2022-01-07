
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int prop_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_client__mergeinfo_status (scalar_t__*,int ,char const*,int *) ;
 int svn_depth_empty ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_mergeinfo_to_string (int **,int ,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_merge_record_info ;
 int svn_wc_notify_state_changed ;
 int svn_wc_notify_state_merged ;
 int svn_wc_prop_set4 (int ,char const*,int ,int *,int ,int ,int *,int *,int *,int *,int *,int *) ;

svn_error_t *
svn_client__record_wc_mergeinfo(const char *local_abspath,
                                svn_mergeinfo_t mergeinfo,
                                svn_boolean_t do_notification,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *scratch_pool)
{
  svn_string_t *mergeinfo_str = ((void*)0);
  svn_boolean_t mergeinfo_changes = FALSE;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));


  if (mergeinfo)
    SVN_ERR(svn_mergeinfo_to_string(&mergeinfo_str, mergeinfo, scratch_pool));

  if (do_notification && ctx->notify_func2)
    SVN_ERR(svn_client__mergeinfo_status(&mergeinfo_changes, ctx->wc_ctx,
                                         local_abspath, scratch_pool));




  SVN_ERR(svn_wc_prop_set4(ctx->wc_ctx, local_abspath, SVN_PROP_MERGEINFO,
                           mergeinfo_str, svn_depth_empty,
                           TRUE , ((void*)0),
                           ((void*)0), ((void*)0) ,
                           ((void*)0), ((void*)0) ,
                           scratch_pool));

  if (do_notification && ctx->notify_func2)
    {
      svn_wc_notify_t *notify =
        svn_wc_create_notify(local_abspath,
                             svn_wc_notify_merge_record_info,
                             scratch_pool);
      if (mergeinfo_changes)
        notify->prop_state = svn_wc_notify_state_merged;
      else
        notify->prop_state = svn_wc_notify_state_changed;

      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
