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
 int const WALLSIG ; 
 int const WALTSIG ; 
 int const WCONTINUED ; 
 int const WEXITED ; 
 int const WNOWAIT ; 
 int const WSTOPPED ; 
 int const WTRAPPED ; 
 int const WUNTRACED ; 
 size_t FUNC0 (size_t) ; 
 int const __WALL ; 
 int const __WCLONE ; 
 size_t FUNC1 (int const*) ; 

__attribute__((used)) static int
FUNC2(size_t pos)
{
	int rv = 0;
	size_t n;

	const int special[] = {
		0,
#ifdef	__NetBSD__
		WALLSIG,
		WALTSIG,
		__WALL,		/* Linux compatibility, equal to WALLSIG */
		__WCLONE	/* Linux compatibility, equal to WALTSIG */
#endif
	};

	const int matrix[] = {
		WNOWAIT,
		WEXITED,
		WUNTRACED,
		WSTOPPED,	/* SUS compatibility, equal to WUNTRACED */
		WTRAPPED,
		WCONTINUED
	};

	const size_t M = (1 << FUNC1(special)) - 1;

	if (pos < FUNC1(special))
		return special[pos];

	pos -= FUNC1(special);

	++pos; /* Don't start with empty mask */

	if (pos > M)
		return -1;

	for (n = 0; n < FUNC1(special); n++) {
		if (pos & FUNC0(n))
			rv |= matrix[n];
	}

	return rv;
}