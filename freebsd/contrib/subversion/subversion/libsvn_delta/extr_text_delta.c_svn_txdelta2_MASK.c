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
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_boolean_t ;
struct txdelta_baton {int /*<<< orphan*/ * result_pool; int /*<<< orphan*/ * context; int /*<<< orphan*/  buf; void* more; void* more_source; int /*<<< orphan*/ * target; int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SVN_DELTA_WINDOW_SIZE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct txdelta_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/ * FUNC3 (struct txdelta_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txdelta_md5_digest ; 
 int /*<<< orphan*/  txdelta_next_window ; 

void
FUNC4(svn_txdelta_stream_t **stream,
             svn_stream_t *source,
             svn_stream_t *target,
             svn_boolean_t calculate_checksum,
             apr_pool_t *pool)
{
  struct txdelta_baton *b = FUNC1(pool, sizeof(*b));

  b->source = source;
  b->target = target;
  b->more_source = TRUE;
  b->more = TRUE;
  b->buf = FUNC0(pool, 2 * SVN_DELTA_WINDOW_SIZE);
  b->context = calculate_checksum
             ? FUNC2(svn_checksum_md5, pool)
             : NULL;
  b->result_pool = pool;

  *stream = FUNC3(b, txdelta_next_window,
                                      txdelta_md5_digest, pool);
}