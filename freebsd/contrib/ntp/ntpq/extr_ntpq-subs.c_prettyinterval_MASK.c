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

/* Variables and functions */
 scalar_t__ FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(
	char *buf,
	size_t cb,
	long diff
	)
{
	if (diff <= 0) {
		buf[0] = '-';
		buf[1] = 0;
		return buf;
	}

	if (diff <= 2048) {
		FUNC1(buf, cb, "%u", (unsigned int)diff);
		return buf;
	}

	diff = (diff + 29) / 60;
	if (diff <= 300) {
		FUNC1(buf, cb, "%um", (unsigned int)diff);
		return buf;
	}

	diff = (diff + 29) / 60;
	if (diff <= 96) {
		FUNC1(buf, cb, "%uh", (unsigned int)diff);
		return buf;
	}

	diff = (diff + 11) / 24;
	if (diff <= 999) {
		FUNC1(buf, cb, "%ud", (unsigned int)diff);
		return buf;
	}

	/* years are only approximated... */
	diff = (long)FUNC0(diff / 365.25 + 0.5);
	if (diff <= 999) {
		FUNC1(buf, cb, "%uy", (unsigned int)diff);
		return buf;
	}
	/* Ok, this amounts to infinity... */
	FUNC2(buf, "INF", cb);
	return buf;
}