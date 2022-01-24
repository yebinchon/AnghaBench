#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ current_line; scalar_t__ eof; int /*<<< orphan*/  keywords; } ;
typedef  TYPE_1__ target_content_t ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  scalar_t__ svn_linenum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_hunk_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_boolean_t *matched, target_content_t *content,
           svn_diff_hunk_t *hunk, svn_linenum_t fuzz,
           svn_boolean_t ignore_whitespace,
           svn_boolean_t match_modified, apr_pool_t *pool)
{
  svn_stringbuf_t *hunk_line;
  const char *target_line;
  svn_linenum_t lines_read;
  svn_linenum_t saved_line;
  svn_boolean_t hunk_eof;
  svn_boolean_t lines_matched;
  apr_pool_t *iterpool;
  svn_linenum_t hunk_length;
  svn_linenum_t leading_context;
  svn_linenum_t trailing_context;
  svn_linenum_t fuzz_penalty;

  *matched = FALSE;

  if (content->eof)
    return SVN_NO_ERROR;

  fuzz_penalty = FUNC6(hunk);

  if (fuzz_penalty > fuzz)
    return SVN_NO_ERROR;
  else
    fuzz -= fuzz_penalty;

  saved_line = content->current_line;
  lines_read = 0;
  lines_matched = FALSE;
  leading_context = FUNC7(hunk);
  trailing_context = FUNC10(hunk);
  if (match_modified)
    {
      FUNC13(hunk);
      hunk_length = FUNC8(hunk);
    }
  else
    {
      FUNC14(hunk);
      hunk_length = FUNC9(hunk);
    }
  iterpool = FUNC16(pool);
  do
    {
      const char *hunk_line_translated;

      FUNC15(iterpool);

      if (match_modified)
        FUNC0(FUNC11(hunk, &hunk_line,
                                                     NULL, &hunk_eof,
                                                     iterpool, iterpool));
      else
        FUNC0(FUNC12(hunk, &hunk_line,
                                                     NULL, &hunk_eof,
                                                     iterpool, iterpool));

      /* Contract keywords, if any, before matching. */
      FUNC0(FUNC18(hunk_line->data,
                                           &hunk_line_translated,
                                           NULL, FALSE,
                                           content->keywords, FALSE,
                                           iterpool));
      FUNC0(FUNC3(content, &target_line, iterpool, iterpool));

      lines_read++;

      /* If the last line doesn't have a newline, we get EOF but still
       * have a non-empty line to compare. */
      if ((hunk_eof && hunk_line->len == 0) ||
          (content->eof && *target_line == 0))
        break;

      /* Leading/trailing fuzzy lines always match. */
      if ((lines_read <= fuzz && leading_context > fuzz) ||
          (lines_read > hunk_length - fuzz && trailing_context > fuzz))
        lines_matched = TRUE;
      else
        {
          if (ignore_whitespace)
            {
              char *hunk_line_trimmed;
              char *target_line_trimmed;

              hunk_line_trimmed = FUNC2(iterpool, hunk_line_translated);
              target_line_trimmed = FUNC2(iterpool, target_line);
              FUNC1(hunk_line_trimmed, hunk_line_trimmed);
              FUNC1(target_line_trimmed, target_line_trimmed);
              lines_matched = ! FUNC5(hunk_line_trimmed, target_line_trimmed);
            }
          else
            lines_matched = ! FUNC5(hunk_line_translated, target_line);
        }
    }
  while (lines_matched);

  *matched = lines_matched && hunk_eof && hunk_line->len == 0;
  FUNC0(FUNC4(content, saved_line, iterpool));
  FUNC17(iterpool);

  return SVN_NO_ERROR;
}