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
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  (* svn_txdelta_window_handler_t ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_kind_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
struct txdelta_baton {int /*<<< orphan*/ * checksum; int /*<<< orphan*/  context; int /*<<< orphan*/ * result_pool; int /*<<< orphan*/  buf; scalar_t__ pos; void* more; void* more_source; int /*<<< orphan*/ * target; int /*<<< orphan*/ * source; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SVN_DELTA_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,struct txdelta_baton*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_stream_t *source,
                svn_stream_t *target,
                svn_txdelta_window_handler_t handler,
                void *handler_baton,
                svn_checksum_kind_t checksum_kind,
                svn_checksum_t **checksum,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC5(scratch_pool);
  struct txdelta_baton tb = { 0 };
  svn_txdelta_window_t *window;

  tb.source = source;
  tb.target = target;
  tb.more_source = TRUE;
  tb.more = TRUE;
  tb.pos = 0;
  tb.buf = FUNC1(scratch_pool, 2 * SVN_DELTA_WINDOW_SIZE);
  tb.result_pool = result_pool;

  if (checksum != NULL)
    tb.context = FUNC3(checksum_kind, scratch_pool);

  do
    {
      /* free the window (if any) */
      FUNC4(iterpool);

      /* read in a single delta window */
      FUNC0(FUNC7(&window, &tb, iterpool));

      /* shove it at the handler */
      FUNC0((*handler)(window, handler_baton));

      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));
    }
  while (window != NULL);

  FUNC6(iterpool);

  if (checksum != NULL)
    *checksum = tb.checksum;  /* should be there! */

  return SVN_NO_ERROR;
}