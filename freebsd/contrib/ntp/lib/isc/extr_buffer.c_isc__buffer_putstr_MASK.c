#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_6__ {int /*<<< orphan*/  used; } ;
typedef  TYPE_1__ isc_buffer_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 unsigned char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

void
FUNC6(isc_buffer_t *b, const char *source) {
	size_t l;
	unsigned char *cp;

	FUNC1(FUNC0(b));
	FUNC1(source != NULL);

	/*
	 * Do not use ISC__BUFFER_PUTSTR(), so strlen is only done once.
	 */
	l = FUNC5(source);

	FUNC1(l <= FUNC2(b));

	cp = FUNC3(b);
	FUNC4(cp, source, l);
	b->used += (u_int)l; /* checked above - no overflow here */
}