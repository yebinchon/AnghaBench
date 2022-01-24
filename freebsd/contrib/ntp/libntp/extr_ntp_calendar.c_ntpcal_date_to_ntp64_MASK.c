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
struct calendar {int dummy; } ;

/* Variables and functions */
 scalar_t__ DAY_NTP_STARTS ; 
 int /*<<< orphan*/  FUNC0 (struct calendar const*) ; 
 scalar_t__ FUNC1 (struct calendar const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

vint64
FUNC3(
	const struct calendar *jd
	)
{
	/*
	 * Convert date to NTP. Ignore yearday, use d/m/y only.
	 */
	return FUNC2(FUNC1(jd) - DAY_NTP_STARTS,
			      FUNC0(jd));
}