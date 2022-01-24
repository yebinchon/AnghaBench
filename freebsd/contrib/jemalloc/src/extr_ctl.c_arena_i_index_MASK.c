#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  ctl_named_node_t ;
struct TYPE_2__ {size_t narenas; } ;

/* Variables and functions */
#define  MALLCTL_ARENAS_ALL 129 
#define  MALLCTL_ARENAS_DESTROYED 128 
 TYPE_1__* ctl_arenas ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * super_arena_i_node ; 

__attribute__((used)) static const ctl_named_node_t *
FUNC2(tsdn_t *tsdn, const size_t *mib, size_t miblen, size_t i) {
	const ctl_named_node_t *ret;

	FUNC0(tsdn, &ctl_mtx);
	switch (i) {
	case MALLCTL_ARENAS_ALL:
	case MALLCTL_ARENAS_DESTROYED:
		break;
	default:
		if (i > ctl_arenas->narenas) {
			ret = NULL;
			goto label_return;
		}
		break;
	}

	ret = super_arena_i_node;
label_return:
	FUNC1(tsdn, &ctl_mtx);
	return ret;
}