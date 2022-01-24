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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  unsigned int isc_stdtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ US_PER_S ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 
 int FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 

void
FUNC5(isc_stdtime_t *t) {
	struct timeval tv;

	/*
	 * Set 't' to the number of seconds since 00:00:00 UTC, January 1,
	 * 1970.
	 */

	FUNC1(t != NULL);

	FUNC2(FUNC4(&tv, NULL) != -1);

#if ISC_FIX_TV_USEC
	fix_tv_usec(&tv);
	INSIST(tv.tv_usec >= 0);
#else
	FUNC0(tv.tv_usec >= 0 && tv.tv_usec < US_PER_S);
#endif

	*t = (unsigned int)tv.tv_sec;
}