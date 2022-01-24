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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct ub_packed_rrset_key {int /*<<< orphan*/  id; TYPE_2__ rk; TYPE_1__ entry; } ;
struct rrset_ref {int /*<<< orphan*/  id; struct ub_packed_rrset_key* key; } ;
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  alloc; int /*<<< orphan*/  rrset_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKED_RRSET_PARENT_SIDE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ub_packed_rrset_key* FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rrset_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void 
FUNC4(struct module_env* env, 
	struct ub_packed_rrset_key* rrset)
{
	struct rrset_ref ref;
	rrset = FUNC1(rrset, env->alloc, *env->now);
	if(!rrset) {
		FUNC0("malloc failure in store_parentside_rrset");
		return;
	}
	rrset->rk.flags |= PACKED_RRSET_PARENT_SIDE;
	rrset->entry.hash = FUNC3(&rrset->rk);
	ref.key = rrset;
	ref.id = rrset->id;
	/* ignore ret: if it was in the cache, ref updated */
	(void)FUNC2(env->rrset_cache, &ref, env->alloc, *env->now);
}