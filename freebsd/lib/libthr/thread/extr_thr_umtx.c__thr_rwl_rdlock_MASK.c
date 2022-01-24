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
struct urwlock {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  URWLOCK_PREFER_READER ; 
 int FUNC1 (struct urwlock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct urwlock*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct urwlock *rwlock)
{
	int ret;

	for (;;) {
		if (FUNC2(rwlock, URWLOCK_PREFER_READER) == 0)
			return;
		ret = FUNC1(rwlock, URWLOCK_PREFER_READER, NULL);
		if (ret == 0)
			return;
		if (ret != EINTR)
			FUNC0("rdlock error");
	}
}