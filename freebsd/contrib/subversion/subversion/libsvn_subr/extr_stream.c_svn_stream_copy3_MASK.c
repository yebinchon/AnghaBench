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
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 

svn_error_t *FUNC5(svn_stream_t *from, svn_stream_t *to,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  char *buf = FUNC0(scratch_pool, SVN__STREAM_CHUNK_SIZE);
  svn_error_t *err;
  svn_error_t *err2;

  /* Read and write chunks until we get a short read, indicating the
     end of the stream.  (We can't get a short write without an
     associated error.) */
  while (1)
    {
      apr_size_t len = SVN__STREAM_CHUNK_SIZE;

      if (cancel_func)
        {
          err = cancel_func(cancel_baton);
          if (err)
             break;
        }

      err = FUNC3(from, buf, &len);
      if (err)
         break;

      if (len > 0)
        err = FUNC4(to, buf, &len);

      if (err || (len != SVN__STREAM_CHUNK_SIZE))
          break;
    }

  err2 = FUNC1(FUNC2(from),
                                  FUNC2(to));

  return FUNC1(err, err2);
}