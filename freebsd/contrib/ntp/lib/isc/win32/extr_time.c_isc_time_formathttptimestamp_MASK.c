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
struct TYPE_3__ {int /*<<< orphan*/  absolute; } ;
typedef  TYPE_1__ isc_time_t ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TIME_FORCE24HOURFORMAT ; 
 int TIME_NOTIMEMARKER ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,char*,char*,char*) ; 

void
FUNC5(const isc_time_t *t, char *buf, unsigned int len) {
	SYSTEMTIME st;
	char DateBuf[50];
	char TimeBuf[50];

/* strftime() format: "%a, %d %b %Y %H:%M:%S GMT" */

	FUNC3(len > 0);
	if (FUNC0(&t->absolute, &st)) {
		FUNC1(LOCALE_USER_DEFAULT, 0, &st,
			      "ddd',', dd-MMM-yyyy", DateBuf, 50);
		FUNC2(LOCALE_USER_DEFAULT,
			      TIME_NOTIMEMARKER | TIME_FORCE24HOURFORMAT,
			      &st, "hh':'mm':'ss", TimeBuf, 50);

		FUNC4(buf, len, "%s %s GMT", DateBuf, TimeBuf);
	} else {
		buf[0] = 0;
	}
}