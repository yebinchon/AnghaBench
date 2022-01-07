
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int prop_state; int content_state; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_state_t ;
typedef scalar_t__ svn_wc_merge_outcome_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_open_unique_file3 (int **,char const**,int *,int ,int *,int *) ;
 int svn_node_file ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_merge5 (scalar_t__*,int *,int ,char const*,char const*,char const*,int *,int *,int *,int *,int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ svn_wc_merge_conflict ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_update_update ;
 int svn_wc_prop_list2 (int **,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
merge_added_files(const char *local_abspath,
                  const char *incoming_added_file_abspath,
                  apr_hash_t *incoming_added_file_props,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *scratch_pool)
{
  svn_wc_merge_outcome_t merge_content_outcome;
  svn_wc_notify_state_t merge_props_outcome;
  apr_file_t *empty_file;
  const char *empty_file_abspath;
  apr_array_header_t *propdiffs;
  apr_hash_t *working_props;



  SVN_ERR(svn_io_open_unique_file3(&empty_file, &empty_file_abspath, ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   scratch_pool, scratch_pool));


  SVN_ERR(svn_wc_prop_list2(&working_props, ctx->wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));


  SVN_ERR(svn_prop_diffs(&propdiffs, incoming_added_file_props,
                         working_props, scratch_pool));


  SVN_ERR(svn_wc_merge5(&merge_content_outcome, &merge_props_outcome,
                        ctx->wc_ctx, empty_file_abspath,
                        incoming_added_file_abspath, local_abspath,
                        ((void*)0), ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0),
                        FALSE,
                        ((void*)0), ((void*)0),
                        ((void*)0), propdiffs,
                        ((void*)0), ((void*)0),
                        ((void*)0), ((void*)0),
                        scratch_pool));

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(
                                   local_abspath,
                                   svn_wc_notify_update_update,
                                   scratch_pool);

      if (merge_content_outcome == svn_wc_merge_conflict)
        notify->content_state = svn_wc_notify_state_conflicted;
      else
        notify->content_state = svn_wc_notify_state_merged;
      notify->prop_state = merge_props_outcome;
      notify->kind = svn_node_file;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
