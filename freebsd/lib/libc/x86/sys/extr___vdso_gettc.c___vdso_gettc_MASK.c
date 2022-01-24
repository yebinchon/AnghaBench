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
typedef  size_t uint32_t ;
typedef  size_t u_int ;
struct vdso_timehands {int th_algo; size_t th_x86_hpet_idx; int /*<<< orphan*/  th_x86_shift; } ;

/* Variables and functions */
 int ENOSYS ; 
 size_t HPET_DEV_MAP_MAX ; 
 int /*<<< orphan*/  HPET_MAIN_COUNTER ; 
 char volatile* MAP_FAILED ; 
#define  VDSO_TH_ALGO_X86_HPET 130 
#define  VDSO_TH_ALGO_X86_HVTSC 129 
#define  VDSO_TH_ALGO_X86_TSC 128 
 size_t FUNC0 (struct vdso_timehands const*) ; 
 int FUNC1 (char volatile*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 () ; 
 scalar_t__ FUNC5 (uintptr_t volatile*) ; 
 int /*<<< orphan*/ * hpet_dev_map ; 
 char volatile* hyperv_ref_tsc ; 

int
FUNC6(const struct vdso_timehands *th, u_int *tc)
{
	volatile char *map;
	uint32_t idx;

	switch (th->th_algo) {
	case VDSO_TH_ALGO_X86_TSC:
		*tc = th->th_x86_shift > 0 ? FUNC0(th) :
		    FUNC4();
		return (0);
	case VDSO_TH_ALGO_X86_HPET:
		idx = th->th_x86_hpet_idx;
		if (idx >= HPET_DEV_MAP_MAX)
			return (ENOSYS);
		map = (volatile char *)FUNC5(
		    (volatile uintptr_t *)&hpet_dev_map[idx]);
		if (map == NULL) {
			FUNC2(idx);
			map = (volatile char *)FUNC5(
			    (volatile uintptr_t *)&hpet_dev_map[idx]);
		}
		if (map == MAP_FAILED)
			return (ENOSYS);
		*tc = *(volatile uint32_t *)(map + HPET_MAIN_COUNTER);
		return (0);
#ifdef WANT_HYPERV
	case VDSO_TH_ALGO_X86_HVTSC:
		if (hyperv_ref_tsc == NULL)
			__vdso_init_hyperv_tsc();
		if (hyperv_ref_tsc == MAP_FAILED)
			return (ENOSYS);
		return (__vdso_hyperv_tsc(hyperv_ref_tsc, tc));
#endif
	default:
		return (ENOSYS);
	}
}