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
struct regional {int dummy; } ;
struct query_info {scalar_t__ qtype; } ;
struct TYPE_2__ {int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct dns_msg {TYPE_1__ qinfo; } ;
struct auth_zone {int dummy; } ;
struct auth_rrset {int /*<<< orphan*/  data; } ;
struct auth_data {size_t namelen; int /*<<< orphan*/ * name; scalar_t__ rrsets; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,struct regional*,struct dns_msg*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dns_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct auth_rrset* FUNC2 (struct auth_data*,scalar_t__) ; 
 struct auth_rrset* FUNC3 (struct auth_zone*,struct auth_data**) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_zone*,scalar_t__,struct regional*,struct dns_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 
 int /*<<< orphan*/  FUNC9 (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ; 

__attribute__((used)) static int
FUNC10(struct auth_zone* z, struct query_info* qinfo,
	struct regional* region, struct dns_msg* msg, struct auth_data* ce,
	struct auth_data* wildcard, struct auth_data* node)
{
	struct auth_rrset* rrset, *nsec;
	int insert_ce = 0;
	if((rrset=FUNC2(wildcard, qinfo->qtype)) != NULL) {
		/* wildcard has type, add it */
		if(!FUNC8(z, region, msg, wildcard, rrset))
			return 0;
		FUNC1(msg, wildcard->name, msg->qinfo.qname,
			msg->qinfo.qname_len, 1);
	} else if((rrset=FUNC2(wildcard, LDNS_RR_TYPE_CNAME))!=NULL) {
		/* wildcard has cname instead, do that */
		if(!FUNC8(z, region, msg, wildcard, rrset))
			return 0;
		FUNC1(msg, wildcard->name, msg->qinfo.qname,
			msg->qinfo.qname_len, 1);
		if(!FUNC7(z, qinfo->qtype, region, msg,
			rrset->data))
			return 0;
	} else if(qinfo->qtype == LDNS_RR_TYPE_ANY && wildcard->rrsets) {
		/* add ANY rrsets from wildcard node */
		if(!FUNC4(z, region, msg, wildcard))
			return 0;
		FUNC1(msg, wildcard->name, msg->qinfo.qname,
			msg->qinfo.qname_len, 1);
	} else {
		/* wildcard has nodata, notype answer */
		/* call other notype routine for dnssec notype denials */
		if(!FUNC5(z, region, msg, wildcard))
			return 0;
		/* because the notype, there is no positive data with an
		 * RRSIG that indicates the wildcard position.  Thus the
		 * wildcard qname denial needs to have a CE nsec3. */
		insert_ce = 1;
	}

	/* ce and node for dnssec denial of wildcard original name */
	if((nsec=FUNC3(z, &node)) != NULL) {
		if(!FUNC9(z, region, msg, node, nsec)) return 0;
	} else if(ce) {
		uint8_t* wildup = wildcard->name;
		size_t wilduplen= wildcard->namelen;
		FUNC6(&wildup, &wilduplen);
		if(!FUNC0(z, region, msg, wildup,
			wilduplen, msg->qinfo.qname,
			msg->qinfo.qname_len, 0, insert_ce, 1, 0))
			return 0;
	}

	/* fixup name of wildcard from *.zone to qname, use already allocated
	 * pointer to msg qname */
	FUNC1(msg, wildcard->name, msg->qinfo.qname,
		msg->qinfo.qname_len, 0);
	return 1;
}