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
typedef  int /*<<< orphan*/  uint32_t ;
struct calendar {int dummy; } ;
typedef  int /*<<< orphan*/  ntpcal_split ;

/* Variables and functions */
 int /*<<< orphan*/  DAY_NTP_STARTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct calendar*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(
	uint32_t		ntp,
	struct calendar *	jt
	)
{
	vint64		vlong;
	ntpcal_split	split;
	
	
	FUNC0(NULL != jt);

	/*
	 * Unfold ntp time around current time into NTP domain. Split
	 * into days and seconds, shift days into CE domain and
	 * process the parts.
	 */
	vlong = FUNC3(ntp, NULL);
	split = FUNC1(&vlong);
	FUNC2(jt, &split, DAY_NTP_STARTS);
}