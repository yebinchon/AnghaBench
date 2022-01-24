#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_added 134 
#define  svn_wc__db_status_deleted 133 
#define  svn_wc__db_status_excluded 132 
#define  svn_wc__db_status_incomplete 131 
#define  svn_wc__db_status_normal 130 
#define  svn_wc__db_status_not_present 129 
#define  svn_wc__db_status_server_excluded 128 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_exclude ; 

svn_error_t *
FUNC11(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  svn_boolean_t is_root, is_switched;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_revnum_t revision;
  svn_depth_t depth;
  svn_boolean_t modified, all_deletes;
  const char *repos_relpath, *repos_root, *repos_uuid;

  FUNC0(FUNC6(&is_root, &is_switched, NULL,
                                 wc_ctx->db, local_abspath, scratch_pool));

  if (is_root)
    {
       return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                FUNC1("Cannot exclude '%s': "
                                  "it is a working copy root"),
                                FUNC3(local_abspath,
                                                       scratch_pool));
    }
  if (is_switched)
    {
      return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                               FUNC1("Cannot exclude '%s': "
                                 "it is a switched path"),
                               FUNC3(local_abspath,
                                                      scratch_pool));
    }

  FUNC0(FUNC7(&status, &kind, &revision, &repos_relpath,
                               &repos_root, &repos_uuid, NULL, NULL, NULL,
                               &depth, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL,
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  switch (status)
    {
      case svn_wc__db_status_server_excluded:
      case svn_wc__db_status_excluded:
      case svn_wc__db_status_not_present:
        return FUNC4(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                 FUNC1("The node '%s' was not found."),
                                 FUNC3(local_abspath,
                                                        scratch_pool));

      case svn_wc__db_status_added:
        /* Would have to check parents if we want to allow this */
        return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                 FUNC1("Cannot exclude '%s': it is to be added "
                                   "to the repository. Try commit instead"),
                                 FUNC3(local_abspath,
                                                        scratch_pool));
      case svn_wc__db_status_deleted:
        /* Would have to check parents if we want to allow this */
        return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                 FUNC1("Cannot exclude '%s': it is to be deleted "
                                   "from the repository. Try commit instead"),
                                 FUNC3(local_abspath,
                                                        scratch_pool));

      case svn_wc__db_status_normal:
      case svn_wc__db_status_incomplete:
      default:
        break; /* Ok to exclude */
    }

  FUNC0(FUNC8(&modified, &all_deletes,
                                      wc_ctx->db, local_abspath, FALSE,
                                      cancel_func, cancel_baton,
                                      scratch_pool));

  if (!modified || all_deletes)
    {
      /* Remove all working copy data below local_abspath */
      FUNC0(FUNC5(wc_ctx->db, local_abspath,
                                     FALSE /* keep_working */,
                                     FALSE, TRUE,
                                     revision,
                                     NULL, NULL,
                                     scratch_pool));

      FUNC0(FUNC9(wc_ctx->db, local_abspath,
                             cancel_func, cancel_baton,
                             scratch_pool));

      if (notify_func)
        {
          svn_wc_notify_t *notify;
          notify = FUNC10(local_abspath,
                                        svn_wc_notify_exclude,
                                        scratch_pool);
          notify_func(notify_baton, notify, scratch_pool);
        }
    }
  else
    {
      /* Do the next best thing: retry below this path */
      FUNC0(FUNC2(wc_ctx->db, local_abspath, depth, svn_depth_empty,
                            notify_func, notify_baton,
                            cancel_func, cancel_baton,
                            scratch_pool));
    }

  return SVN_NO_ERROR;
}