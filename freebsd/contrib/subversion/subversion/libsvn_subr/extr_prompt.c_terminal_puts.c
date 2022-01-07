
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outfd; } ;
typedef TYPE_1__ terminal_handle_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _cputs (char const*) ;
 int strlen (char const*) ;
 int * svn_cmdline_cstring_from_utf8 (char const**,char const*,int *) ;
 char* svn_cmdline_cstring_from_utf8_fuzzy (char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_flush (int ,int *) ;
 int svn_io_file_write_full (int ,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
terminal_puts(const char *string, terminal_handle_t *terminal,
              apr_pool_t *pool)
{
  svn_error_t *err;
  const char *converted;

  err = svn_cmdline_cstring_from_utf8(&converted, string, pool);
  if (err)
    {
      svn_error_clear(err);
      converted = svn_cmdline_cstring_from_utf8_fuzzy(string, pool);
    }
  SVN_ERR(svn_io_file_write_full(terminal->outfd, converted,
                                 strlen(converted), ((void*)0), pool));

  return svn_error_trace(svn_io_file_flush(terminal->outfd, pool));
}
