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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  tm ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_TIME ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

int FUNC7(const char* str, uint8_t* rd, size_t* len)
{
	/* convert a time YYYYDDMMHHMMSS to wireformat */
	struct tm tm;
	if(*len < 4)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

	/* Try to scan the time... */
	FUNC1(&tm, 0, sizeof(tm));
	if (FUNC5(str) == 14 && FUNC4(str, "%4d%2d%2d%2d%2d%2d",
		&tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour,
		&tm.tm_min, &tm.tm_sec) == 6) {
	   	tm.tm_year -= 1900;
	   	tm.tm_mon--;
	   	/* Check values */
		if (tm.tm_year < 70)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
		if (tm.tm_mon < 0 || tm.tm_mon > 11)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
		if (tm.tm_mday < 1 || tm.tm_mday > 31)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
		if (tm.tm_hour < 0 || tm.tm_hour > 23)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
		if (tm.tm_min < 0 || tm.tm_min > 59)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;
		if (tm.tm_sec < 0 || tm.tm_sec > 59)
			return LDNS_WIREPARSE_ERR_SYNTAX_TIME;

		FUNC3(rd, (uint32_t)FUNC2(&tm));
	} else {
		/* handle it as 32 bits timestamp */
		char *end;
		uint32_t l = (uint32_t)FUNC6((char*)str, &end, 10);
		if(*end != 0)
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_TIME,
				end-(char*)str);
		FUNC3(rd, l);
	}
	*len = 4;
	return LDNS_WIREPARSE_ERR_OK;
}