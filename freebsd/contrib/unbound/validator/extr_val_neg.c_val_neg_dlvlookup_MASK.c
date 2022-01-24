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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct val_neg_zone {int /*<<< orphan*/  dclass; int /*<<< orphan*/ * name; scalar_t__ nsec3_hash; struct val_neg_zone* parent; int /*<<< orphan*/  in_use; } ;
struct val_neg_data {int /*<<< orphan*/  len; int /*<<< orphan*/ * name; struct val_neg_data* parent; int /*<<< orphan*/  in_use; } ;
struct val_neg_cache {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct query_info {int /*<<< orphan*/ * local_alias; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/ * qname; } ;
struct packed_rrset_data {scalar_t__ ttl; scalar_t__ security; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DLV ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC ; 
 scalar_t__ PACKED_RRSET_NSEC_AT_APEX ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct val_neg_zone*,int /*<<< orphan*/ *,size_t,int,struct val_neg_data**) ; 
 struct val_neg_zone* FUNC6 (struct val_neg_cache*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct val_neg_cache*,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct val_neg_cache*,struct val_neg_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ub_packed_rrset_key*,struct query_info*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ub_packed_rrset_key* FUNC11 (struct rrset_cache*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ sec_status_secure ; 
 int /*<<< orphan*/  FUNC12 (struct ub_packed_rrset_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

int FUNC14(struct val_neg_cache* neg, uint8_t* qname, size_t len,
        uint16_t qclass, struct rrset_cache* rrset_cache, time_t now)
{
	/* lookup closest zone */
	struct val_neg_zone* zone;
	struct val_neg_data* data;
	int labs;
	struct ub_packed_rrset_key* nsec;
	struct packed_rrset_data* d;
	uint32_t flags;
	uint8_t* wc;
	struct query_info qinfo;
	if(!neg) return 0;

	FUNC4(VERB_ALGO, "negcache dlvlookup", qname, 
		LDNS_RR_TYPE_DLV, qclass);
	
	labs = FUNC0(qname);
	FUNC1(&neg->lock);
	zone = FUNC6(neg, qname, len, labs, qclass);
	while(zone && !zone->in_use)
		zone = zone->parent;
	if(!zone) {
		FUNC2(&neg->lock);
		return 0;
	}
	FUNC4(VERB_ALGO, "negcache zone", zone->name, 0, 
		zone->dclass);

	/* DLV is defined to use NSEC only */
	if(zone->nsec3_hash) {
		FUNC2(&neg->lock);
		return 0;
	}

	/* lookup closest data record */
	(void)FUNC5(zone, qname, len, labs, &data);
	while(data && !data->in_use)
		data = data->parent;
	if(!data) {
		FUNC2(&neg->lock);
		return 0;
	}
	FUNC4(VERB_ALGO, "negcache rr", data->name, 
		LDNS_RR_TYPE_NSEC, zone->dclass);

	/* lookup rrset in rrset cache */
	flags = 0;
	if(FUNC10(data->name, zone->name) == 0)
		flags = PACKED_RRSET_NSEC_AT_APEX;
	nsec = FUNC11(rrset_cache, data->name, data->len,
		LDNS_RR_TYPE_NSEC, zone->dclass, flags, now, 0);

	/* check if secure and TTL ok */
	if(!nsec) {
		FUNC2(&neg->lock);
		return 0;
	}
	d = (struct packed_rrset_data*)nsec->entry.data;
	if(!d || now > d->ttl) {
		FUNC3(&nsec->entry.lock);
		/* delete data record if expired */
		FUNC7(neg, data);
		FUNC2(&neg->lock);
		return 0;
	}
	if(d->security != sec_status_secure) {
		FUNC3(&nsec->entry.lock);
		FUNC7(neg, data);
		FUNC2(&neg->lock);
		return 0;
	}
	FUNC13(VERB_ALGO, "negcache got secure rrset");

	/* check NSEC security */
	/* check if NSEC proves no DLV type exists */
	/* check if NSEC proves NXDOMAIN for qname */
	qinfo.qname = qname;
	qinfo.qtype = LDNS_RR_TYPE_DLV;
	qinfo.qclass = qclass;
	qinfo.local_alias = NULL;
	if(!FUNC9(nsec, &qinfo, &wc) &&
		!FUNC12(nsec, qname)) {
		/* the NSEC is not a denial for the DLV */
		FUNC3(&nsec->entry.lock);
		FUNC2(&neg->lock);
		FUNC13(VERB_ALGO, "negcache not proven");
		return 0;
	}
	/* so the NSEC was a NODATA proof, or NXDOMAIN proof. */

	/* no need to check for wildcard NSEC; no wildcards in DLV repos */
	/* no need to lookup SOA record for client; no response message */

	FUNC3(&nsec->entry.lock);
	/* if OK touch the LRU for neg_data element */
	FUNC8(neg, data);
	FUNC2(&neg->lock);
	FUNC13(VERB_ALGO, "negcache DLV denial proven");
	return 1;
}