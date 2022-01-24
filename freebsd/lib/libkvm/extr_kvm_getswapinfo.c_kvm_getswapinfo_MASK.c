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
struct kvm_swap {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct kvm_swap*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct kvm_swap*,int,int) ; 
 scalar_t__ kvm_swap_nl_cached ; 

int
FUNC3(kvm_t *kd, struct kvm_swap *swap_ary, int swap_max, int flags)
{

	/*
	 * clear cache
	 */
	if (kd == NULL) {
		kvm_swap_nl_cached = 0;
		return(0);
	}

	if (FUNC0(kd)) {
		return FUNC2(kd, swap_ary, swap_max, flags);
	} else {
		return FUNC1(kd, swap_ary, swap_max, flags);
	}
}