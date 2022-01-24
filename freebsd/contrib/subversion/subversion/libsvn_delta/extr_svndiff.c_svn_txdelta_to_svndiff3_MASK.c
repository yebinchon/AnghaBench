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
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct encoder_baton {int version; int compression_level; int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  header_done; int /*<<< orphan*/ * output; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct encoder_baton* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  window_handler ; 

void
FUNC2(svn_txdelta_window_handler_t *handler,
                        void **handler_baton,
                        svn_stream_t *output,
                        int svndiff_version,
                        int compression_level,
                        apr_pool_t *pool)
{
  struct encoder_baton *eb;

  eb = FUNC0(pool, sizeof(*eb));
  eb->output = output;
  eb->header_done = FALSE;
  eb->scratch_pool = FUNC1(pool);
  eb->version = svndiff_version;
  eb->compression_level = compression_level;

  *handler = window_handler;
  *handler_baton = eb;
}