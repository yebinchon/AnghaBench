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
struct TYPE_2__ {size_t dname_len; int /*<<< orphan*/  dname; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; scalar_t__ qclass; int /*<<< orphan*/ * qname; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ub_packed_rrset_key* 
FUNC3(struct query_info* qinfo, struct reply_info* rep)
{
	uint8_t* sname = qinfo->qname;
	size_t snamelen = qinfo->qname_len;
	size_t i;
	for(i=0; i<rep->an_numrrsets; i++) {
		struct ub_packed_rrset_key* s = rep->rrsets[i];
		/* first match type, for query of qtype cname */
		if(FUNC1(s->rk.type) == qinfo->qtype && 
			FUNC1(s->rk.rrset_class) == qinfo->qclass && 
			snamelen == s->rk.dname_len &&
			FUNC2(sname, s->rk.dname) == 0) {
			return s;
		}
		/* follow CNAME chain (if any) */
		if(FUNC1(s->rk.type) == LDNS_RR_TYPE_CNAME && 
			FUNC1(s->rk.rrset_class) == qinfo->qclass && 
			snamelen == s->rk.dname_len &&
			FUNC2(sname, s->rk.dname) == 0) {
			FUNC0(s, &sname, &snamelen);
		}
	}
	return NULL;
}