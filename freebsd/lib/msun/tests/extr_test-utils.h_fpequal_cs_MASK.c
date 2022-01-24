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
 scalar_t__ FUNC0 (long double) ; 
 scalar_t__ FUNC1 (long double) ; 
 int /*<<< orphan*/  FUNC2 (long double) ; 

__attribute__((used)) static int
FUNC3(long double x, long double y, int checksign)
{
	if (FUNC1(x) && FUNC1(y))
		return (1);
	if (checksign)
		return (x == y && !FUNC2(x) == !FUNC2(y));
	else
		return (FUNC0(x) == FUNC0(y));
}