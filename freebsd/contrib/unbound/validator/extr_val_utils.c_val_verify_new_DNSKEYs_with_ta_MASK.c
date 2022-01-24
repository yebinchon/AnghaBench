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
struct TYPE_2__ {int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct module_qstate {int dummy; } ;
struct module_env {int /*<<< orphan*/ * now; } ;
struct key_entry_key {int dummy; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  ALGO_NEEDS_MAX ; 
 int /*<<< orphan*/  BOGUS_KEY_TTL ; 
 struct key_entry_key* FUNC0 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key_entry_key* FUNC1 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key_entry_key* FUNC2 (struct regional*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ub_packed_rrset_key*) ; 
 int sec_status_insecure ; 
 int sec_status_secure ; 
 int FUNC5 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int /*<<< orphan*/ *,char**,struct module_qstate*) ; 

struct key_entry_key* 
FUNC6(struct regional* region, struct module_env* env,
	struct val_env* ve, struct ub_packed_rrset_key* dnskey_rrset, 
	struct ub_packed_rrset_key* ta_ds_rrset,
	struct ub_packed_rrset_key* ta_dnskey_rrset, int downprot,
	char** reason, struct module_qstate* qstate)
{
	uint8_t sigalg[ALGO_NEEDS_MAX+1];
	enum sec_status sec = FUNC5(env, ve, 
		dnskey_rrset, ta_ds_rrset, ta_dnskey_rrset,
		downprot?sigalg:NULL, reason, qstate);

	if(sec == sec_status_secure) {
		return FUNC2(region, 
			dnskey_rrset->rk.dname, dnskey_rrset->rk.dname_len,
			FUNC3(dnskey_rrset->rk.rrset_class), dnskey_rrset,
			downprot?sigalg:NULL, *env->now);
	} else if(sec == sec_status_insecure) {
		return FUNC1(region, dnskey_rrset->rk.dname,
			dnskey_rrset->rk.dname_len, 
			FUNC3(dnskey_rrset->rk.rrset_class),
			FUNC4(dnskey_rrset), *env->now);
	}
	return FUNC0(region, dnskey_rrset->rk.dname,
		dnskey_rrset->rk.dname_len, FUNC3(dnskey_rrset->rk.rrset_class),
		BOGUS_KEY_TTL, *env->now);
}