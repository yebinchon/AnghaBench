#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_24__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_25__ {int /*<<< orphan*/ * token; } ;
typedef  TYPE_2__ svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_26__ {TYPE_4__* (* finish_report ) (void*,int /*<<< orphan*/ *) ;TYPE_4__* (* link_path ) (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_4__* (* set_path ) (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_4__* (* delete_path ) (void*,char*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_ra_reporter3_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_27__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_4__* SVN_NO_ERROR ; 
 TYPE_4__* FUNC1 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (void*,char*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (void*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_4__* FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            const svn_ra_reporter3_t *reporter,
                            void *report_baton,
                            svn_boolean_t restore_files,
                            svn_boolean_t use_commit_times,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            svn_wc_notify_func2_t notify_func,
                            void *notify_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  svn_error_t *err;
  svn_node_kind_t kind;
  svn_wc__db_lock_t *lock;
  svn_revnum_t revision;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_boolean_t update_root;

  err = FUNC11(NULL, &kind, &revision,
                                 &repos_relpath, &repos_root_url, NULL, NULL,
                                 NULL, NULL, NULL, NULL, NULL, &lock,
                                 NULL, NULL, &update_root,
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

  if (err
      || kind == svn_node_dir
      || !update_root)
    {
      if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC8(err);

      FUNC7(err);

      /* We don't know about this node, so all we have to do is tell
         the reporter that we don't know this node.

         But first we have to start the report by sending some basic
         information for the root. */

      FUNC0(reporter->set_path(report_baton, "", 0, svn_depth_infinity,
                                 FALSE, NULL, scratch_pool));
      FUNC0(reporter->delete_path(report_baton, "", scratch_pool));

      /* Finish the report, which causes the update editor to be
         driven. */
      FUNC0(reporter->finish_report(report_baton, scratch_pool));

      return SVN_NO_ERROR;
    }
  else
    {
      if (restore_files)
        {
          svn_node_kind_t disk_kind;
          FUNC0(FUNC9(local_abspath, &disk_kind, scratch_pool));

          if (disk_kind == svn_node_none)
            {
              err = FUNC12(wc_ctx, local_abspath, use_commit_times,
                                   scratch_pool);

              if (err)
                {
                  if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
                    return FUNC8(err);

                  FUNC7(err);
                }
            }
        }

      /* Report that we know the path */
      FUNC0(reporter->set_path(report_baton, "", revision,
                                 svn_depth_infinity, FALSE, NULL,
                                 scratch_pool));

      /* For compatibility with the normal update editor report we report
         the target as switched.

         ### We can probably report a parent url and unswitched later */
      FUNC0(reporter->link_path(report_baton, "",
                                  FUNC10(repos_root_url,
                                                              repos_relpath,
                                                              scratch_pool),
                                  revision,
                                  svn_depth_infinity,
                                  FALSE /* start_empty*/,
                                  lock ? lock->token : NULL,
                                  scratch_pool));
    }

  return FUNC8(reporter->finish_report(report_baton, scratch_pool));
}