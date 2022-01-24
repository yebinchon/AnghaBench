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
typedef  int /*<<< orphan*/  long_values ;

/* Variables and functions */
 int LONG_MAX ; 
 int LONG_MIN ; 
 scalar_t__ FUNC0 (char*,long) ; 

__attribute__((used)) static int
FUNC1 (void)
{
    int tot = 0;
    long long_values[] = {LONG_MIN, -17, -1, 0, 1, 17, 4711, 65535, LONG_MAX};
    int i;

    for (i = 0; i < sizeof(long_values) / sizeof(long_values[0]); ++i) {
	tot += FUNC0 ("%ld", long_values[i]);
	tot += FUNC0 ("%lx", long_values[i]);
	tot += FUNC0 ("%lX", long_values[i]);
	tot += FUNC0 ("%lo", long_values[i]);
	tot += FUNC0 ("%#lx", long_values[i]);
	tot += FUNC0 ("%#lX", long_values[i]);
	tot += FUNC0 ("%#lo", long_values[i]);
	tot += FUNC0 ("%10ld", long_values[i]);
	tot += FUNC0 ("%10lx", long_values[i]);
	tot += FUNC0 ("%10lX", long_values[i]);
	tot += FUNC0 ("%10lo", long_values[i]);
	tot += FUNC0 ("%#10lx", long_values[i]);
	tot += FUNC0 ("%#10lX", long_values[i]);
	tot += FUNC0 ("%#10lo", long_values[i]);
	tot += FUNC0 ("%-10ld", long_values[i]);
	tot += FUNC0 ("%-10lx", long_values[i]);
	tot += FUNC0 ("%-10lX", long_values[i]);
	tot += FUNC0 ("%-10lo", long_values[i]);
	tot += FUNC0 ("%-#10lx", long_values[i]);
	tot += FUNC0 ("%-#10lX", long_values[i]);
	tot += FUNC0 ("%-#10lo", long_values[i]);
    }
    return tot;
}