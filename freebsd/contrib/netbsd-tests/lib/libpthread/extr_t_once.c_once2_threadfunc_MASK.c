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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  once ; 
 int /*<<< orphan*/  once2_ofunc ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int x ; 

__attribute__((used)) static void *
FUNC4(void *arg)
{
	int num;

	FUNC1(FUNC3(&once, once2_ofunc));

	num = *(int *)arg;
	FUNC2("Thread %d sees x with value %d\n", num, x);
	FUNC0(x, 2);

	return NULL;
}