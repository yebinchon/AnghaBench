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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_IO_INCONSISTENT_EOL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (char const*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char *eol_str,
                  apr_size_t eol_str_len,
                  char *src_format,
                  apr_size_t *src_format_len,
                  const char *newline_buf,
                  apr_size_t newline_len,
                  svn_stream_t *dst,
                  svn_boolean_t *translated_eol,
                  svn_boolean_t repair)
{
  FUNC3(FUNC1(newline_buf, newline_len));

  /* If we've seen a newline before, compare it with our cache to
     check for consistency, else cache it for future comparisons. */
  if (*src_format_len)
    {
      /* Comparing with cache.  If we are inconsistent and
         we are NOT repairing the file, generate an error! */
      if ((! repair) && FUNC0(src_format, *src_format_len,
                                              newline_buf, newline_len))
        return FUNC6(SVN_ERR_IO_INCONSISTENT_EOL, NULL, NULL);
    }
  else
    {
      /* This is our first line ending, so cache it before
         handling it. */
      FUNC5(src_format, newline_buf, newline_len);
      *src_format_len = newline_len;
    }

  /* Write the desired newline */
  FUNC2(FUNC7(dst, eol_str, eol_str_len));

  /* Report whether we translated it.  Note: Not using DIFFERENT_EOL_STRINGS()
   * because EOL_STR may not be a valid EOL sequence. */
  if (translated_eol != NULL &&
      (eol_str_len != newline_len ||
       FUNC4(eol_str, newline_buf, eol_str_len) != 0))
    *translated_eol = TRUE;

  return SVN_NO_ERROR;
}