
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 scalar_t__ APR_STATUS_IS_EEXIST (int ) ;
 int SVN_ERR (TYPE_1__*) ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_io_copy_perms (char const*,char const*,int *) ;
 TYPE_1__* svn_io_dir_make (char const*,int ,int *) ;

svn_error_t *
svn_fs_x__ensure_dir_exists(const char *path,
                            const char *fs_path,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err = svn_io_dir_make(path, APR_OS_DEFAULT, scratch_pool);
  if (err && APR_STATUS_IS_EEXIST(err->apr_err))
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }
  SVN_ERR(err);



  return svn_io_copy_perms(fs_path, path, scratch_pool);
}
