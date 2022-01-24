#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ eof; int /*<<< orphan*/  keywords; int /*<<< orphan*/  current_line; } ;
typedef  TYPE_1__ target_content_t ;
struct TYPE_8__ {char const* data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_linenum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_hunk_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_boolean_t *match,
                      target_content_t *content,
                      svn_diff_hunk_t *hunk,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t lines_matched;
  apr_pool_t *iterpool;
  svn_boolean_t hunk_eof;
  svn_linenum_t saved_line;

  FUNC5(hunk);

  saved_line = content->current_line;

  iterpool = FUNC7(scratch_pool);
  do
    {
      const char *line;
      svn_stringbuf_t *hunk_line;
      const char *line_translated;
      const char *hunk_line_translated;

      FUNC6(iterpool);

      FUNC0(FUNC1(content, &line, iterpool, iterpool));
      FUNC0(FUNC4(hunk, &hunk_line,
                                                   NULL, &hunk_eof,
                                                   iterpool, iterpool));
      /* Contract keywords. */
      FUNC0(FUNC9(line, &line_translated,
                                           NULL, FALSE,
                                           content->keywords,
                                           FALSE, iterpool));
      FUNC0(FUNC9(hunk_line->data,
                                           &hunk_line_translated,
                                           NULL, FALSE,
                                           content->keywords,
                                           FALSE, iterpool));
      lines_matched = ! FUNC3(line_translated, hunk_line_translated);
      if (content->eof != hunk_eof)
        {
          FUNC8(iterpool);
          *match = FALSE;
          return SVN_NO_ERROR;
        }
    }
  while (lines_matched && ! content->eof && ! hunk_eof);
  FUNC8(iterpool);

  *match = (lines_matched && content->eof == hunk_eof);
  FUNC0(FUNC2(content, saved_line, scratch_pool));

  return SVN_NO_ERROR;
}