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
typedef  int /*<<< orphan*/  CRITICAL_SECTION ;

/* Variables and functions */
 unsigned int EVTHREAD_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(unsigned mode, void *lock_)
{
	CRITICAL_SECTION *lock = lock_;
	if ((mode & EVTHREAD_TRY)) {
		return ! FUNC1(lock);
	} else {
		FUNC0(lock);
		return 0;
	}
}