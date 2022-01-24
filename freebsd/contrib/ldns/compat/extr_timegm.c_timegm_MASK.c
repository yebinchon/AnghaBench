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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

time_t
FUNC5 (struct tm *tm) {
	time_t ret;
	char *tz;
	
	tz = FUNC0("TZ");
	FUNC2((char*)"TZ=");
	FUNC4();
	ret = FUNC1(tm);
	if (tz) {
		char buf[256];
		FUNC3(buf, sizeof(buf), "TZ=%s", tz);
		FUNC2(tz);
	}
	else
		FUNC2((char*)"TZ");
	FUNC4();
	return ret;
}