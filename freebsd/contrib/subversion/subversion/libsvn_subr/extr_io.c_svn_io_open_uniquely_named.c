
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_io_file_del_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct temp_file_cleanup_s {int * fname_apr; int * pool; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
struct TYPE_3__ {scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef int apr_file_t ;


 int APR_BINARY ;
 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_DELONCLOSE ;
 scalar_t__ APR_DIR ;
 int APR_EXCL ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_EACCES (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EEXIST (scalar_t__) ;
 int APR_WRITE ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_SHARING_VIOLATION ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_IO_UNIQUE_NAMES_EXHAUSTED ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_file_close (int *) ;
 struct temp_file_cleanup_s* apr_palloc (int *,int) ;
 int apr_pool_cleanup_register (int *,struct temp_file_cleanup_s*,int ,int ) ;
 char* apr_psprintf (int *,char*,char const*,...) ;
 void* apr_pstrdup (int *,char const*) ;
 scalar_t__ apr_stat (TYPE_1__*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;
 scalar_t__ file_open (int **,char const*,int,int ,int ,int *) ;
 int strcmp (char const*,char const*) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 scalar_t__ svn_io_file_del_on_close ;
 scalar_t__ svn_io_file_del_on_pool_cleanup ;
 int svn_io_temp_dir (char const**,int *) ;
 int temp_file_child_cleanup_handler ;
 int temp_file_plain_cleanup_handler ;

svn_error_t *
svn_io_open_uniquely_named(apr_file_t **file,
                           const char **unique_path,
                           const char *dirpath,
                           const char *filename,
                           const char *suffix,
                           svn_io_file_del_t delete_when,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *path;
  unsigned int i;
  struct temp_file_cleanup_s *baton = ((void*)0);



  svn_boolean_t needs_utf8_conversion = TRUE;

  SVN_ERR_ASSERT(file || unique_path);

  if (dirpath == ((void*)0))
    SVN_ERR(svn_io_temp_dir(&dirpath, scratch_pool));
  if (filename == ((void*)0))
    filename = "tempfile";
  if (suffix == ((void*)0))
    suffix = ".tmp";

  path = svn_dirent_join(dirpath, filename, scratch_pool);

  if (delete_when == svn_io_file_del_on_pool_cleanup)
    {
      baton = apr_palloc(result_pool, sizeof(*baton));

      baton->pool = result_pool;
      baton->fname_apr = ((void*)0);






      apr_pool_cleanup_register(result_pool, baton,
                                temp_file_plain_cleanup_handler,
                                temp_file_child_cleanup_handler);
    }

  for (i = 1; i <= 99999; i++)
    {
      const char *unique_name;
      const char *unique_name_apr;
      apr_file_t *try_file;
      apr_status_t apr_err;
      apr_int32_t flag = (APR_READ | APR_WRITE | APR_CREATE | APR_EXCL
                          | APR_BUFFERED | APR_BINARY);

      if (delete_when == svn_io_file_del_on_close)
        flag |= APR_DELONCLOSE;
      if (i == 1)
        unique_name = apr_psprintf(scratch_pool, "%s%s", path, suffix);
      else
        unique_name = apr_psprintf(scratch_pool, "%s.%u%s", path, i, suffix);





      if (needs_utf8_conversion)
        {
          SVN_ERR(cstring_from_utf8(&unique_name_apr, unique_name,
                                    scratch_pool));
          if (i == 1)
            {




              needs_utf8_conversion = strcmp(unique_name_apr, unique_name);
            }
        }
      else
        unique_name_apr = unique_name;

      apr_err = file_open(&try_file, unique_name_apr, flag,
                          APR_OS_DEFAULT, FALSE, result_pool);

      if (APR_STATUS_IS_EEXIST(apr_err))
        continue;
      else if (apr_err)
        {



          if (APR_STATUS_IS_EACCES(apr_err))
            {
              apr_finfo_t finfo;
              apr_status_t apr_err_2 = apr_stat(&finfo, unique_name_apr,
                                                APR_FINFO_TYPE, scratch_pool);

              if (!apr_err_2 && finfo.filetype == APR_DIR)
                continue;
            }

          if (file)
            *file = ((void*)0);
          if (unique_path)
            *unique_path = ((void*)0);
          return svn_error_wrap_apr(apr_err, _("Can't open '%s'"),
                                    svn_dirent_local_style(unique_name,
                                                         scratch_pool));
        }
      else
        {
          if (delete_when == svn_io_file_del_on_pool_cleanup)
            baton->fname_apr = apr_pstrdup(result_pool, unique_name_apr);

          if (file)
            *file = try_file;
          else
            apr_file_close(try_file);
          if (unique_path)
            *unique_path = apr_pstrdup(result_pool, unique_name);

          return SVN_NO_ERROR;
        }
    }

  if (file)
    *file = ((void*)0);
  if (unique_path)
    *unique_path = ((void*)0);
  return svn_error_createf(SVN_ERR_IO_UNIQUE_NAMES_EXHAUSTED,
                           ((void*)0),
                           _("Unable to make name for '%s'"),
                           svn_dirent_local_style(path, scratch_pool));
}
