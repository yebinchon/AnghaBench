
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_mutex__t ;
typedef TYPE_1__* (* svn_fs_upgrade_notify_t ) (void*,int ,int ,int *) ;
typedef int svn_fs_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FORMAT_FILE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_FS_BASE__FORMAT_NUMBER ;
 int SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT ;
 int SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ;
 TYPE_1__* SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int ) ;
 TYPE_1__* base_open (int *,char const*,int *,int *,int *) ;
 TYPE_1__* check_format (int) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_fs_base__miscellaneous_set (int *,int ,char const*,int *) ;
 TYPE_1__* svn_fs_base__youngest_rev (int *,int *,int *) ;
 int svn_fs_upgrade_format_bumped ;
 TYPE_1__* svn_io_read_version_file (int*,char const*,int *) ;
 TYPE_1__* svn_io_write_version_file (char const*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
base_upgrade(svn_fs_t *fs,
             const char *path,
             svn_fs_upgrade_notify_t notify_func,
             void *notify_baton,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_mutex__t *common_pool_lock,
             apr_pool_t *pool,
             apr_pool_t *common_pool)
{
  const char *version_file_path;
  int old_format_number;
  svn_error_t *err;

  version_file_path = svn_dirent_join(path, FORMAT_FILE, pool);


  err = svn_io_read_version_file(&old_format_number, version_file_path, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {

      old_format_number = 0;
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }
  SVN_ERR(err);
  SVN_ERR(check_format(old_format_number));


  SVN_ERR(svn_io_write_version_file(version_file_path,
                                    SVN_FS_BASE__FORMAT_NUMBER, pool));
  if (notify_func)
    SVN_ERR(notify_func(notify_baton, SVN_FS_BASE__FORMAT_NUMBER,
                        svn_fs_upgrade_format_bumped, pool));


  if (old_format_number < SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT)
    {
      apr_pool_t *subpool = svn_pool_create(pool);
      svn_revnum_t youngest_rev;
      const char *value;
      SVN_ERR(base_open(fs, path, common_pool_lock, subpool, common_pool));


      SVN_ERR(svn_fs_base__youngest_rev(&youngest_rev, fs, subpool));
      value = apr_psprintf(subpool, "%ld", youngest_rev);
      SVN_ERR(svn_fs_base__miscellaneous_set
              (fs, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE,
               value, subpool));
      svn_pool_destroy(subpool);
    }

  return SVN_NO_ERROR;
}
