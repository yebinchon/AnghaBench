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
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC4 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*,struct pthread*) ; 
 scalar_t__ FUNC6 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC8 (struct pthread*,struct pthread*) ; 

void
FUNC9(struct pthread *curthread, struct pthread *thread)
{
	if (FUNC6(thread)) {
		FUNC4(curthread, thread);
		FUNC8(curthread, thread);
		FUNC1(curthread);
		FUNC7(curthread, thread);
		FUNC5(curthread, thread);
		if (FUNC6(thread)) {
			FUNC3(thread);
			FUNC2(thread);
		}
		FUNC8(curthread, thread);
		FUNC0(curthread);
	} else {
		FUNC8(curthread, thread);
	}
}