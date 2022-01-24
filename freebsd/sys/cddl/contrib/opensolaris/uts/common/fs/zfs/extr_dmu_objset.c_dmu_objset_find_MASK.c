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
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int (*) (char const*,void*),void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int
FUNC3(char *name, int func(const char *, void *), void *arg,
    int flags)
{
	spa_t *spa;
	int error;

	error = FUNC2(name, &spa, FTAG);
	if (error != 0)
		return (error);
	error = FUNC0(spa, name, func, arg, flags);
	FUNC1(spa, FTAG);
	return (error);
}