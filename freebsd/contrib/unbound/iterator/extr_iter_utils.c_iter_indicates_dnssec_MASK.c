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
typedef  int /*<<< orphan*/  uint16_t ;
struct trust_anchor {scalar_t__ numDS; scalar_t__ numDNSKEY; int /*<<< orphan*/  lock; } ;
struct module_env {int /*<<< orphan*/  scratch; int /*<<< orphan*/ * now; scalar_t__ key_cache; int /*<<< orphan*/  anchors; } ;
struct key_entry_key {int /*<<< orphan*/  name; } ;
struct dns_msg {scalar_t__ rep; } ;
struct delegpt {int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  namelabs; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 struct trust_anchor* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key_entry_key* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct key_entry_key*) ; 
 scalar_t__ FUNC3 (struct key_entry_key*) ; 
 scalar_t__ FUNC4 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC9(struct module_env* env, struct delegpt* dp,
        struct dns_msg* msg, uint16_t dclass)
{
	struct trust_anchor* a;
	/* information not available, !env->anchors can be common */
	if(!env || !env->anchors || !dp || !dp->name)
		return 0;
	/* a trust anchor exists with this name, RRSIGs expected */
	if((a=FUNC0(env->anchors, dp->name, dp->namelabs, dp->namelen,
		dclass))) {
		if(a->numDS == 0 && a->numDNSKEY == 0) {
			/* insecure trust point */
			FUNC5(&a->lock);
			return 0;
		}
		FUNC5(&a->lock);
		return 1;
	}
	/* see if DS rrset was given, in AUTH section */
	if(msg && msg->rep &&
		FUNC8(msg->rep, dp->name, dp->namelen,
		LDNS_RR_TYPE_DS, dclass))
		return 1;
	/* look in key cache */
	if(env->key_cache) {
		struct key_entry_key* kk = FUNC1(env->key_cache,
			dp->name, dp->namelen, dclass, env->scratch, *env->now);
		if(kk) {
			if(FUNC6(kk->name, dp->name) == 0) {
			  if(FUNC3(kk) || FUNC2(kk)) {
				FUNC7(env->scratch);
				return 1;
			  } else if(FUNC4(kk)) {
				FUNC7(env->scratch);
				return 0;
			  }
			}
			FUNC7(env->scratch);
		}
	}
	return 0;
}