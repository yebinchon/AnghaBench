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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int) ; 

__attribute__((used)) static int
FUNC6(size_t l2, void *p)
{
	struct timeval *tv = (struct timeval*)p;
	time_t tv_sec;
	char *p1, *p2;

	if (l2 != sizeof(*tv)) {
		FUNC5("S_timeval %zu != %zu", l2, sizeof(*tv));
		return (1);
	}
	FUNC3(hflag ? "{ sec = %'jd, usec = %'ld } " :
		"{ sec = %jd, usec = %ld } ",
		(intmax_t)tv->tv_sec, tv->tv_usec);
	tv_sec = tv->tv_sec;
	p1 = FUNC4(FUNC0(&tv_sec));
	for (p2=p1; *p2 ; p2++)
		if (*p2 == '\n')
			*p2 = '\0';
	FUNC1(p1, stdout);
	FUNC2(p1);
	return (0);
}