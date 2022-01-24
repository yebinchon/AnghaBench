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
struct workqueue_struct {int /*<<< orphan*/  exec_mtx; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/  draining; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct workqueue_struct *wq)
{
	FUNC0(&wq->draining);
	FUNC1(wq);
	FUNC4(wq->taskqueue);
	FUNC3(&wq->exec_mtx);
	FUNC2(wq);
}