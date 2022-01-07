
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int prop_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int TRUE ;
 int should_elide_mergeinfo (scalar_t__*,int ,int ,int *,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int svn_depth_empty ;
 int svn_dirent_is_absolute (char const*) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_merge_elide_info ;
 int svn_wc_notify_state_changed ;
 int svn_wc_notify_update_update ;
 int svn_wc_prop_set4 (int ,char const*,int ,int *,int ,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
elide_mergeinfo(svn_mergeinfo_t parent_mergeinfo,
                svn_mergeinfo_t child_mergeinfo,
                const char *local_abspath,
                svn_client_ctx_t *ctx,
                apr_pool_t *scratch_pool)
{
  svn_boolean_t elides;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(should_elide_mergeinfo(&elides,
                                 parent_mergeinfo, child_mergeinfo, ((void*)0),
                                 scratch_pool));

  if (elides)
    {
      SVN_ERR(svn_wc_prop_set4(ctx->wc_ctx, local_abspath, SVN_PROP_MERGEINFO,
                               ((void*)0), svn_depth_empty, TRUE, ((void*)0),
                               ((void*)0), ((void*)0) ,
                               ((void*)0), ((void*)0) ,
                               scratch_pool));

      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify;

          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_merge_elide_info,
                                        scratch_pool);
          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);

          notify = svn_wc_create_notify(local_abspath,
                                        svn_wc_notify_update_update,
                                        scratch_pool);
          notify->prop_state = svn_wc_notify_state_changed;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }
    }

  return SVN_NO_ERROR;
}
