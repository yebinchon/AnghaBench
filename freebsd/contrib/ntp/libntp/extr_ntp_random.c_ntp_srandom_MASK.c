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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 scalar_t__ TYPE_0 ; 
 unsigned long* fptr ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 () ; 
 long rand_deg ; 
 size_t rand_sep ; 
 scalar_t__ rand_type ; 
 unsigned long* rptr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long* state ; 

void
FUNC3(
	unsigned long x
	)
{
	long i;

	if (rand_type == TYPE_0) {
		state[0] = x;
	} else {
		state[0] = x;
		for (i = 1; i < rand_deg; i++)
			state[i] = FUNC0(state[i - 1]);
		fptr = &state[rand_sep];
		rptr = &state[0];
		for (i = 0; i < 10 * rand_deg; i++)
			x = FUNC1();
	}

	/* seed the likely faster (and poorer) rand() as well */
	FUNC2((u_int)x);
}