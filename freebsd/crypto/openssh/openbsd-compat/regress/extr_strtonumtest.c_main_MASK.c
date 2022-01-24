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
 int LLONG_MAX ; 
 int LLONG_MIN ; 
 int fail ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 

int FUNC1(int argc, char *argv[])
{
	FUNC0("1", 0, 10, 1);
	FUNC0("0", -2, 5, 1);
	FUNC0("0", 2, 5, 0);
	FUNC0("0", 2, LLONG_MAX, 0);
	FUNC0("-2", 0, LLONG_MAX, 0);
	FUNC0("0", -5, LLONG_MAX, 1);
	FUNC0("-3", -3, LLONG_MAX, 1);
	FUNC0("-9223372036854775808", LLONG_MIN, LLONG_MAX, 1);
	FUNC0("9223372036854775807", LLONG_MIN, LLONG_MAX, 1);
	FUNC0("-9223372036854775809", LLONG_MIN, LLONG_MAX, 0);
	FUNC0("9223372036854775808", LLONG_MIN, LLONG_MAX, 0);
	FUNC0("1000000000000000000000000", LLONG_MIN, LLONG_MAX, 0);
	FUNC0("-1000000000000000000000000", LLONG_MIN, LLONG_MAX, 0);
	FUNC0("-2", 10, -1, 0);
	FUNC0("-2", -10, -1, 1);
	FUNC0("-20", -10, -1, 0);
	FUNC0("20", -10, -1, 0);

	return (fail);
}