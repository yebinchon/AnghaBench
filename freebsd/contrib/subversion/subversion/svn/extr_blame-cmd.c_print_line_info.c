
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef char* svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 scalar_t__ SVN_IS_VALID_REVNUM (char*) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int,char*) ;
 int * svn_cl__time_cstring_to_human_cstring (char const**,char const*,int *) ;
 int * svn_cmdline_cstring_from_utf8 (char const**,char const*,int *) ;
 int * svn_stream_printf (int *,int *,char*,char const*,...) ;

__attribute__((used)) static svn_error_t *
print_line_info(svn_stream_t *out,
                svn_revnum_t revision,
                const char *author,
                const char *date,
                const char *path,
                svn_boolean_t verbose,
                int rev_maxlength,
                apr_pool_t *pool)
{
  const char *time_utf8;
  const char *time_stdout;
  const char *rev_str;

  rev_str = SVN_IS_VALID_REVNUM(revision)
    ? apr_psprintf(pool, "%*ld", rev_maxlength, revision)
    : apr_psprintf(pool, "%*s", rev_maxlength, "-");

  if (verbose)
    {
      if (date)
        {
          SVN_ERR(svn_cl__time_cstring_to_human_cstring(&time_utf8,
                                                        date, pool));
          SVN_ERR(svn_cmdline_cstring_from_utf8(&time_stdout, time_utf8,
                                                pool));
        }
      else
        {




          time_stdout = "                                           -";
        }

      SVN_ERR(svn_stream_printf(out, pool, "%s %10s %s ", rev_str,
                                author ? author : "         -",
                                time_stdout));

      if (path)
        SVN_ERR(svn_stream_printf(out, pool, "%-14s ", path));
    }
  else
    {
      return svn_stream_printf(out, pool, "%s %10.10s ", rev_str,
                               author ? author : "         -");
    }

  return SVN_NO_ERROR;
}
