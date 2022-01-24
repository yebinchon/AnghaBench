#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  absolute; } ;
typedef  TYPE_1__ isc_time_t ;
struct TYPE_8__ {int wMilliseconds; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TIME_FORCE24HOURFORMAT ; 
 int TIME_NOTIMEMARKER ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,char const*,...) ; 

void
FUNC6(const isc_time_t *t, char *buf, unsigned int len) {
	FILETIME localft;
	SYSTEMTIME st;
	char DateBuf[50];
	char TimeBuf[50];

	static const char badtime[] = "99-Bad-9999 99:99:99.999";

	FUNC4(len > 0);
	if (FUNC0(&t->absolute, &localft) &&
	    FUNC1(&localft, &st)) {
		FUNC2(LOCALE_USER_DEFAULT, 0, &st, "dd-MMM-yyyy",
			      DateBuf, 50);
		FUNC3(LOCALE_USER_DEFAULT, TIME_NOTIMEMARKER|
			      TIME_FORCE24HOURFORMAT, &st, NULL, TimeBuf, 50);

		FUNC5(buf, len, "%s %s.%03u", DateBuf, TimeBuf,
			 st.wMilliseconds);

	} else
		FUNC5(buf, len, badtime);
}