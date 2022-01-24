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
struct list_head {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct list_head* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ req_work ; 

__attribute__((used)) static void *FUNC7(void *arg)
{
	struct list_head *work;
	do {
		FUNC5(&req_work.lock);
		if (FUNC0(&req_work))
			FUNC4(&req_work.cond, &req_work.lock);
		work = FUNC1(&req_work);
		FUNC6(&req_work.lock);
		FUNC2(work->id);
		FUNC3(work);
	} while (1);
	return NULL;
}