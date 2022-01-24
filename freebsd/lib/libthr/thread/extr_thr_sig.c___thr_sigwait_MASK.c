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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 struct pthread* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int
FUNC5(const sigset_t *set, int *sig)
{
	struct pthread	*curthread = FUNC1();
	sigset_t newset;
	int ret;

	do {
		FUNC2(curthread);
		ret = FUNC0(FUNC4(set, &newset), sig);
		FUNC3(curthread, (ret != 0));
	} while (ret == EINTR);
	return (ret);
}