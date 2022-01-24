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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct calendar {scalar_t__ second; scalar_t__ minute; scalar_t__ hour; scalar_t__ monthday; scalar_t__ month; int /*<<< orphan*/  year; } ;
typedef  int /*<<< orphan*/  ntpcal_split ;

/* Variables and functions */
 int /*<<< orphan*/  DAY_UNIX_STARTS ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct calendar*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC5(
	const struct timeval * ptv
	)
{
	char *		retv;
	vint64		secs;
	ntpcal_split	dds;
	struct calendar	jd;

	secs = FUNC4(&ptv->tv_sec);
	dds  = FUNC1(&secs);
	FUNC2(&jd, &dds, DAY_UNIX_STARTS);
	FUNC0(retv);
	FUNC3(retv, LIB_BUFLENGTH,
		 "%04hu-%02hu-%02hu/%02hu:%02hu:%02hu.%06u",
		 jd.year, (u_short)jd.month, (u_short)jd.monthday,
		 (u_short)jd.hour, (u_short)jd.minute, (u_short)jd.second,
		 (u_int)ptv->tv_usec);
	return retv;
}