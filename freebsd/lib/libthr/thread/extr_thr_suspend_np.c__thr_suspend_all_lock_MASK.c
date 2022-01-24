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
struct pthread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* _single_thread ; 
 int _suspend_all_cycle ; 
 int /*<<< orphan*/  _suspend_all_lock ; 
 int /*<<< orphan*/  _suspend_all_waiters ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct pthread *curthread)
{
	int old;

	FUNC0(curthread, &_suspend_all_lock);
	while (_single_thread != NULL) {
		old = _suspend_all_cycle;
		_suspend_all_waiters++;
		FUNC1(curthread, &_suspend_all_lock);
		FUNC2(&_suspend_all_cycle, old, NULL, 0);
		FUNC0(curthread, &_suspend_all_lock);
		_suspend_all_waiters--;
	}
	_single_thread = curthread;
	FUNC1(curthread, &_suspend_all_lock);
}