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
struct trust_anchor {TYPE_1__* autr; } ;
struct module_env {int dummy; } ;
struct autr_ta {scalar_t__ last_change; scalar_t__ s; struct autr_ta* next; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  rr_len; int /*<<< orphan*/  rr; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;

/* Variables and functions */
 scalar_t__ AUTR_STATE_ADDPEND ; 
 scalar_t__ AUTR_STATE_VALID ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct autr_ta*,int*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct autr_ta*) ; 
 int /*<<< orphan*/  FUNC3 (struct autr_ta*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct module_env* env, struct trust_anchor* tp, int* changed)
{
	/* search for VALID ZSKs */
	struct autr_ta* anchor;
	int validzsk = 0;
	int validksk = 0;
	for(anchor = tp->autr->keys; anchor; anchor = anchor->next) {
		/* last_change test makes sure it was manually configured */
		if(FUNC1(anchor->rr, anchor->rr_len,
			anchor->dname_len) == LDNS_RR_TYPE_DNSKEY &&
			anchor->last_change == 0 && 
			!FUNC2(anchor) &&
			anchor->s == AUTR_STATE_VALID)
                        validzsk++;
	}
	if(validzsk == 0)
		return 0;
	for(anchor = tp->autr->keys; anchor; anchor = anchor->next) {
                if (FUNC2(anchor) && 
			anchor->s == AUTR_STATE_ADDPEND) {
			FUNC3(anchor, VERB_ALGO, "trust KSK from "
				"ZSK(config)");
			FUNC0(env, anchor, changed, 
				AUTR_STATE_VALID);
			validksk++;
		}
	}
	return validksk;
}