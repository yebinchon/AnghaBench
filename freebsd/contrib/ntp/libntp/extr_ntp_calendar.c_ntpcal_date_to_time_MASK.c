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
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  time_t ;
struct calendar {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ DAY_UNIX_STARTS ; 
 scalar_t__ FUNC0 (struct calendar const*) ; 
 scalar_t__ FUNC1 (struct calendar const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

time_t
FUNC4(
	const struct calendar *jd
	)
{
	vint64  join;
	int32_t days, secs;

	days = FUNC1(jd) - DAY_UNIX_STARTS;
	secs = FUNC0(jd);
	join = FUNC2(days, secs);

	return FUNC3(&join);
}