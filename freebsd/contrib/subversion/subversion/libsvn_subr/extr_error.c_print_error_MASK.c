#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char const* message; int /*<<< orphan*/  apr_err; int /*<<< orphan*/  pool; int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_START_CANONERR ; 
 int /*<<< orphan*/  APR_OS_START_USEERR ; 
 int /*<<< orphan*/  SVN_FILE_LINE_UNDEFINED ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC8 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(svn_error_t *err, FILE *stream, const char *prefix)
{
  char errbuf[256];
  const char *err_string;
  svn_error_t *temp_err = NULL;  /* ensure initialized even if
                                    err->file == NULL */
  /* Pretty-print the error */
  /* Note: we can also log errors here someday. */

#ifdef SVN_DEBUG
  /* Note: err->file is _not_ in UTF-8, because it's expanded from
           the __FILE__ preprocessor macro. */
  const char *file_utf8;

  if (err->file
      && !(temp_err = svn_utf_cstring_to_utf8(&file_utf8, err->file,
                                              err->pool)))
    svn_error_clear(svn_cmdline_fprintf(stream, err->pool,
                                        "%s:%ld", err->file, err->line));
  else
    {
      svn_error_clear(svn_cmdline_fputs(SVN_FILE_LINE_UNDEFINED,
                                        stream, err->pool));
      svn_error_clear(temp_err);
    }

  {
    const char *symbolic_name;
    if (svn_error__is_tracing_link(err))
      /* Skip it; the error code will be printed by the real link. */
      svn_error_clear(svn_cmdline_fprintf(stream, err->pool, ",\n"));
    else if ((symbolic_name = svn_error_symbolic_name(err->apr_err)))
      svn_error_clear(svn_cmdline_fprintf(stream, err->pool,
                                          ": (apr_err=%s)\n", symbolic_name));
    else
      svn_error_clear(svn_cmdline_fprintf(stream, err->pool,
                                          ": (apr_err=%d)\n", err->apr_err));
  }
#endif /* SVN_DEBUG */

  /* "traced call" */
  if (FUNC4(err))
    {
      /* Skip it.  We already printed the file-line coordinates. */
    }
  /* Only print the same APR error string once. */
  else if (err->message)
    {
      FUNC5(FUNC2(stream, err->pool,
                                          "%sE%06d: %s\n",
                                          prefix, err->apr_err, err->message));
    }
  else
    {
      /* Is this a Subversion-specific error code? */
      if ((err->apr_err > APR_OS_START_USEERR)
          && (err->apr_err <= APR_OS_START_CANONERR))
        err_string = FUNC7(err->apr_err, errbuf, sizeof(errbuf));
      /* Otherwise, this must be an APR error code. */
      else if ((temp_err = FUNC8
                (&err_string, FUNC1(err->apr_err, errbuf,
                                           sizeof(errbuf)), err->pool)))
        {
          FUNC5(temp_err);
          err_string = FUNC0("Can't recode error string from APR");
        }

      FUNC5(FUNC2(stream, err->pool,
                                          "%sE%06d: %s\n",
                                          prefix, err->apr_err, err_string));
    }
}