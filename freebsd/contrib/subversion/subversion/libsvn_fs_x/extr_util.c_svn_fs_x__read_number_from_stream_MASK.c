#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_int64_t *result,
                                  svn_boolean_t *hit_eof,
                                  svn_stream_t *stream,
                                  apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *sb;
  svn_boolean_t eof;
  svn_error_t *err;

  FUNC0(FUNC5(stream, &sb, "\n", &eof, scratch_pool));
  if (hit_eof)
    *hit_eof = eof;
  else
    if (eof)
      return FUNC3(SVN_ERR_FS_CORRUPT, NULL, FUNC1("Unexpected EOF"));

  if (!eof)
    {
      err = FUNC2(result, sb->data);
      if (err)
        return FUNC4(SVN_ERR_FS_CORRUPT, err,
                                 FUNC1("Number '%s' invalid or too large"),
                                 sb->data);
    }

  return SVN_NO_ERROR;
}