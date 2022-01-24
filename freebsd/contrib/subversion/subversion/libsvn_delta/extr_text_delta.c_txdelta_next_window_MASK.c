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
typedef  int /*<<< orphan*/  svn_error_t ;
struct txdelta_baton {int more_source; scalar_t__ buf; scalar_t__ pos; int /*<<< orphan*/ * context; int /*<<< orphan*/  more; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  checksum; int /*<<< orphan*/  target; int /*<<< orphan*/  source; } ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SVN_DELTA_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_txdelta_window_t **window,
                    void *baton,
                    apr_pool_t *pool)
{
  struct txdelta_baton *b = baton;
  apr_size_t source_len = SVN_DELTA_WINDOW_SIZE;
  apr_size_t target_len = SVN_DELTA_WINDOW_SIZE;

  /* Read the source stream. */
  if (b->more_source)
    {
      FUNC0(FUNC4(b->source, b->buf, &source_len));
      b->more_source = (source_len == SVN_DELTA_WINDOW_SIZE);
    }
  else
    source_len = 0;

  /* Read the target stream. */
  FUNC0(FUNC4(b->target, b->buf + source_len, &target_len));
  b->pos += source_len;

  if (target_len == 0)
    {
      /* No target data?  We're done; return the final window. */
      if (b->context != NULL)
        FUNC0(FUNC2(&b->checksum, b->context, b->result_pool));

      *window = NULL;
      b->more = FALSE;
      return SVN_NO_ERROR;
    }
  else if (b->context != NULL)
    FUNC0(FUNC3(b->context, b->buf + source_len, target_len));

  *window = FUNC1(b->buf, source_len, target_len,
                           b->pos - source_len, pool);

  /* That's it. */
  return SVN_NO_ERROR;
}