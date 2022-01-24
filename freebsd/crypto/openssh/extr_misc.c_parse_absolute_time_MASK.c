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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  tm ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SSH_ERR_INVALID_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*,char const*,...) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,struct tm*) ; 

int
FUNC5(const char *s, uint64_t *tp)
{
	struct tm tm;
	time_t tt;
	char buf[32], *fmt;

	*tp = 0;

	/*
	 * POSIX strptime says "The application shall ensure that there
	 * is white-space or other non-alphanumeric characters between
	 * any two conversion specifications" so arrange things this way.
	 */
	switch (FUNC3(s)) {
	case 8: /* YYYYMMDD */
		fmt = "%Y-%m-%d";
		FUNC2(buf, sizeof(buf), "%.4s-%.2s-%.2s", s, s + 4, s + 6);
		break;
	case 12: /* YYYYMMDDHHMM */
		fmt = "%Y-%m-%dT%H:%M";
		FUNC2(buf, sizeof(buf), "%.4s-%.2s-%.2sT%.2s:%.2s",
		    s, s + 4, s + 6, s + 8, s + 10);
		break;
	case 14: /* YYYYMMDDHHMMSS */
		fmt = "%Y-%m-%dT%H:%M:%S";
		FUNC2(buf, sizeof(buf), "%.4s-%.2s-%.2sT%.2s:%.2s:%.2s",
		    s, s + 4, s + 6, s + 8, s + 10, s + 12);
		break;
	default:
		return SSH_ERR_INVALID_FORMAT;
	}

	FUNC0(&tm, 0, sizeof(tm));
	if (FUNC4(buf, fmt, &tm) == NULL)
		return SSH_ERR_INVALID_FORMAT;
	if ((tt = FUNC1(&tm)) < 0)
		return SSH_ERR_INVALID_FORMAT;
	/* success */
	*tp = (uint64_t)tt;
	return 0;
}