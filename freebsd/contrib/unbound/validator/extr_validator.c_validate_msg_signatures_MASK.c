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
typedef  int /*<<< orphan*/  uint8_t ;
struct val_env {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; void* security; } ;
struct query_info {scalar_t__ qtype; } ;
struct packed_rrset_data {int security; int /*<<< orphan*/  trust; } ;
struct module_qstate {int /*<<< orphan*/  reply_origin; } ;
struct module_env {TYPE_3__* cfg; } ;
struct key_entry_key {int /*<<< orphan*/  name; } ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_6__ {int /*<<< orphan*/  val_clean_additional; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_SECTION_ADDITIONAL ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct module_qstate*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct module_qstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rrset_trust_validated ; 
 void* sec_status_bogus ; 
 int sec_status_secure ; 
 int /*<<< orphan*/  FUNC6 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC7 (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,struct key_entry_key*,char**,int /*<<< orphan*/ ,struct module_qstate*) ; 

__attribute__((used)) static int
FUNC8(struct module_qstate* qstate, struct module_env* env,
	struct val_env* ve, struct query_info* qchase,
	struct reply_info* chase_reply, struct key_entry_key* key_entry)
{
	uint8_t* sname;
	size_t i, slen;
	struct ub_packed_rrset_key* s;
	enum sec_status sec;
	int dname_seen = 0;
	char* reason = NULL;

	/* validate the ANSWER section */
	for(i=0; i<chase_reply->an_numrrsets; i++) {
		s = chase_reply->rrsets[i];
		/* Skip the CNAME following a (validated) DNAME.
		 * Because of the normalization routines in the iterator, 
		 * there will always be an unsigned CNAME following a DNAME 
		 * (unless qtype=DNAME). */
		if(dname_seen && FUNC4(s->rk.type) == LDNS_RR_TYPE_CNAME) {
			dname_seen = 0;
			/* CNAME was synthesized by our own iterator */
			/* since the DNAME verified, mark the CNAME as secure */
			((struct packed_rrset_data*)s->entry.data)->security =
				sec_status_secure;
			((struct packed_rrset_data*)s->entry.data)->trust =
				rrset_trust_validated;
			continue;
		}

		/* Verify the answer rrset */
		sec = FUNC7(env, ve, s, key_entry, &reason,
			LDNS_SECTION_ANSWER, qstate);
		/* If the (answer) rrset failed to validate, then this 
		 * message is BAD. */
		if(sec != sec_status_secure) {
			FUNC3(VERB_QUERY, "validator: response "
				"has failed ANSWER rrset:", s->rk.dname,
				FUNC4(s->rk.type), FUNC4(s->rk.rrset_class));
			FUNC0(qstate, reason);
			if(FUNC4(s->rk.type) == LDNS_RR_TYPE_CNAME)
				FUNC0(qstate, "for CNAME");
			else if(FUNC4(s->rk.type) == LDNS_RR_TYPE_DNAME)
				FUNC0(qstate, "for DNAME");
			FUNC1(qstate, qstate->reply_origin);
			chase_reply->security = sec_status_bogus;
			return 0;
		}

		/* Notice a DNAME that should be followed by an unsigned 
		 * CNAME. */
		if(qchase->qtype != LDNS_RR_TYPE_DNAME && 
			FUNC4(s->rk.type) == LDNS_RR_TYPE_DNAME) {
			dname_seen = 1;
		}
	}

	/* validate the AUTHORITY section */
	for(i=chase_reply->an_numrrsets; i<chase_reply->an_numrrsets+
		chase_reply->ns_numrrsets; i++) {
		s = chase_reply->rrsets[i];
		sec = FUNC7(env, ve, s, key_entry, &reason,
			LDNS_SECTION_AUTHORITY, qstate);
		/* If anything in the authority section fails to be secure, 
		 * we have a bad message. */
		if(sec != sec_status_secure) {
			FUNC3(VERB_QUERY, "validator: response "
				"has failed AUTHORITY rrset:", s->rk.dname,
				FUNC4(s->rk.type), FUNC4(s->rk.rrset_class));
			FUNC0(qstate, reason);
			FUNC1(qstate, qstate->reply_origin);
			FUNC2(qstate, s);
			chase_reply->security = sec_status_bogus;
			return 0;
		}
	}

	/* If set, the validator should clean the additional section of
	 * secure messages. */
	if(!env->cfg->val_clean_additional)
		return 1;
	/* attempt to validate the ADDITIONAL section rrsets */
	for(i=chase_reply->an_numrrsets+chase_reply->ns_numrrsets; 
		i<chase_reply->rrset_count; i++) {
		s = chase_reply->rrsets[i];
		/* only validate rrs that have signatures with the key */
		/* leave others unchecked, those get removed later on too */
		FUNC6(s, &sname, &slen);
		if(sname && FUNC5(sname, key_entry->name)==0)
			(void)FUNC7(env, ve, s, key_entry,
				&reason, LDNS_SECTION_ADDITIONAL, qstate);
		/* the additional section can fail to be secure, 
		 * it is optional, check signature in case we need
		 * to clean the additional section later. */
	}

	return 1;
}