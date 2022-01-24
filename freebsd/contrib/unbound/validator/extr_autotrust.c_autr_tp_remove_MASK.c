#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_9__ {int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct TYPE_8__ {struct trust_anchor* key; } ;
struct TYPE_7__ {struct trust_anchor* key; } ;
struct trust_anchor {int revoked; scalar_t__ next_probe_time; struct trust_anchor* autr; int /*<<< orphan*/  lock; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; TYPE_2__ pnode; TYPE_1__ node; } ;
struct module_env {TYPE_5__* anchors; } ;
struct autr_point_data {int revoked; scalar_t__ next_probe_time; struct autr_point_data* autr; int /*<<< orphan*/  lock; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; TYPE_2__ pnode; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  pd ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_4__* autr; int /*<<< orphan*/ * tree; } ;
struct TYPE_10__ {int /*<<< orphan*/  probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct trust_anchor*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC8 (struct module_env*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC10(struct module_env* env, struct trust_anchor* tp,
	struct ub_packed_rrset_key* dnskey_rrset)
{
	struct trust_anchor* del_tp;
	struct trust_anchor key;
	struct autr_point_data pd;
	time_t mold, mnew;

	FUNC5(VERB_OPS, "trust point was revoked",
		tp->name, LDNS_RR_TYPE_DNSKEY, tp->dclass);
	tp->autr->revoked = 1;

	/* use space allocated for dnskey_rrset to save name of anchor */
	FUNC6(&key, 0, sizeof(key));
	FUNC6(&pd, 0, sizeof(pd));
	key.autr = &pd;
	key.node.key = &key;
	pd.pnode.key = &key;
	pd.next_probe_time = tp->autr->next_probe_time;
	key.name = dnskey_rrset->rk.dname;
	key.namelen = tp->namelen;
	key.namelabs = tp->namelabs;
	key.dclass = tp->dclass;

	/* unlock */
	FUNC4(&tp->lock);

	/* take from tree. It could be deleted by someone else,hence (void). */
	FUNC3(&env->anchors->lock);
	del_tp = (struct trust_anchor*)FUNC7(env->anchors->tree, &key);
	mold = FUNC9(env->anchors);
	(void)FUNC7(&env->anchors->autr->probe, &key);
	mnew = FUNC9(env->anchors);
	FUNC0(env->anchors);
	FUNC4(&env->anchors->lock);

	/* if !del_tp then the trust point is no longer present in the tree,
	 * it was deleted by someone else, who will write the zonefile and
	 * clean up the structure */
	if(del_tp) {
		/* save on disk */
		del_tp->autr->next_probe_time = 0; /* no more probing for it */
		FUNC2(env, del_tp);

		/* delete */
		FUNC1(del_tp);
	}
	if(mold != mnew) {
		FUNC8(env);
	}
}