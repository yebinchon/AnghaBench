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
struct rcu_head {int dummy; } ;
struct linux_epoch_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  cb_head; } ;
struct callback_head {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  rcu_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct callback_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 struct linux_epoch_head linux_epoch_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 

void
FUNC4(struct rcu_head *context, rcu_callback_t func)
{
	struct callback_head *rcu = (struct callback_head *)context;
	struct linux_epoch_head *head = &linux_epoch_head;

	FUNC1(&head->lock);
	rcu->func = func;
	FUNC0(&head->cb_head, rcu, entry);
	FUNC3(taskqueue_fast, &head->task);
	FUNC2(&head->lock);
}