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
typedef  scalar_t__ tstamp_t ;
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ JAN_1970 ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 struct tm* FUNC2 (scalar_t__*) ; 
 int FUNC3 (char*,int,char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	const char *tag,
	tstamp_t uval
	)
{
	char buffer[16];
	int  rc;

	time_t fstamp = (time_t)uval - JAN_1970;
	struct tm *tm = FUNC2(&fstamp);

	if (NULL == tm)
		return;

	rc = FUNC3(buffer, sizeof(buffer),
		      "%04d%02d%02d%02d%02d",
		      tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
		      tm->tm_hour, tm->tm_min);
	FUNC0(rc >= 0 && (size_t)rc < sizeof(buffer));
	FUNC1(tag, buffer, rc);
}