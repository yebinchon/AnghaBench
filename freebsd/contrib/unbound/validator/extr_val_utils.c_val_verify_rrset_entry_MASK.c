#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct val_env {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; struct ub_packed_rrset_key* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; scalar_t__ flags; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_3__ entry; TYPE_2__ rk; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct key_entry_key {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  key_class; TYPE_1__ entry; } ;
struct key_entry_data {int /*<<< orphan*/  algo; int /*<<< orphan*/  rrset_data; int /*<<< orphan*/  rrset_type; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 

enum sec_status 
FUNC2(struct module_env* env, struct val_env* ve,
        struct ub_packed_rrset_key* rrset, struct key_entry_key* kkey,
	char** reason, sldns_pkt_section section, struct module_qstate* qstate)
{
	/* temporary dnskey rrset-key */
	struct ub_packed_rrset_key dnskey;
	struct key_entry_data* kd = (struct key_entry_data*)kkey->entry.data;
	enum sec_status sec;
	dnskey.rk.type = FUNC0(kd->rrset_type);
	dnskey.rk.rrset_class = FUNC0(kkey->key_class);
	dnskey.rk.flags = 0;
	dnskey.rk.dname = kkey->name;
	dnskey.rk.dname_len = kkey->namelen;
	dnskey.entry.key = &dnskey;
	dnskey.entry.data = kd->rrset_data;
	sec = FUNC1(env, ve, rrset, &dnskey, kd->algo, reason,
		section, qstate);
	return sec;
}