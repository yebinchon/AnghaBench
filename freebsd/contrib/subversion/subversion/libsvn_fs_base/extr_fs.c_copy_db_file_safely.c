
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_10__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_LARGEFILE ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int APR_WRITE ;
 int SVN_ERR (TYPE_1__*) ;
 TYPE_1__* SVN_NO_ERROR ;
 char* apr_palloc (int *,int ) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_io_file_close (int *,int *) ;
 TYPE_1__* svn_io_file_open (int **,char const*,int,int ,int *) ;
 TYPE_1__* svn_io_file_read (int *,char*,int *,int *) ;
 TYPE_1__* svn_io_file_write_full (int *,char*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
copy_db_file_safely(const char *src_dir,
                    const char *dst_dir,
                    const char *filename,
                    u_int32_t chunksize,
                    svn_boolean_t allow_missing,
                    apr_pool_t *pool)
{
  apr_file_t *s = ((void*)0), *d = ((void*)0);
  const char *file_src_path = svn_dirent_join(src_dir, filename, pool);
  const char *file_dst_path = svn_dirent_join(dst_dir, filename, pool);
  svn_error_t *err;
  char *buf;



  err = svn_io_file_open(&s, file_src_path,
                         (APR_READ | APR_LARGEFILE),
                         APR_OS_DEFAULT, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err) && allow_missing)
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }
  SVN_ERR(err);


  SVN_ERR(svn_io_file_open(&d, file_dst_path, (APR_WRITE | APR_CREATE |
                                               APR_LARGEFILE),
                           APR_OS_DEFAULT, pool));


  buf = apr_palloc(pool, chunksize);


  while (1)
    {
      apr_size_t bytes_this_time = chunksize;
      svn_error_t *read_err, *write_err;


      if ((read_err = svn_io_file_read(s, buf, &bytes_this_time, pool)))
        {
          if (APR_STATUS_IS_EOF(read_err->apr_err))
            svn_error_clear(read_err);
          else
            {
              svn_error_clear(svn_io_file_close(s, pool));
              svn_error_clear(svn_io_file_close(d, pool));
              return read_err;
            }
        }


      if ((write_err = svn_io_file_write_full(d, buf, bytes_this_time, ((void*)0),
                                              pool)))
        {
          svn_error_clear(svn_io_file_close(s, pool));
          svn_error_clear(svn_io_file_close(d, pool));
          return write_err;
        }



      if (read_err)
        {
          SVN_ERR(svn_io_file_close(s, pool));
          SVN_ERR(svn_io_file_close(d, pool));
          break;
        }
    }

  return SVN_NO_ERROR;
}
