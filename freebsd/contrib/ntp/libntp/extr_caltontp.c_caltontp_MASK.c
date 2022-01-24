#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lo; } ;
struct TYPE_5__ {TYPE_1__ d_s; } ;
typedef  TYPE_2__ vint64 ;
typedef  int /*<<< orphan*/  uint32_t ;
struct calendar {int month; int monthday; int yearday; int hour; scalar_t__ minute; scalar_t__ second; int /*<<< orphan*/  year; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ DAY_NTP_STARTS ; 
 scalar_t__ MINSPERHR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SECSPERMIN ; 
 scalar_t__ FUNC1 (struct calendar const*) ; 
 TYPE_2__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(
	const struct calendar *jt
	)
{
	int32_t eraday;	/* CE Rata Die number	*/
	vint64  ntptime;/* resulting NTP time	*/

	FUNC0(jt != NULL);

	FUNC0(jt->month <= 13);	/* permit month 0..13! */
	FUNC0(jt->monthday <= 32);
	FUNC0(jt->yearday <= 366);
	FUNC0(jt->hour <= 24);
	FUNC0(jt->minute <= MINSPERHR);
	FUNC0(jt->second <= SECSPERMIN);

	/*
	 * First convert the date to he corresponding RataDie
	 * number. If yearday is not zero, assume that it contains a
	 * useable value and avoid all calculations involving month
	 * and day-of-month. Do a full evaluation otherwise.
	 */
	if (jt->yearday)
		eraday = FUNC4(jt->year)
		       + jt->yearday - 1;
	else
		eraday = FUNC1(jt);

	ntptime = FUNC2(eraday - DAY_NTP_STARTS,
				 FUNC3(jt->hour, jt->minute,
							 jt->second));
	return ntptime.d_s.lo;
}