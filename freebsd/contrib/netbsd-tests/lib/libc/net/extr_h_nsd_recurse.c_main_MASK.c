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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ NS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  thrfunc ; 

int
FUNC4(int argc, char *argv[])
{
	pthread_t thr;
	void *threval;

	FUNC0(FUNC2(&thr, NULL, thrfunc, NULL) == 0);
	FUNC0(FUNC1() == NS_SUCCESS);
	FUNC0(FUNC3(thr, &threval) == 0);
}