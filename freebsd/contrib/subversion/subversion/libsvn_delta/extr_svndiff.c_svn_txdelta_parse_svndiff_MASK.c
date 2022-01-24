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
typedef  scalar_t__ svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct decode_baton {scalar_t__ window_header_len; int /*<<< orphan*/  error_on_early_close; scalar_t__ header_bytes; scalar_t__ last_sview_len; scalar_t__ last_sview_offset; int /*<<< orphan*/ * pool; int /*<<< orphan*/  buffer; void* subpool; void* consumer_baton; scalar_t__ consumer_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct decode_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  close_handler ; 
 int /*<<< orphan*/  noop_write_handler ; 
 scalar_t__ svn_delta_noop_window_handler ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct decode_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_handler ; 

svn_stream_t *
FUNC6(svn_txdelta_window_handler_t handler,
                          void *handler_baton,
                          svn_boolean_t error_on_early_close,
                          apr_pool_t *pool)
{
  svn_stream_t *stream;

  if (handler != svn_delta_noop_window_handler)
    {
      apr_pool_t *subpool = FUNC1(pool);
      struct decode_baton *db = FUNC0(pool, sizeof(*db));

      db->consumer_func = handler;
      db->consumer_baton = handler_baton;
      db->pool = subpool;
      db->subpool = FUNC1(subpool);
      db->buffer = FUNC5(db->pool);
      db->last_sview_offset = 0;
      db->last_sview_len = 0;
      db->header_bytes = 0;
      db->error_on_early_close = error_on_early_close;
      db->window_header_len = 0;
      stream = FUNC2(db, pool);

      FUNC4(stream, write_handler);
      FUNC3(stream, close_handler);
    }
  else
    {
      /* And else we just ignore everything as efficiently as we can.
         by only hooking a no-op handler */
      stream = FUNC2(NULL, pool);
      FUNC4(stream, noop_write_handler);
    }
  return stream;
}