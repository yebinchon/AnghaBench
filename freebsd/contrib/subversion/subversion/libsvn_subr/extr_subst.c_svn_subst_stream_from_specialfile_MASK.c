#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct special_stream_baton {int /*<<< orphan*/  write_content; int /*<<< orphan*/  write_stream; int /*<<< orphan*/ * read_stream; int /*<<< orphan*/  path; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 struct special_stream_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  close_handler_special ; 
 int /*<<< orphan*/  read_handler_special ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (struct special_stream_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_handler_special ; 

svn_error_t *
FUNC11(svn_stream_t **stream,
                                  const char *path,
                                  apr_pool_t *pool)
{
  struct special_stream_baton *baton = FUNC1(pool, sizeof(*baton));
  svn_error_t *err;

  baton->pool = pool;
  baton->path = FUNC2(pool, path);

  err = FUNC10(&baton->read_stream, path, pool, pool);

  /* File might not exist because we intend to create it upon close. */
  if (err && FUNC0(err->apr_err))
    {
      FUNC3(err);

      /* Note: the special file is missing. the caller won't find out
         until the first read. Oh well. This function is deprecated anyways,
         so they can just deal with the weird behavior. */
      baton->read_stream = NULL;
    }

  baton->write_content = FUNC9(pool);
  baton->write_stream = FUNC5(baton->write_content, pool);

  *stream = FUNC4(baton, pool);
  FUNC7(*stream, NULL /* only full read support */,
                       read_handler_special);
  FUNC8(*stream, write_handler_special);
  FUNC6(*stream, close_handler_special);

  return SVN_NO_ERROR;
}