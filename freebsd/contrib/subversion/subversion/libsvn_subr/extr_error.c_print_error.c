
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char const* message; int apr_err; int pool; int line; int file; } ;
typedef TYPE_1__ svn_error_t ;
typedef int errbuf ;
typedef int FILE ;


 int APR_OS_START_CANONERR ;
 int APR_OS_START_USEERR ;
 int SVN_FILE_LINE_UNDEFINED ;
 char* _ (char*) ;
 int apr_strerror (int ,char*,int) ;
 TYPE_1__* svn_cmdline_fprintf (int *,int ,char*,...) ;
 TYPE_1__* svn_cmdline_fputs (int ,int *,int ) ;
 scalar_t__ svn_error__is_tracing_link (TYPE_1__*) ;
 int svn_error_clear (TYPE_1__*) ;
 char* svn_error_symbolic_name (int ) ;
 char* svn_strerror (int ,char*,int) ;
 TYPE_1__* svn_utf_cstring_to_utf8 (char const**,int ,int ) ;

__attribute__((used)) static void
print_error(svn_error_t *err, FILE *stream, const char *prefix)
{
  char errbuf[256];
  const char *err_string;
  svn_error_t *temp_err = ((void*)0);
  if (svn_error__is_tracing_link(err))
    {

    }

  else if (err->message)
    {
      svn_error_clear(svn_cmdline_fprintf(stream, err->pool,
                                          "%sE%06d: %s\n",
                                          prefix, err->apr_err, err->message));
    }
  else
    {

      if ((err->apr_err > APR_OS_START_USEERR)
          && (err->apr_err <= APR_OS_START_CANONERR))
        err_string = svn_strerror(err->apr_err, errbuf, sizeof(errbuf));

      else if ((temp_err = svn_utf_cstring_to_utf8
                (&err_string, apr_strerror(err->apr_err, errbuf,
                                           sizeof(errbuf)), err->pool)))
        {
          svn_error_clear(temp_err);
          err_string = _("Can't recode error string from APR");
        }

      svn_error_clear(svn_cmdline_fprintf(stream, err->pool,
                                          "%sE%06d: %s\n",
                                          prefix, err->apr_err, err_string));
    }
}
