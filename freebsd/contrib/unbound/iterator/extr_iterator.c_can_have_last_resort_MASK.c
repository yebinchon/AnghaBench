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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct module_env {int /*<<< orphan*/  fwds; TYPE_1__* hints; } ;
struct iter_hints_stub {struct delegpt* dp; } ;
struct delegpt {scalar_t__ has_parent_side_NS; } ;
struct TYPE_2__ {int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct delegpt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct module_env* env, uint8_t* nm, size_t nmlen,
	uint16_t qclass, struct delegpt** retdp)
{
	struct delegpt* fwddp;
	struct iter_hints_stub* stub;
	int labs = FUNC0(nm);
	/* do not process a last resort (the parent side) if a stub
	 * or forward is configured, because we do not want to go 'above'
	 * the configured servers */
	if(!FUNC1(nm) && (stub = (struct iter_hints_stub*)
		FUNC3(&env->hints->tree, nm, nmlen, labs, qclass)) &&
		/* has_parent side is turned off for stub_first, where we
		 * are allowed to go to the parent */
		stub->dp->has_parent_side_NS) {
		if(retdp) *retdp = stub->dp;
		return 0;
	}
	if((fwddp = FUNC2(env->fwds, nm, qclass)) &&
		/* has_parent_side is turned off for forward_first, where
		 * we are allowed to go to the parent */
		fwddp->has_parent_side_NS) {
		if(retdp) *retdp = fwddp;
		return 0;
	}
	return 1;
}