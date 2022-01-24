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
struct TYPE_4__ {int /*<<< orphan*/  handler_baton; int /*<<< orphan*/  handler; scalar_t__ read_pos; int /*<<< orphan*/  hit_eof; int /*<<< orphan*/  window_buffer; int /*<<< orphan*/ * txstream; int /*<<< orphan*/  scratch_pool; } ;
typedef  TYPE_1__ svndiff_stream_baton_t ;
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svndiff_stream_read_fn ; 
 int /*<<< orphan*/  svndiff_stream_write_fn ; 

svn_stream_t *
FUNC7(svn_txdelta_stream_t *txstream,
                              int svndiff_version,
                              int compression_level,
                              apr_pool_t *pool)
{
  svndiff_stream_baton_t *baton;
  svn_stream_t *push_stream;
  svn_stream_t *pull_stream;

  baton = FUNC0(pool, sizeof(*baton));
  baton->scratch_pool = FUNC1(pool);
  baton->txstream = txstream;
  baton->window_buffer = FUNC5(pool);
  baton->hit_eof = FALSE;
  baton->read_pos = 0;

  push_stream = FUNC2(baton, pool);
  FUNC4(push_stream, svndiff_stream_write_fn);

  /* We rely on the implementation detail of the svn_txdelta_to_svndiff3()
     function, namely, on how the window_handler() function behaves.
     As long as it writes one svndiff window at a time to the target
     stream, the memory usage of this function (in other words, how
     much data can be accumulated in the internal 'window_buffer')
     is limited.  */
  FUNC6(&baton->handler, &baton->handler_baton,
                          push_stream, svndiff_version,
                          compression_level, pool);

  pull_stream = FUNC2(baton, pool);
  FUNC3(pull_stream, NULL, svndiff_stream_read_fn);

  return pull_stream;
}