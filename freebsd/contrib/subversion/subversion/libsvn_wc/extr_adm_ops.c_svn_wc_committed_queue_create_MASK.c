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
struct TYPE_4__ {int /*<<< orphan*/  wc_queues; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_wc_committed_queue_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

svn_wc_committed_queue_t *
FUNC2(apr_pool_t *pool)
{
  svn_wc_committed_queue_t *q;

  q = FUNC1(pool, sizeof(*q));
  q->pool = pool;
  q->wc_queues = FUNC0(pool);

  return q;
}