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
struct val_qstate {int wait_prime_ta; int /*<<< orphan*/  trust_anchor_name; int /*<<< orphan*/  trust_anchor_labs; int /*<<< orphan*/  trust_anchor_len; } ;
struct trust_anchor {int /*<<< orphan*/  namelabs; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  dclass; } ;
struct module_qstate {int /*<<< orphan*/  region; TYPE_2__* env; } ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {scalar_t__ trust_anchor_signaling; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CD ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,int,struct trust_anchor*) ; 
 int FUNC1 (struct module_qstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct module_qstate* qstate, struct val_qstate* vq,
	int id, struct trust_anchor* toprime)
{
	struct module_qstate* newq = NULL;
	int ret = FUNC1(qstate, id, toprime->name, toprime->namelen,
		LDNS_RR_TYPE_DNSKEY, toprime->dclass, BIT_CD, &newq, 0);

	if(newq && qstate->env->cfg->trust_anchor_signaling &&
		!FUNC0(qstate, id, toprime)) {
		FUNC4(VERB_ALGO, "keytag signaling query failed");
		return 0;
	}

	if(!ret) {
		FUNC4(VERB_ALGO, "Could not prime trust anchor");
		return 0;
	}
	/* ignore newq; validator does not need state created for that
	 * query, and its a 'normal' for iterator as well */
	vq->wait_prime_ta = 1; /* to elicit PRIME_RESP_STATE processing 
		from the validator inform_super() routine */
	/* store trust anchor name for later lookup when prime returns */
	vq->trust_anchor_name = FUNC3(qstate->region,
		toprime->name, toprime->namelen);
	vq->trust_anchor_len = toprime->namelen;
	vq->trust_anchor_labs = toprime->namelabs;
	if(!vq->trust_anchor_name) {
		FUNC2("Could not prime trust anchor: out of memory");
		return 0;
	}
	return 1;
}