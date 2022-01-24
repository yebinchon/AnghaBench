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
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char const) ; 

__attribute__((used)) static int
FUNC4(const char *list, cpuset_t *mask)
{
	enum { NONE, NUM, DASH } state;
	int lastnum;
	int curnum;
	const char *l;

	state = NONE;
	curnum = lastnum = 0;
	for (l = list; *l != '\0';) {
		if (FUNC3(*l)) {
			curnum = FUNC1(l);
			if (curnum > CPU_SETSIZE)
				FUNC2(EXIT_FAILURE,
				    "Only %d cpus supported", CPU_SETSIZE);
			while (FUNC3(*l))
				l++;
			switch (state) {
			case NONE:
				lastnum = curnum;
				state = NUM;
				break;
			case DASH:
				for (; lastnum <= curnum; lastnum++)
					FUNC0(lastnum, mask);
				state = NONE;
				break;
			case NUM:
			default:
				return (0);
			}
			continue;
		}
		switch (*l) {
		case ',':
			switch (state) {
			case NONE:
				break;
			case NUM:
				FUNC0(curnum, mask);
				state = NONE;
				break;
			case DASH:
				return (0);
				break;
			}
			break;
		case '-':
			if (state != NUM)
				return (0);
			state = DASH;
			break;
		default:
			return (0);
		}
		l++;
	}
	switch (state) {
		case NONE:
			break;
		case NUM:
			FUNC0(curnum, mask);
			break;
		case DASH:
			return (0);
	}
	return (1);
}