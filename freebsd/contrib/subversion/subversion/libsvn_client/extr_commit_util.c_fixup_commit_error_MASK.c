#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* err; scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_17__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_AUTHZ_UNWRITABLE ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_FORBIDDEN_BY_SERVER ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_NO_LOCK_TOKEN ; 
 scalar_t__ SVN_ERR_FS_ALREADY_EXISTS ; 
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 scalar_t__ SVN_ERR_FS_LOCK_OWNER_MISMATCH ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_LOCK_TOKEN ; 
 scalar_t__ SVN_ERR_FS_TXN_OUT_OF_DATE ; 
 scalar_t__ SVN_ERR_RA_DAV_ALREADY_EXISTS ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_FORBIDDEN ; 
 scalar_t__ SVN_ERR_RA_DAV_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_RA_DAV_PRECONDITION_FAILED ; 
 scalar_t__ SVN_ERR_RA_NOT_LOCKED ; 
 int /*<<< orphan*/  SVN_ERR_RA_OUT_OF_DATE ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_UP_TO_DATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_failed_forbidden_by_server ; 
 int /*<<< orphan*/  svn_wc_notify_failed_locked ; 
 int /*<<< orphan*/  svn_wc_notify_failed_out_of_date ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *local_abspath,
                   const char *base_url,
                   const char *path,
                   svn_node_kind_t kind,
                   svn_error_t *err,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  if (err->apr_err == SVN_ERR_FS_NOT_FOUND
      || err->apr_err == SVN_ERR_FS_CONFLICT
      || err->apr_err == SVN_ERR_FS_ALREADY_EXISTS
      || err->apr_err == SVN_ERR_FS_TXN_OUT_OF_DATE
      || err->apr_err == SVN_ERR_RA_DAV_PATH_NOT_FOUND
      || err->apr_err == SVN_ERR_RA_DAV_ALREADY_EXISTS
      || err->apr_err == SVN_ERR_RA_DAV_PRECONDITION_FAILED
      || FUNC6(err, SVN_ERR_RA_OUT_OF_DATE))
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify;

          if (local_abspath)
            notify = FUNC8(local_abspath,
                                          svn_wc_notify_failed_out_of_date,
                                          scratch_pool);
          else
            notify = FUNC9(
                                FUNC7(base_url, path,
                                                            scratch_pool),
                                svn_wc_notify_failed_out_of_date,
                                scratch_pool);

          notify->kind = kind;
          notify->err = err;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }

      return FUNC5(SVN_ERR_WC_NOT_UP_TO_DATE, err,
                               (kind == svn_node_dir
                                 ? FUNC0("Directory '%s' is out of date")
                                 : FUNC0("File '%s' is out of date")),
                               local_abspath
                                  ? FUNC4(local_abspath,
                                                           scratch_pool)
                                  : FUNC7(base_url,
                                                                path,
                                                                scratch_pool));
    }
  else if (FUNC6(err, SVN_ERR_FS_NO_LOCK_TOKEN)
           || err->apr_err == SVN_ERR_FS_LOCK_OWNER_MISMATCH
           || err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN
           || err->apr_err == SVN_ERR_RA_NOT_LOCKED)
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify;

          if (local_abspath)
            notify = FUNC8(local_abspath,
                                          svn_wc_notify_failed_locked,
                                          scratch_pool);
          else
            notify = FUNC9(
                                FUNC7(base_url, path,
                                                            scratch_pool),
                                svn_wc_notify_failed_locked,
                                scratch_pool);

          notify->kind = kind;
          notify->err = err;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }

      return FUNC5(SVN_ERR_CLIENT_NO_LOCK_TOKEN, err,
                   (kind == svn_node_dir
                     ? FUNC0("Directory '%s' is locked in another working copy")
                     : FUNC0("File '%s' is locked in another working copy")),
                   local_abspath
                      ? FUNC4(local_abspath,
                                               scratch_pool)
                      : FUNC7(base_url,
                                                    path,
                                                    scratch_pool));
    }
  else if (FUNC6(err, SVN_ERR_RA_DAV_FORBIDDEN)
           || err->apr_err == SVN_ERR_AUTHZ_UNWRITABLE)
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify;

          if (local_abspath)
            notify = FUNC8(
                                    local_abspath,
                                    svn_wc_notify_failed_forbidden_by_server,
                                    scratch_pool);
          else
            notify = FUNC9(
                                FUNC7(base_url, path,
                                                            scratch_pool),
                                svn_wc_notify_failed_forbidden_by_server,
                                scratch_pool);

          notify->kind = kind;
          notify->err = err;

          ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
        }

      return FUNC5(SVN_ERR_CLIENT_FORBIDDEN_BY_SERVER, err,
                   (kind == svn_node_dir
                     ? FUNC0("Changing directory '%s' is forbidden by the server")
                     : FUNC0("Changing file '%s' is forbidden by the server")),
                   local_abspath
                      ? FUNC4(local_abspath,
                                               scratch_pool)
                      : FUNC7(base_url,
                                                    path,
                                                    scratch_pool));
    }
  else
    return err;
}