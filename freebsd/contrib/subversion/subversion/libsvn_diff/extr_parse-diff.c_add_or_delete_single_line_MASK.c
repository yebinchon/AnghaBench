#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_patch_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_13__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_12__ {scalar_t__ end; scalar_t__ current; scalar_t__ start; } ;
struct TYPE_16__ {int original_start; int original_length; int modified_start; int modified_length; int /*<<< orphan*/  apr_file; TYPE_3__ diff_text_range; scalar_t__ trailing_context; scalar_t__ leading_context; void* modified_no_final_eol; TYPE_2__ modified_text_range; void* original_no_final_eol; TYPE_1__ original_text_range; int /*<<< orphan*/  const* patch; } ;
typedef  TYPE_5__ svn_diff_hunk_t ;
typedef  size_t svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 TYPE_4__* FUNC8 (scalar_t__ const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_diff_hunk_t **hunk_out,
                          const char *line,
                          const svn_patch_t *patch,
                          svn_boolean_t add,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_diff_hunk_t *hunk = FUNC1(result_pool, sizeof(*hunk));
  static const char *hunk_header[] = { "@@ -1 +0,0 @@\n", "@@ -0,0 +1 @@\n" };
  const apr_size_t header_len = FUNC2(hunk_header[add]);
  const apr_size_t len = FUNC2(line);
  const apr_size_t end = header_len + (1 + len); /* The +1 is for the \n. */
  svn_stringbuf_t *buf = FUNC8(end + 1, scratch_pool);

  hunk->patch = patch;

  /* hunk->apr_file is created below. */

  hunk->diff_text_range.start = header_len;
  hunk->diff_text_range.current = header_len;

  if (add)
    {
      hunk->original_text_range.start = 0; /* There's no "original" text. */
      hunk->original_text_range.current = 0;
      hunk->original_text_range.end = 0;
      hunk->original_no_final_eol = FALSE;

      hunk->modified_text_range.start = header_len;
      hunk->modified_text_range.current = header_len;
      hunk->modified_text_range.end = end;
      hunk->modified_no_final_eol = TRUE;

      hunk->original_start = 0;
      hunk->original_length = 0;

      hunk->modified_start = 1;
      hunk->modified_length = 1;
    }
  else /* delete */
    {
      hunk->original_text_range.start = header_len;
      hunk->original_text_range.current = header_len;
      hunk->original_text_range.end = end;
      hunk->original_no_final_eol = TRUE;

      hunk->modified_text_range.start = 0; /* There's no "original" text. */
      hunk->modified_text_range.current = 0;
      hunk->modified_text_range.end = 0;
      hunk->modified_no_final_eol = FALSE;

      hunk->original_start = 1;
      hunk->original_length = 1;

      hunk->modified_start = 0;
      hunk->modified_length = 0; /* setting to '1' works too */
    }

  hunk->leading_context = 0;
  hunk->trailing_context = 0;

  /* Create APR_FILE and put just a hunk in it (without a diff header).
   * Save the offset of the last byte of the diff line. */
  FUNC6(buf, hunk_header[add], header_len);
  FUNC5(buf, add ? '+' : '-');
  FUNC6(buf, line, len);
  FUNC5(buf, '\n');
  FUNC7(buf, "\\ No newline at end of hunk\n");

  hunk->diff_text_range.end = buf->len;

  FUNC0(FUNC4(&hunk->apr_file, NULL /* filename */,
                                   NULL /* system tempdir */,
                                   svn_io_file_del_on_pool_cleanup,
                                   result_pool, scratch_pool));
  FUNC0(FUNC3(hunk->apr_file,
                                 buf->data, buf->len,
                                 NULL, scratch_pool));
  /* No need to seek. */

  *hunk_out = hunk;
  return SVN_NO_ERROR;
}