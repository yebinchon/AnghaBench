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
struct pthread {scalar_t__ state; int /*<<< orphan*/  tid; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 scalar_t__ PS_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread*) ; 
 struct pthread* FUNC2 () ; 
 scalar_t__ FUNC3 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*,char const*) ; 

void
FUNC6(pthread_t thread, const char *name)
{
	struct pthread *curthread;

	curthread = FUNC2();
	if (curthread == thread) {
		FUNC0(curthread, thread);
		FUNC4(thread->tid, name);
		FUNC5(thread, name);
		FUNC1(curthread, thread);
	} else {
		if (FUNC3(curthread, thread, 0) == 0) {
			if (thread->state != PS_DEAD) {
				FUNC4(thread->tid, name);
				FUNC5(thread, name);
			}
			FUNC1(curthread, thread);
		}
	}
}