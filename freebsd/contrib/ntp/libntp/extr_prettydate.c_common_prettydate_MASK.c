#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_int32 ;
typedef  unsigned int u_int ;
struct tm {size_t tm_wday; size_t tm_mon; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; scalar_t__ tm_year; int /*<<< orphan*/  tm_mday; } ;
struct calendar {size_t weekday; int month; int /*<<< orphan*/  second; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; scalar_t__ year; int /*<<< orphan*/  monthday; } ;
struct TYPE_3__ {scalar_t__ l_ui; scalar_t__ l_uf; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * daynames ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * months ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct calendar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(
	l_fp *ts,
	int local
	)
{
	static const char pfmt0[] =
	    "%08lx.%08lx  %s, %s %2d %4d %2d:%02d:%02d.%03u";
	static const char pfmt1[] =
	    "%08lx.%08lx [%s, %s %2d %4d %2d:%02d:%02d.%03u UTC]";

	char	    *bp;
	struct tm   *tm;
	u_int	     msec;
	u_int32	     ntps;
	vint64	     sec;

	FUNC0(bp);

	if (ts->l_ui == 0 && ts->l_uf == 0) {
		FUNC5 (bp, "(no time)", LIB_BUFLENGTH);
		return (bp);
	}

	/* get & fix milliseconds */
	ntps = ts->l_ui;
	msec = ts->l_uf / 4294967;	/* fract / (2 ** 32 / 1000) */
	if (msec >= 1000u) {
		msec -= 1000u;
		ntps++;
	}
	sec = FUNC2(ntps, NULL);
	tm  = FUNC1(&sec, local);
	if (!tm) {
		/*
		 * get a replacement, but always in UTC, using
		 * ntpcal_time_to_date()
		 */
		struct calendar jd;
		FUNC3(&jd, &sec);
		FUNC4(bp, LIB_BUFLENGTH, local ? pfmt1 : pfmt0,
			 (u_long)ts->l_ui, (u_long)ts->l_uf,
			 daynames[jd.weekday], months[jd.month-1],
			 jd.monthday, jd.year, jd.hour,
			 jd.minute, jd.second, msec);
	} else		
		FUNC4(bp, LIB_BUFLENGTH, pfmt0,
			 (u_long)ts->l_ui, (u_long)ts->l_uf,
			 daynames[tm->tm_wday], months[tm->tm_mon],
			 tm->tm_mday, 1900 + tm->tm_year, tm->tm_hour,
			 tm->tm_min, tm->tm_sec, msec);
	return bp;
}