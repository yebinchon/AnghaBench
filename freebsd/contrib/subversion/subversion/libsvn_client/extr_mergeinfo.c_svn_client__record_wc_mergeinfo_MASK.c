#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prop_state; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_merge_record_info ; 
 int /*<<< orphan*/  svn_wc_notify_state_changed ; 
 int /*<<< orphan*/  svn_wc_notify_state_merged ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char *local_abspath,
                                svn_mergeinfo_t mergeinfo,
                                svn_boolean_t do_notification,
                                svn_client_ctx_t *ctx,
                                apr_pool_t *scratch_pool)
{
  svn_string_t *mergeinfo_str = NULL;
  svn_boolean_t mergeinfo_changes = FALSE;

  FUNC1(FUNC4(local_abspath));

  /* Convert MERGEINFO (if any) into text for storage as a property value. */
  if (mergeinfo)
    FUNC0(FUNC5(&mergeinfo_str, mergeinfo, scratch_pool));

  if (do_notification && ctx->notify_func2)
    FUNC0(FUNC3(&mergeinfo_changes, ctx->wc_ctx,
                                         local_abspath, scratch_pool));

  /* Record the new mergeinfo in the WC. */
  /* ### Later, we'll want behavior more analogous to
     ### svn_client__get_prop_from_wc(). */
  FUNC0(FUNC7(ctx->wc_ctx, local_abspath, SVN_PROP_MERGEINFO,
                           mergeinfo_str, svn_depth_empty,
                           TRUE /* skip checks */, NULL,
                           NULL, NULL /* cancellation */,
                           NULL, NULL /* notification */,
                           scratch_pool));

  if (do_notification && ctx->notify_func2)
    {
      svn_wc_notify_t *notify =
        FUNC6(local_abspath,
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