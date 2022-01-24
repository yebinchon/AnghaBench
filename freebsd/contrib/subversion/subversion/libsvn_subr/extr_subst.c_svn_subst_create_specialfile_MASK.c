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
struct special_stream_baton {int /*<<< orphan*/  write_content; int /*<<< orphan*/  write_stream; int /*<<< orphan*/ * pool; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct special_stream_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  close_handler_special ; 
 int /*<<< orphan*/ * FUNC2 (struct special_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_handler_special ; 

svn_error_t *
FUNC7(svn_stream_t **stream,
                             const char *path,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  struct special_stream_baton *baton = FUNC0(result_pool, sizeof(*baton));

  baton->path = FUNC1(result_pool, path);

  /* SCRATCH_POOL may not exist after the function returns. */
  baton->pool = result_pool;

  baton->write_content = FUNC6(result_pool);
  baton->write_stream = FUNC3(baton->write_content,
                                                  result_pool);

  *stream = FUNC2(baton, result_pool);
  FUNC5(*stream, write_handler_special);
  FUNC4(*stream, close_handler_special);

  return SVN_NO_ERROR;
}