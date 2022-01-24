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
struct ub_randstate {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ub_randstate*,int) ; 

int 
FUNC1(struct ub_randstate* rnd, int n, int m)
{
	int sel;
	if(n == m) /* 100% chance */
		return 1;
	/* we do not need secure random numbers here, but
	 * we do need it to be threadsafe, so we use this */
	sel = FUNC0(rnd, m); 
	return (sel < n);
}