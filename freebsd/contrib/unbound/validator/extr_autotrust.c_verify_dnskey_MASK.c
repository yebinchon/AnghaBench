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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  dnskey_rrset; int /*<<< orphan*/  ds_rrset; } ;
struct module_qstate {int dummy; } ;
struct module_env {TYPE_1__* cfg; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_2__ {int harden_algo_downgrade; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_NEEDS_MAX ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,struct module_qstate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct module_env* env, struct val_env* ve,
        struct trust_anchor* tp, struct ub_packed_rrset_key* rrset,
	struct module_qstate* qstate)
{
	char* reason = NULL;
	uint8_t sigalg[ALGO_NEEDS_MAX+1];
	int downprot = env->cfg->harden_algo_downgrade;
	enum sec_status sec = FUNC1(env, ve, rrset,
		tp->ds_rrset, tp->dnskey_rrset, downprot?sigalg:NULL, &reason,
		qstate);
	/* sigalg is ignored, it returns algorithms signalled to exist, but
	 * in 5011 there are no other rrsets to check.  if downprot is
	 * enabled, then it checks that the DNSKEY is signed with all
	 * algorithms available in the trust store. */
	FUNC2(VERB_ALGO, "autotrust: validate DNSKEY with anchor: %s",
		FUNC0(sec));
	return sec == sec_status_secure;
}