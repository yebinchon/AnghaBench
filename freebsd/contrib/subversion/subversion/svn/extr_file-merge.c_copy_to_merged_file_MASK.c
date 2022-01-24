#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_linenum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_IO_WRITE_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,char const**,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_linenum_t *new_current_line,
                    apr_file_t *merged_file,
                    apr_file_t *source_file,
                    apr_off_t start,
                    apr_off_t len,
                    svn_linenum_t current_line,
                    apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  svn_stringbuf_t *line;
  apr_size_t lines_read;
  apr_size_t lines_copied;
  svn_boolean_t eof;
  svn_linenum_t orig_current_line = current_line;

  lines_read = 0;
  iterpool = FUNC6(scratch_pool);
  while (current_line < start)
    {
      FUNC5(iterpool);

      FUNC0(FUNC3(source_file, &line, NULL, &eof,
                                   APR_SIZE_MAX, iterpool, iterpool));
      if (eof)
        break;

      current_line++;
      lines_read++;
    }

  lines_copied = 0;
  while (lines_copied < len)
    {
      apr_size_t bytes_written;
      const char *eol_str;

      FUNC5(iterpool);

      FUNC0(FUNC3(source_file, &line, &eol_str, &eof,
                                   APR_SIZE_MAX, iterpool, iterpool));
      if (eol_str)
        FUNC8(line, eol_str);
      FUNC0(FUNC4(merged_file, line->data, line->len,
                                     &bytes_written, iterpool));
      if (bytes_written != line->len)
        return FUNC2(SVN_ERR_IO_WRITE_ERROR, NULL,
                                FUNC1("Could not write data to merged file"));
      if (eof)
        break;
      lines_copied++;
    }
  FUNC7(iterpool);

  *new_current_line = orig_current_line + lines_read + lines_copied;

  return SVN_NO_ERROR;
}