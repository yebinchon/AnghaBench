
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_EXDEV (int ) ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_flush_to_disk (int *,int *) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 TYPE_1__* svn_io_file_rename2 (char const*,char const*,scalar_t__,int *) ;

svn_error_t *
svn_fs_fs__move_into_place(const char *old_filename,
                           const char *new_filename,
                           const char *perms_reference,
                           svn_boolean_t flush_to_disk,
                           apr_pool_t *pool)
{
  svn_error_t *err;
  apr_file_t *file;


  SVN_ERR(svn_io_copy_perms(perms_reference, old_filename, pool));


  err = svn_io_file_rename2(old_filename, new_filename, flush_to_disk, pool);
  if (err && APR_STATUS_IS_EXDEV(err->apr_err))
    {

      svn_error_clear(err);
      SVN_ERR(svn_io_copy_file(old_filename, new_filename, TRUE, pool));





      if (flush_to_disk)
        {
          SVN_ERR(svn_io_file_open(&file, new_filename, APR_WRITE,
                                   APR_OS_DEFAULT, pool));
          SVN_ERR(svn_io_file_flush_to_disk(file, pool));
          SVN_ERR(svn_io_file_close(file, pool));
        }
    }
  else if (err)
    return svn_error_trace(err);

  return SVN_NO_ERROR;
}
