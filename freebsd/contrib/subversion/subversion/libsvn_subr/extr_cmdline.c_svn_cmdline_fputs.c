
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int WCHAR ;
typedef int FILE ;


 scalar_t__ EOF ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IO_PIPE_WRITE_ERROR ;
 int SVN_ERR_IO_WRITE_ERROR ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_EPIPE (scalar_t__) ;
 int _ (char*) ;
 scalar_t__ _cputws (int *) ;
 scalar_t__ apr_get_os_error () ;
 scalar_t__ errno ;
 scalar_t__ fputs (char const*,int *) ;
 scalar_t__ shortcut_stderr_to_console ;
 scalar_t__ shortcut_stdout_to_console ;
 int * stderr ;
 int * stdout ;
 int * svn_cmdline_cstring_from_utf8 (char const**,char const*,int *) ;
 char* svn_cmdline_cstring_from_utf8_fuzzy (char const*,int *) ;
 int svn_cmdline_fflush (int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int svn_utf__win32_utf8_to_utf16 (int **,char const*,int *,int *) ;

svn_error_t *
svn_cmdline_fputs(const char *string, FILE* stream, apr_pool_t *pool)
{
  svn_error_t *err;
  const char *out;
  err = svn_cmdline_cstring_from_utf8(&out, string, pool);

  if (err)
    {
      svn_error_clear(err);
      out = svn_cmdline_cstring_from_utf8_fuzzy(string, pool);
    }





  errno = 0;

  if (fputs(out, stream) == EOF)
    {
      if (apr_get_os_error())
        {


          if (SVN__APR_STATUS_IS_EPIPE(apr_get_os_error()))
            return svn_error_create(SVN_ERR_IO_PIPE_WRITE_ERROR, ((void*)0), ((void*)0));
          else
            return svn_error_wrap_apr(apr_get_os_error(), _("Write error"));
        }
      else
        return svn_error_create(SVN_ERR_IO_WRITE_ERROR, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
