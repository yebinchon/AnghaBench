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

/* Variables and functions */
 scalar_t__ CurrentPid ; 
 scalar_t__ FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4()
{
#if HASSRANDOMDEV
	srandomdev();
#else /* HASSRANDOMDEV */
	long seed;
	struct timeval t;

	seed = (long) CurrentPid;
	if (FUNC0(&t, NULL) >= 0)
		seed += t.tv_sec + t.tv_usec;

# if HASRANDOM
	(void) srandom(seed);
# else /* HASRANDOM */
	(void) FUNC1((unsigned int) seed);
# endif /* HASRANDOM */
#endif /* HASSRANDOMDEV */
}