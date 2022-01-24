#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
struct svn_wc__db_info_t {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct svn_wc__db_info_t const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct svn_wc__db_info_t const**,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_wc__db_t *db,
       const char *local_abspath,
       svn_depth_t depth,
       svn_boolean_t use_commit_times,
       svn_boolean_t clear_changelists,
       svn_boolean_t metadata_only,
       svn_cancel_func_t cancel_func,
       void *cancel_baton,
       svn_wc_notify_func2_t notify_func,
       void *notify_baton,
       apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  const struct svn_wc__db_info_t *info = NULL;
  svn_boolean_t run_queue = FALSE;

  FUNC1(depth == svn_depth_empty || depth == svn_depth_infinity);

  /* We should have a write lock on the parent of local_abspath, except
     when local_abspath is the working copy root. */
  {
    const char *dir_abspath;
    svn_boolean_t is_wcroot;

    FUNC0(FUNC7(&is_wcroot, db, local_abspath, scratch_pool));

    if (! is_wcroot)
      dir_abspath = FUNC3(local_abspath, scratch_pool);
    else
      dir_abspath = local_abspath;

    FUNC0(FUNC12(db, dir_abspath, scratch_pool));
  }

  err = FUNC6(
        FUNC8(db, local_abspath, depth, clear_changelists,
                             scratch_pool, scratch_pool));

  if (!err)
    {
      err = FUNC6(
              FUNC9(&info, db, local_abspath, FALSE,
                                          scratch_pool, scratch_pool));

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          FUNC4(err);
          err = NULL;
          info = NULL;
        }
    }

  if (!err)
    err = FUNC6(
              FUNC2(&run_queue, db, local_abspath, depth, metadata_only,
                             use_commit_times, TRUE /* revert root */,
                             info, cancel_func, cancel_baton,
                             notify_func, notify_baton,
                             scratch_pool));

  if (run_queue)
    err = FUNC5(err,
                                   FUNC11(db, local_abspath,
                                                  cancel_func, cancel_baton,
                                                  scratch_pool));

  err = FUNC5(err,
                                 FUNC10(db,
                                                             local_abspath,
                                                             scratch_pool));

  return err;
}