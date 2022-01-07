
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_17__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_BAD_VERSION_FILE_FORMAT ;
 int SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT ;
 int SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 TYPE_2__* check_format (int) ;
 TYPE_2__* check_format_file_buffer_numeric (scalar_t__,int,char const*,int *) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 TYPE_2__* svn_cstring_atoi (int*,scalar_t__) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ,...) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 TYPE_2__* svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 TYPE_2__* svn_stringbuf_from_file2 (TYPE_1__**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_format(int *pformat,
            int *max_files_per_dir,
            svn_boolean_t *use_log_addressing,
            const char *path,
            apr_pool_t *pool)
{
  svn_error_t *err;
  svn_stream_t *stream;
  svn_stringbuf_t *content;
  svn_stringbuf_t *buf;
  svn_boolean_t eos = FALSE;

  err = svn_stringbuf_from_file2(&content, path, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {







      svn_error_clear(err);
      *pformat = 1;
      *max_files_per_dir = 0;
      *use_log_addressing = FALSE;

      return SVN_NO_ERROR;
    }
  SVN_ERR(err);

  stream = svn_stream_from_stringbuf(content, pool);
  SVN_ERR(svn_stream_readline(stream, &buf, "\n", &eos, pool));
  if (buf->len == 0 && eos)
    {

      return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
                               _("Can't read first line of format file '%s'"),
                               svn_dirent_local_style(path, pool));
    }


  SVN_ERR(check_format_file_buffer_numeric(buf->data, 0, path, pool));
  SVN_ERR(svn_cstring_atoi(pformat, buf->data));


  SVN_ERR(check_format(*pformat));


  *max_files_per_dir = 0;
  *use_log_addressing = FALSE;


  while (!eos)
    {
      SVN_ERR(svn_stream_readline(stream, &buf, "\n", &eos, pool));
      if (buf->len == 0)
        break;

      if (*pformat >= SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT &&
          strncmp(buf->data, "layout ", 7) == 0)
        {
          if (strcmp(buf->data + 7, "linear") == 0)
            {
              *max_files_per_dir = 0;
              continue;
            }

          if (strncmp(buf->data + 7, "sharded ", 8) == 0)
            {

              SVN_ERR(check_format_file_buffer_numeric(buf->data, 15, path, pool));
              SVN_ERR(svn_cstring_atoi(max_files_per_dir, buf->data + 15));
              continue;
            }
        }

      if (*pformat >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT &&
          strncmp(buf->data, "addressing ", 11) == 0)
        {
          if (strcmp(buf->data + 11, "physical") == 0)
            {
              *use_log_addressing = FALSE;
              continue;
            }

          if (strcmp(buf->data + 11, "logical") == 0)
            {
              *use_log_addressing = TRUE;
              continue;
            }
        }

      return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
         _("'%s' contains invalid filesystem format option '%s'"),
         svn_dirent_local_style(path, pool), buf->data);
    }





  if (*use_log_addressing && !*max_files_per_dir)
    return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
       _("'%s' specifies logical addressing for a non-sharded repository"),
       svn_dirent_local_style(path, pool));

  return SVN_NO_ERROR;
}
