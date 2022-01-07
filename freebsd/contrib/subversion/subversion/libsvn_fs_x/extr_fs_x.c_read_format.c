
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_VERSION_FILE_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int check_format (int) ;
 int check_format_file_buffer_numeric (scalar_t__,int,char const*,int *) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 int svn_cstring_atoi (int*,scalar_t__) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 int svn_stringbuf_from_file2 (TYPE_1__**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_format(int *pformat,
            int *max_files_per_dir,
            const char *path,
            apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  svn_stringbuf_t *content;
  svn_stringbuf_t *buf;
  svn_boolean_t eos = FALSE;

  SVN_ERR(svn_stringbuf_from_file2(&content, path, scratch_pool));
  stream = svn_stream_from_stringbuf(content, scratch_pool);
  SVN_ERR(svn_stream_readline(stream, &buf, "\n", &eos, scratch_pool));
  if (buf->len == 0 && eos)
    {

      return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
                               _("Can't read first line of format file '%s'"),
                               svn_dirent_local_style(path, scratch_pool));
    }


  SVN_ERR(check_format_file_buffer_numeric(buf->data, 0, path, scratch_pool));
  SVN_ERR(svn_cstring_atoi(pformat, buf->data));


  SVN_ERR(check_format(*pformat));


  SVN_ERR(svn_stream_readline(stream, &buf, "\n", &eos, scratch_pool));
  if (!eos && strncmp(buf->data, "layout sharded ", 15) == 0)
    {

      SVN_ERR(check_format_file_buffer_numeric(buf->data, 15, path,
                                               scratch_pool));
      SVN_ERR(svn_cstring_atoi(max_files_per_dir, buf->data + 15));
    }
  else
    return svn_error_createf(SVN_ERR_BAD_VERSION_FILE_FORMAT, ((void*)0),
                  _("'%s' contains invalid filesystem format option '%s'"),
                  svn_dirent_local_style(path, scratch_pool), buf->data);

  return SVN_NO_ERROR;
}
