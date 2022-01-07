
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_mutex__t ;
struct TYPE_16__ {scalar_t__ fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_17__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_18__ {int format; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ FALSE ;
 int FORMAT_FILE ;
 int SVN_ERR (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int check_format (int) ;
 int cleanup_fs (TYPE_1__*) ;
 TYPE_2__* open_databases (TYPE_1__*,scalar_t__,int,char const*) ;
 int populate_opened_fs (TYPE_1__*,int *) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,int ) ;
 int svn_error_trace (int ) ;
 TYPE_2__* svn_io_read_version_file (int*,int ,int *) ;
 TYPE_2__* svn_io_write_version_file (int ,int,int *) ;

__attribute__((used)) static svn_error_t *
base_open(svn_fs_t *fs,
          const char *path,
          svn_mutex__t *common_pool_lock,
          apr_pool_t *scratch_pool,
          apr_pool_t *common_pool)
{
  int format;
  svn_error_t *svn_err;
  svn_boolean_t write_format_file = FALSE;


  svn_err = svn_io_read_version_file(&format,
                                     svn_dirent_join(path, FORMAT_FILE,
                                                     scratch_pool),
                                     scratch_pool);
  if (svn_err && APR_STATUS_IS_ENOENT(svn_err->apr_err))
    {




      svn_error_clear(svn_err);
      svn_err = SVN_NO_ERROR;
      format = 1;
      write_format_file = TRUE;
    }
  else if (svn_err)
    goto error;


  svn_err = open_databases(fs, FALSE, format, path);
  if (svn_err) goto error;

  ((base_fs_data_t *) fs->fsap_data)->format = format;
  SVN_ERR(check_format(format));


  if (write_format_file)
    {
      svn_err = svn_io_write_version_file(svn_dirent_join(path, FORMAT_FILE,
                                                        scratch_pool),
                                          format, scratch_pool);
      if (svn_err) goto error;
    }

  SVN_ERR(populate_opened_fs(fs, scratch_pool));
  return SVN_NO_ERROR;

 error:
  return svn_error_compose_create(svn_err,
                                  svn_error_trace(cleanup_fs(fs)));
}
