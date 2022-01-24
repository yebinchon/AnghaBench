#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_16__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 TYPE_2__* FUNC8 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int*,scalar_t__*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc__db_status_excluded 129 
 int svn_wc__db_status_normal ; 
#define  svn_wc__db_status_not_present 128 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_boolean_t keep_local,
               svn_boolean_t delete_unversioned_target,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = scratch_pool;
  svn_wc__db_t *db = wc_ctx->db;
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_boolean_t conflicted;
  svn_skel_t *work_items = NULL;
  const char *repos_relpath;

  err = FUNC10(&status, &kind, NULL, &repos_relpath, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                             NULL, NULL, NULL, NULL, NULL, NULL, &conflicted,
                             NULL, NULL, NULL, NULL, NULL, NULL,
                             db, local_abspath, pool, pool);

  if (delete_unversioned_target &&
      err != NULL && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      FUNC6(err);

      if (!keep_local)
        FUNC0(FUNC3(local_abspath, FALSE,
                                          cancel_func, cancel_baton,
                                          pool));
      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  switch (status)
    {
      /* svn_wc__db_status_server_excluded handled by svn_wc__db_op_delete */
      case svn_wc__db_status_excluded:
      case svn_wc__db_status_not_present:
        return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                 FUNC1("'%s' cannot be deleted"),
                                 FUNC5(local_abspath, pool));

      /* Explicitly ignore other statii */
      default:
        break;
    }

  if (status == svn_wc__db_status_normal
      && kind == svn_node_dir)
    {
      svn_boolean_t is_wcroot;
      FUNC0(FUNC8(&is_wcroot, db, local_abspath, pool));

      if (is_wcroot)
        return FUNC7(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                                 FUNC1("'%s' is the root of a working copy and "
                                   "cannot be deleted"),
                                 FUNC5(local_abspath, pool));
    }
  if (repos_relpath && !repos_relpath[0])
    return FUNC7(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                             FUNC1("'%s' represents the repository root "
                               "and cannot be deleted"),
                               FUNC5(local_abspath, pool));

  /* Verify if we have a write lock on the parent of this node as we might
     be changing the childlist of that directory. */
  FUNC0(FUNC12(db, FUNC4(local_abspath, pool),
                              pool));

  /* Prepare the on-disk delete */
      if (!keep_local)
        {
          FUNC0(FUNC2(&work_items, db, local_abspath, kind,
                                         conflicted,
                                         scratch_pool, scratch_pool));
        }

  FUNC0(FUNC9(db, local_abspath,
                               NULL /*moved_to_abspath */,
                               !keep_local /* delete_dir_externals */,
                               NULL, work_items,
                               cancel_func, cancel_baton,
                               notify_func, notify_baton,
                               pool));

  if (work_items)
    FUNC0(FUNC11(db, local_abspath, cancel_func, cancel_baton,
                           scratch_pool));

  return SVN_NO_ERROR;
}