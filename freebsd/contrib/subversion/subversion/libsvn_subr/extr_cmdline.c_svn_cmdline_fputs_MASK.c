#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_IO_PIPE_WRITE_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_IO_WRITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ shortcut_stderr_to_console ; 
 scalar_t__ shortcut_stdout_to_console ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/ * FUNC6 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(const char *string, FILE* stream, apr_pool_t *pool)
{
  svn_error_t *err;
  const char *out;

#ifdef USE_WIN32_CONSOLE_SHORTCUT
  /* For legacy reasons the Visual C++ runtime converts output to the console
     from the native 'ansi' encoding, to unicode, then back to 'ansi' and then
     onwards to the console which is implemented as unicode.

     For operations like 'svn status -v' this may cause about 70% of the total
     processing time, with absolutely no gain.

     For this specific scenario this shortcut exists. It has the nice side
     effect of allowing full unicode output to the console.

     Note that this shortcut is not used when the output is redirected, as in
     that case the data is put on the pipe/file after the first conversion to
     ansi. In this case the most expensive conversion is already avoided.
   */
  if ((stream == stdout && shortcut_stdout_to_console)
      || (stream == stderr && shortcut_stderr_to_console))
    {
      WCHAR *result;

      if (string[0] == '\0')
        return SVN_NO_ERROR;

      SVN_ERR(svn_cmdline_fflush(stream)); /* Flush existing output */

      SVN_ERR(svn_utf__win32_utf8_to_utf16(&result, string, NULL, pool));

      if (_cputws(result))
        {
          if (apr_get_os_error())
          {
            return svn_error_wrap_apr(apr_get_os_error(), _("Write error"));
          }
        }

      return SVN_NO_ERROR;
    }
#endif

  err = FUNC6(&out, string, pool);

  if (err)
    {
      FUNC9(err);
      out = FUNC7(string, pool);
    }

  /* On POSIX systems, errno will be set on an error in fputs, but this might
     not be the case on other platforms.  We reset errno and only
     use it if it was set by the below fputs call.  Else, we just return
     a generic error. */
  errno = 0;

  if (FUNC5(out, stream) == EOF)
    {
      if (FUNC4()) /* is errno on POSIX */
        {
          /* ### Issue #3014: Return a specific error for broken pipes,
           * ### with a single element in the error chain. */
          if (FUNC1(FUNC4()))
            return FUNC10(SVN_ERR_IO_PIPE_WRITE_ERROR, NULL, NULL);
          else
            return FUNC11(FUNC4(), FUNC2("Write error"));
        }
      else
        return FUNC10(SVN_ERR_IO_WRITE_ERROR, NULL, NULL);
    }

  return SVN_NO_ERROR;
}