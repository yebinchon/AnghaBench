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
 TYPE_1__ disc_work ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	struct list_head *work;
	do {
		FUNC4(&disc_work.lock);
		if (FUNC0(&disc_work))
			FUNC3(&disc_work.cond, &disc_work.lock);
		work = FUNC1(&disc_work);
		FUNC5(&disc_work.lock);
		FUNC7(work->id);
		FUNC6(work->id);
		FUNC2(work);
	} while (1);
	return NULL;
}