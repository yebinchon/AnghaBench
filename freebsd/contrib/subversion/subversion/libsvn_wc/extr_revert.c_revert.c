
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
typedef int svn_wc__db_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_wc__db_info_t {int dummy; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int TRUE ;
 int revert_restore (scalar_t__*,int *,char const*,int ,scalar_t__,scalar_t__,int ,struct svn_wc__db_info_t const*,int ,void*,int ,void*,int *) ;
 int svn_depth_empty ;
 int svn_depth_infinity ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_op_revert (int *,char const*,int ,scalar_t__,int *,int *) ;
 int svn_wc__db_read_single_info (struct svn_wc__db_info_t const**,int *,char const*,scalar_t__,int *,int *) ;
 int svn_wc__db_revert_list_done (int *,char const*,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 int svn_wc__write_check (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
revert(svn_wc__db_t *db,
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
  const struct svn_wc__db_info_t *info = ((void*)0);
  svn_boolean_t run_queue = FALSE;

  SVN_ERR_ASSERT(depth == svn_depth_empty || depth == svn_depth_infinity);



  {
    const char *dir_abspath;
    svn_boolean_t is_wcroot;

    SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot, db, local_abspath, scratch_pool));

    if (! is_wcroot)
      dir_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
    else
      dir_abspath = local_abspath;

    SVN_ERR(svn_wc__write_check(db, dir_abspath, scratch_pool));
  }

  err = svn_error_trace(
        svn_wc__db_op_revert(db, local_abspath, depth, clear_changelists,
                             scratch_pool, scratch_pool));

  if (!err)
    {
      err = svn_error_trace(
              svn_wc__db_read_single_info(&info, db, local_abspath, FALSE,
                                          scratch_pool, scratch_pool));

      if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          err = ((void*)0);
          info = ((void*)0);
        }
    }

  if (!err)
    err = svn_error_trace(
              revert_restore(&run_queue, db, local_abspath, depth, metadata_only,
                             use_commit_times, TRUE ,
                             info, cancel_func, cancel_baton,
                             notify_func, notify_baton,
                             scratch_pool));

  if (run_queue)
    err = svn_error_compose_create(err,
                                   svn_wc__wq_run(db, local_abspath,
                                                  cancel_func, cancel_baton,
                                                  scratch_pool));

  err = svn_error_compose_create(err,
                                 svn_wc__db_revert_list_done(db,
                                                             local_abspath,
                                                             scratch_pool));

  return err;
}
