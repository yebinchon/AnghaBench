
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_string_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef scalar_t__ svn_filesize_t ;
struct TYPE_12__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_13__ {scalar_t__ filetype; scalar_t__ size; scalar_t__ mtime; } ;
typedef TYPE_2__ apr_finfo_t ;


 scalar_t__ APR_DIR ;
 int APR_FINFO_LINK ;
 int APR_FINFO_MTIME ;
 int APR_FINFO_SIZE ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_LNK ;
 int APR_OS_DEFAULT ;
 scalar_t__ APR_REG ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_NEEDS_LOCK ;
 int SVN_PROP_SPECIAL ;
 int SVN__APR_FINFO_EXECUTABLE ;
 int SVN__APR_FINFO_READONLY ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (int ) ;
 int TRUE ;
 int revert_restore_handle_copied_dirs (int*,int *,char const*,int,int ,void*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_io__is_finfo_executable (int*,TYPE_2__*,int *) ;
 int svn_io__is_finfo_read_only (int*,TYPE_2__*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_remove_dir2 (char const*,int,int ,void*,int *) ;
 int svn_io_remove_file2 (char const*,int,int *) ;
 int svn_io_set_file_executable (char const*,int,int,int *) ;
 int svn_io_set_file_read_only (char const*,int,int *) ;
 int svn_io_set_file_read_write (char const*,int,int *) ;
 TYPE_1__* svn_io_stat (TYPE_2__*,char const*,int,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int svn_wc__db_wq_add (int *,char const*,int *,int *) ;
 int svn_wc__internal_file_modified_p (int*,int *,char const*,int,int *) ;
 int svn_wc__wq_build_file_install (int **,int *,char const*,int *,int,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
revert_wc_data(svn_boolean_t *run_wq,
               svn_boolean_t *notify_required,
               svn_wc__db_t *db,
               const char *local_abspath,
               svn_wc__db_status_t status,
               svn_node_kind_t kind,
               svn_node_kind_t reverted_kind,
               svn_filesize_t recorded_size,
               apr_time_t recorded_time,
               svn_boolean_t copied_here,
               svn_boolean_t use_commit_times,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_finfo_t finfo;
  svn_node_kind_t on_disk;







  err = svn_io_stat(&finfo, local_abspath,
                    APR_FINFO_TYPE | APR_FINFO_LINK
                    | APR_FINFO_SIZE | APR_FINFO_MTIME
                    | SVN__APR_FINFO_EXECUTABLE
                    | SVN__APR_FINFO_READONLY,
                    scratch_pool);

  if (err && (APR_STATUS_IS_ENOENT(err->apr_err)
              || SVN__APR_STATUS_IS_ENOTDIR(err->apr_err)))
    {
      svn_error_clear(err);
      on_disk = svn_node_none;



    }
  else if (!err)
    {
      if (finfo.filetype == APR_REG || finfo.filetype == APR_LNK)
        on_disk = svn_node_file;
      else if (finfo.filetype == APR_DIR)
        on_disk = svn_node_dir;
      else
        on_disk = svn_node_unknown;




    }
  else
    return svn_error_trace(err);

  if (copied_here)
    {

      if (reverted_kind == svn_node_file && on_disk == svn_node_file)
        {
          SVN_ERR(svn_io_remove_file2(local_abspath, TRUE, scratch_pool));
          on_disk = svn_node_none;
        }
      else if (reverted_kind == svn_node_dir && on_disk == svn_node_dir)
        {
          svn_boolean_t removed;

          SVN_ERR(revert_restore_handle_copied_dirs(&removed, db,
                                                    local_abspath, TRUE,
                                                    cancel_func, cancel_baton,
                                                    scratch_pool));
          if (removed)
            on_disk = svn_node_none;
        }
    }




  if (on_disk != svn_node_none
      && status != svn_wc__db_status_server_excluded
      && status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_excluded
      && status != svn_wc__db_status_not_present)
    {
      if (on_disk == svn_node_dir && kind != svn_node_dir)
        {
          SVN_ERR(svn_io_remove_dir2(local_abspath, FALSE,
                                     cancel_func, cancel_baton, scratch_pool));
          on_disk = svn_node_none;
        }
      else if (on_disk == svn_node_file && kind != svn_node_file)
        {





            {
              SVN_ERR(svn_io_remove_file2(local_abspath, FALSE, scratch_pool));
              on_disk = svn_node_none;
            }
        }
      else if (on_disk == svn_node_file)
        {
          svn_boolean_t modified;
          apr_hash_t *props;




          SVN_ERR(svn_wc__db_read_pristine_props(&props, db, local_abspath,
                                                 scratch_pool, scratch_pool));
            {
              if (recorded_size != SVN_INVALID_FILESIZE
                  && recorded_time != 0
                  && recorded_size == finfo.size
                  && recorded_time == finfo.mtime)
                {
                  modified = FALSE;
                }
              else

                SVN_ERR(svn_wc__internal_file_modified_p(&modified,
                                                         db, local_abspath,
                                                         TRUE, scratch_pool));

              if (modified)
                {

                  on_disk = svn_node_none;
                }
              else
                {
                  if (status == svn_wc__db_status_normal)
                    {
                      svn_boolean_t read_only;
                      svn_string_t *needs_lock_prop;

                      SVN_ERR(svn_io__is_finfo_read_only(&read_only, &finfo,
                                                         scratch_pool));

                      needs_lock_prop = svn_hash_gets(props,
                                                      SVN_PROP_NEEDS_LOCK);
                      if (needs_lock_prop && !read_only)
                        {
                          SVN_ERR(svn_io_set_file_read_only(local_abspath,
                                                            FALSE,
                                                            scratch_pool));
                          *notify_required = TRUE;
                        }
                      else if (!needs_lock_prop && read_only)
                        {
                          SVN_ERR(svn_io_set_file_read_write(local_abspath,
                                                             FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                    }





                    {
                      svn_boolean_t executable;
                      svn_string_t *executable_prop;

                      SVN_ERR(svn_io__is_finfo_executable(&executable, &finfo,
                                                          scratch_pool));
                      executable_prop = svn_hash_gets(props,
                                                      SVN_PROP_EXECUTABLE);
                      if (executable_prop && !executable)
                        {
                          SVN_ERR(svn_io_set_file_executable(local_abspath,
                                                             TRUE, FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                      else if (!executable_prop && executable)
                        {
                          SVN_ERR(svn_io_set_file_executable(local_abspath,
                                                             FALSE, FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                    }

                }
            }
        }
    }



  if (on_disk == svn_node_none
      && status != svn_wc__db_status_server_excluded
      && status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_excluded
      && status != svn_wc__db_status_not_present)
    {
      if (kind == svn_node_dir)
        SVN_ERR(svn_io_dir_make(local_abspath, APR_OS_DEFAULT, scratch_pool));

      if (kind == svn_node_file)
        {
          svn_skel_t *work_item;

          SVN_ERR(svn_wc__wq_build_file_install(&work_item, db, local_abspath,
                                                ((void*)0), use_commit_times, TRUE,
                                                scratch_pool, scratch_pool));
          SVN_ERR(svn_wc__db_wq_add(db, local_abspath, work_item,
                                    scratch_pool));
          *run_wq = TRUE;
        }
      *notify_required = TRUE;
    }

  return SVN_NO_ERROR;
}
