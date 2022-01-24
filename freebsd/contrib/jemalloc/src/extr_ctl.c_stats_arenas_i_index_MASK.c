#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  ctl_named_node_t ;
struct TYPE_4__ {TYPE_1__** arenas; } ;
struct TYPE_3__ {int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 size_t UINT_MAX ; 
 size_t FUNC0 (size_t,int,int) ; 
 TYPE_2__* ctl_arenas ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * super_stats_arenas_i_node ; 

__attribute__((used)) static const ctl_named_node_t *
FUNC3(tsdn_t *tsdn, const size_t *mib, size_t miblen, size_t i) {
	const ctl_named_node_t *ret;
	size_t a;

	FUNC1(tsdn, &ctl_mtx);
	a = FUNC0(i, true, true);
	if (a == UINT_MAX || !ctl_arenas->arenas[a]->initialized) {
		ret = NULL;
		goto label_return;
	}

	ret = super_stats_arenas_i_node;
label_return:
	FUNC2(tsdn, &ctl_mtx);
	return ret;
}