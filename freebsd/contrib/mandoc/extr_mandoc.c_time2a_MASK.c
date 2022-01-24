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
struct tm {int tm_mday; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*,int,char*,int) ; 
 size_t FUNC5 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static char *
FUNC6(time_t t)
{
	struct tm	*tm;
	char		*buf, *p;
	size_t		 ssz;
	int		 isz;

	buf = NULL;
	tm = FUNC1(&t);
	if (tm == NULL)
		goto fail;

	/*
	 * Reserve space:
	 * up to 9 characters for the month (September) + blank
	 * up to 2 characters for the day + comma + blank
	 * 4 characters for the year and a terminating '\0'
	 */

	p = buf = FUNC2(10 + 4 + 4 + 1);

	if ((ssz = FUNC5(p, 10 + 1, "%B ", tm)) == 0)
		goto fail;
	p += (int)ssz;

	/*
	 * The output format is just "%d" here, not "%2d" or "%02d".
	 * That's also the reason why we can't just format the
	 * date as a whole with "%B %e, %Y" or "%B %d, %Y".
	 * Besides, the present approach is less prone to buffer
	 * overflows, in case anybody should ever introduce the bug
	 * of looking at LC_TIME.
	 */

	isz = FUNC4(p, 4 + 1, "%d, ", tm->tm_mday);
	if (isz < 0 || isz > 4)
		goto fail;
	p += isz;

	if (FUNC5(p, 4 + 1, "%Y", tm) == 0)
		goto fail;
	return buf;

fail:
	FUNC0(buf);
	return FUNC3("");
}