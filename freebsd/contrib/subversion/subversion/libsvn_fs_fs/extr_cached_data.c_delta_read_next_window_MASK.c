#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct delta_read_baton {TYPE_1__* rs; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {scalar_t__ current; scalar_t__ size; int /*<<< orphan*/  chunk_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_txdelta_window_t **window, void *baton,
                       apr_pool_t *pool)
{
  struct delta_read_baton *drb = baton;
  apr_pool_t *scratch_pool = FUNC2(pool);

  *window = NULL;
  if (drb->rs->current < drb->rs->size)
    {
      FUNC0(FUNC1(window, drb->rs->chunk_index, drb->rs, pool,
                                scratch_pool));
      drb->rs->chunk_index++;
    }

  FUNC3(scratch_pool);

  return SVN_NO_ERROR;
}