#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bq_list; int /*<<< orphan*/  bq_lock; int /*<<< orphan*/  bq_pop_cv; int /*<<< orphan*/  bq_add_cv; int /*<<< orphan*/  bq_size; } ;
typedef  TYPE_1__ bqueue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(bqueue_t *q)
{
	FUNC0(q->bq_size);
	FUNC1(&q->bq_add_cv);
	FUNC1(&q->bq_pop_cv);
	FUNC3(&q->bq_lock);
	FUNC2(&q->bq_list);
}