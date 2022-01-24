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
struct pthread {scalar_t__ state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ PS_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,struct pthread*) ; 
 struct pthread* FUNC4 (struct pthread*) ; 

int
FUNC5(struct pthread *curthread, struct pthread *thread,
    int include_dead)
{
	struct pthread *pthread;
	int ret;

	if (thread == NULL)
		return (EINVAL);

	ret = 0;
	FUNC0(curthread);
	pthread = FUNC4(thread);
	if (pthread) {
		FUNC2(curthread, pthread);
		if (include_dead == 0 && pthread->state == PS_DEAD) {
			FUNC3(curthread, pthread);
			ret = ESRCH;
		}
	} else {
		ret = ESRCH;
	}
	FUNC1(curthread);
	return (ret);
}