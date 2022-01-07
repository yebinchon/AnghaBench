
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char const* prop_name; int hunk_fuzz; int hunk_matched_line; int hunk_modified_length; int hunk_modified_start; int hunk_original_length; int hunk_original_start; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_wc_notify_action_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_12__ {scalar_t__ local_relpath; scalar_t__ local_abspath; } ;
typedef TYPE_3__ patch_target_t ;
struct TYPE_13__ {int report_fuzz; int matched_line; int hunk; scalar_t__ rejected; scalar_t__ already_applied; } ;
typedef TYPE_4__ hunk_info_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_diff_hunk_get_modified_length (int ) ;
 int svn_diff_hunk_get_modified_start (int ) ;
 int svn_diff_hunk_get_original_length (int ) ;
 int svn_diff_hunk_get_original_start (int ) ;
 TYPE_1__* svn_wc_create_notify (scalar_t__,int ,int *) ;
 int svn_wc_notify_patch_applied_hunk ;
 int svn_wc_notify_patch_hunk_already_applied ;
 int svn_wc_notify_patch_rejected_hunk ;

__attribute__((used)) static svn_error_t *
send_hunk_notification(const hunk_info_t *hi,
                       const patch_target_t *target,
                       const char *prop_name,
                       const svn_client_ctx_t *ctx,
                       apr_pool_t *pool)
{
  svn_wc_notify_t *notify;
  svn_wc_notify_action_t action;

  if (hi->already_applied)
    action = svn_wc_notify_patch_hunk_already_applied;
  else if (hi->rejected)
    action = svn_wc_notify_patch_rejected_hunk;
  else
    action = svn_wc_notify_patch_applied_hunk;

  notify = svn_wc_create_notify(target->local_abspath
                                    ? target->local_abspath
                                    : target->local_relpath,
                                action, pool);
  notify->hunk_original_start =
    svn_diff_hunk_get_original_start(hi->hunk);
  notify->hunk_original_length =
    svn_diff_hunk_get_original_length(hi->hunk);
  notify->hunk_modified_start =
    svn_diff_hunk_get_modified_start(hi->hunk);
  notify->hunk_modified_length =
    svn_diff_hunk_get_modified_length(hi->hunk);
  notify->hunk_matched_line = hi->matched_line;
  notify->hunk_fuzz = hi->report_fuzz;
  notify->prop_name = prop_name;

  ctx->notify_func2(ctx->notify_baton2, notify, pool);

  return SVN_NO_ERROR;
}
