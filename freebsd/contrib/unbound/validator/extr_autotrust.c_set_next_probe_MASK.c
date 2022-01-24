#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_7__ {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct TYPE_6__ {struct trust_anchor* key; } ;
struct trust_anchor {TYPE_4__* autr; int /*<<< orphan*/  lock; int /*<<< orphan*/  dclass; int /*<<< orphan*/  name; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; TYPE_1__ node; } ;
struct module_env {scalar_t__* now; TYPE_5__* anchors; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_3__* autr; int /*<<< orphan*/  tree; } ;
struct TYPE_9__ {scalar_t__ next_probe_time; int /*<<< orphan*/  pnode; int /*<<< orphan*/  query_interval; } ;
struct TYPE_8__ {int /*<<< orphan*/  probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (struct module_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC8 (struct module_env*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 

__attribute__((used)) static int
FUNC11(struct module_env* env, struct trust_anchor* tp,
	struct ub_packed_rrset_key* dnskey_rrset)
{
	struct trust_anchor key, *tp2;
	time_t mold, mnew;
	/* use memory allocated in rrset for temporary name storage */
	key.node.key = &key;
	key.name = dnskey_rrset->rk.dname;
	key.namelen = dnskey_rrset->rk.dname_len;
	key.namelabs = FUNC1(key.name);
	key.dclass = tp->dclass;
	FUNC3(&tp->lock);

	/* fetch tp again and lock anchors, so that we can modify the trees */
	FUNC2(&env->anchors->lock);
	tp2 = (struct trust_anchor*)FUNC7(env->anchors->tree, &key);
	if(!tp2) {
		FUNC9(VERB_ALGO, "trustpoint was deleted in set_next_probe");
		FUNC3(&env->anchors->lock);
		return 0;
	}
	FUNC4(tp == tp2);
	FUNC2(&tp->lock);

	/* schedule */
	mold = FUNC10(env->anchors);
	(void)FUNC5(&env->anchors->autr->probe, tp);
	tp->autr->next_probe_time = FUNC0(env, 
		tp->autr->query_interval);
	(void)FUNC6(&env->anchors->autr->probe, &tp->autr->pnode);
	mnew = FUNC10(env->anchors);

	FUNC3(&env->anchors->lock);
	FUNC9(VERB_ALGO, "next probe set in %d seconds", 
		(int)tp->autr->next_probe_time - (int)*env->now);
	if(mold != mnew) {
		FUNC8(env);
	}
	return 1;
}