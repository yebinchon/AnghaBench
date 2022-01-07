
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* data; int len; scalar_t__ blocksize; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__LINE_CHUNK_SIZE ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_file_gets (char*,int,int *) ;
 scalar_t__ strlen (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int * svn_io_file_name_get (char const**,int *,int *) ;
 int svn_stringbuf_chop (TYPE_1__*,int) ;
 TYPE_1__* svn_stringbuf_create_ensure (scalar_t__,int *) ;
 int svn_stringbuf_ensure (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
readline_apr_lf(apr_file_t *file,
                svn_stringbuf_t **stringbuf,
                svn_boolean_t *eof,
                apr_pool_t *pool)
{
  svn_stringbuf_t *buf;

  buf = svn_stringbuf_create_ensure(SVN__LINE_CHUNK_SIZE, pool);
  while (1)
  {
    apr_status_t status;

    status = apr_file_gets(buf->data + buf->len,
                           (int) (buf->blocksize - buf->len),
                           file);
    buf->len += strlen(buf->data + buf->len);

    if (APR_STATUS_IS_EOF(status))
      {

        if (buf->len > 0 && buf->data[buf->len - 1] == '\n')
          svn_stringbuf_chop(buf, 1);

        *eof = TRUE;
        *stringbuf = buf;
        return SVN_NO_ERROR;
      }
    else if (status != APR_SUCCESS)
      {
        const char *fname;
        svn_error_t *err = svn_io_file_name_get(&fname, file, pool);
        if (err)
          fname = ((void*)0);
        svn_error_clear(err);

        if (fname)
          return svn_error_wrap_apr(status,
                                    _("Can't read a line from file '%s'"),
                                    svn_dirent_local_style(fname, pool));
        else
          return svn_error_wrap_apr(status,
                                    _("Can't read a line from stream"));
      }


    if (buf->len > 0 && buf->data[buf->len - 1] == '\n')
      {
        svn_stringbuf_chop(buf, 1);
        *eof = FALSE;
        *stringbuf = buf;
        return SVN_NO_ERROR;
      }


    svn_stringbuf_ensure(buf, buf->blocksize + SVN__LINE_CHUNK_SIZE);
  }
}
