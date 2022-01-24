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
struct vdso_timehands {scalar_t__ th_algo; scalar_t__ th_physical; } ;

/* Variables and functions */
 int ENOSYS ; 
 scalar_t__ VDSO_TH_ALGO_ARM_GENTIM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(const struct vdso_timehands *th, u_int *tc)
{

	if (th->th_algo != VDSO_TH_ALGO_ARM_GENTIM)
		return (ENOSYS);
	__asm __volatile("isb" : : : "memory");
	*tc = th->th_physical == 0 ? FUNC1() : FUNC0();
	return (0);
}