#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* data; } ;
typedef  TYPE_1__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int apr_ssize_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int apr_int32_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UTF8PROC_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_UTF8_GLOB ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_UTF__UNKNOWN_LENGTH ; 
 int TRUE ; 
 int const UTF8PROC_DECOMPOSE ; 
 int UTF8PROC_NULLTERM ; 
 int const UTF8PROC_STABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char const*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int*,scalar_t__,scalar_t__*) ; 
 int FUNC11 (void const*,scalar_t__,int*,int,int const) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

svn_error_t *
FUNC13(svn_boolean_t *match,
              const char *pattern, apr_size_t pattern_len,
              const char *string, apr_size_t string_len,
              const char *escape, apr_size_t escape_len,
              svn_boolean_t sql_like,
              svn_membuf_t *pattern_buf,
              svn_membuf_t *string_buf,
              svn_membuf_t *temp_buf)
{
  apr_size_t patternbuf_len;
  apr_size_t tempbuf_len;

  /* If we're in GLOB mode, we don't do custom escape chars. */
  if (escape && !sql_like)
    return FUNC6(SVN_ERR_UTF8_GLOB, NULL,
                            FUNC1("Cannot use a custom escape token"
                              " in glob matching mode"));

  /* Convert the patern to NFD UTF-8. We can't use the UCS-4 result
     because apr_fnmatch can't handle it.*/
  FUNC0(FUNC3(&tempbuf_len, pattern, pattern_len, temp_buf));
  if (!sql_like)
    FUNC0(FUNC10(pattern_buf, temp_buf->data,
                                        tempbuf_len, &patternbuf_len));
  else
    {
      /* Convert a LIKE pattern to a GLOB pattern that apr_fnmatch can use. */
      const apr_int32_t *like = temp_buf->data;
      apr_int32_t ucs4esc;
      svn_boolean_t escaped;
      apr_size_t i;

      if (!escape)
        ucs4esc = -1;           /* Definitely an invalid UCS-4 character. */
      else
        {
          const int nullterm = (escape_len == SVN_UTF__UNKNOWN_LENGTH
                                ? UTF8PROC_NULLTERM : 0);
          apr_ssize_t result =
            FUNC11((const void*) escape, escape_len, &ucs4esc, 1,
                               UTF8PROC_DECOMPOSE | UTF8PROC_STABLE | nullterm);
          if (result < 0)
            return FUNC6(SVN_ERR_UTF8PROC_ERROR, NULL,
                                    FUNC5(FUNC12(result)));
          if (result == 0 || result > 1)
            return FUNC6(SVN_ERR_UTF8_GLOB, NULL,
                                    FUNC1("Escape token must be one character"));
          if ((ucs4esc & 0xFF) != ucs4esc)
            return FUNC7(SVN_ERR_UTF8_GLOB, NULL,
                                     FUNC1("Invalid escape character U+%04lX"),
                                     (long)ucs4esc);
        }

      patternbuf_len = 0;
      FUNC8(pattern_buf, tempbuf_len + 1);
      for (i = 0, escaped = FALSE; i < tempbuf_len; ++i, ++like)
        {
          if (*like == ucs4esc && !escaped)
            {
              FUNC9(pattern_buf, patternbuf_len + 1);
              ((char*)pattern_buf->data)[patternbuf_len++] = '\\';
              escaped = TRUE;
            }
          else if (escaped)
            {
              FUNC0(FUNC4(pattern_buf, *like, &patternbuf_len));
              escaped = FALSE;
            }
          else
            {
              if ((*like == '[' || *like == '\\') && !escaped)
                {
                  /* Escape brackets and backslashes which are always
                     literals in LIKE patterns. */
                  FUNC9(pattern_buf, patternbuf_len + 1);
                  ((char*)pattern_buf->data)[patternbuf_len++] = '\\';
                  escaped = TRUE;
                  --i; --like;
                  continue;
                }

              /* Replace LIKE wildcards with their GLOB equivalents. */
              if (*like == '%' || *like == '_')
                {
                  const char wildcard = (*like == '%' ? '*' : '?');
                  FUNC9(pattern_buf, patternbuf_len + 1);
                  ((char*)pattern_buf->data)[patternbuf_len++] = wildcard;
                }
              else
                FUNC0(FUNC4(pattern_buf, *like, &patternbuf_len));
            }
        }
      FUNC9(pattern_buf, patternbuf_len + 1);
      ((char*)pattern_buf->data)[patternbuf_len] = '\0';
    }

  /* Now normalize the string */
  FUNC0(FUNC3(&tempbuf_len, string, string_len, temp_buf));
  FUNC0(FUNC10(string_buf, temp_buf->data,
                                      tempbuf_len, &tempbuf_len));

  *match = !FUNC2(pattern_buf->data, string_buf->data, 0);
  return SVN_NO_ERROR;
}