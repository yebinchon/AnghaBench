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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  time_t ;
struct val_neg_zone {int /*<<< orphan*/  dclass; int /*<<< orphan*/  name; int /*<<< orphan*/  nsec3_hash; } ;
struct val_neg_data {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct nsec3_cached_hash {size_t hash_len; size_t b32_len; scalar_t__* b32; scalar_t__* hash; } ;
struct dns_msg {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  nc_b32 ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int NSEC3_SHA_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 struct dns_msg* FUNC1 (scalar_t__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regional*,int) ; 
 struct ub_packed_rrset_key* FUNC2 (struct rrset_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regional*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct val_neg_data* FUNC3 (struct val_neg_zone*,scalar_t__*,size_t,int,int /*<<< orphan*/ *,scalar_t__*,size_t*) ; 
 struct ub_packed_rrset_key* FUNC4 (struct val_neg_zone*,scalar_t__*,size_t,struct rrset_cache*,struct regional*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct val_neg_zone*,struct ub_packed_rrset_key*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct nsec3_cached_hash*,struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ub_packed_rrset_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dns_msg*
FUNC9(struct val_neg_zone* zone, uint8_t* qname, size_t qname_len,
		int qlabs, sldns_buffer* buf, struct rrset_cache* rrset_cache,
		struct regional* region, time_t now, uint8_t* topname)
{
	struct dns_msg* msg;
	struct val_neg_data* data;
	uint8_t hashnc[NSEC3_SHA_LEN];
	size_t nclen;
	struct ub_packed_rrset_key* ce_rrset, *nc_rrset;
	struct nsec3_cached_hash c;
	uint8_t nc_b32[257];

	/* for NSEC3 ; determine the closest encloser for which we
	 * can find an exact match. Remember the hashed lower name,
	 * since that is the one we need a closest match for. 
	 * If we find a match straight away, then it becomes NODATA.
	 * Otherwise, NXDOMAIN or if OPTOUT, an insecure delegation.
	 * Also check that parameters are the same on closest encloser
	 * and on closest match.
	 */
	if(!zone->nsec3_hash) 
		return NULL; /* not nsec3 zone */

	if(!(data=FUNC3(zone, qname, qname_len, qlabs, buf,
		hashnc, &nclen))) {
		return NULL;
	}

	/* grab the ce rrset */
	ce_rrset = FUNC2(rrset_cache, data->name, data->len, 
		LDNS_RR_TYPE_NSEC3, zone->dclass, 0, region, 1, 
		LDNS_RR_TYPE_DS, now);
	if(!ce_rrset)
		return NULL;
	if(!FUNC5(zone, ce_rrset))
		return NULL;

	if(nclen == 0) {
		/* exact match, just check the type bits */
		/* need: -SOA, -DS, +NS */
		if(FUNC8(ce_rrset, 0, LDNS_RR_TYPE_SOA) ||
			FUNC8(ce_rrset, 0, LDNS_RR_TYPE_DS) ||
			!FUNC8(ce_rrset, 0, LDNS_RR_TYPE_NS))
			return NULL;
		if(!(msg = FUNC1(qname, qname_len, 
			LDNS_RR_TYPE_DS, zone->dclass, region, 1))) 
			return NULL;
		/* TTL reduced in grab_nsec */
		if(!FUNC0(msg, region, ce_rrset, 0)) 
			return NULL;
		return msg;
	}

	/* optout is not allowed without knowing the trust-anchor in use,
	 * otherwise the optout could spoof away that anchor */
	if(!topname)
		return NULL;

	/* if there is no exact match, it must be in an optout span
	 * (an existing DS implies an NSEC3 must exist) */
	nc_rrset = FUNC4(zone, hashnc, nclen, rrset_cache, 
		region, now, nc_b32, sizeof(nc_b32));
	if(!nc_rrset) 
		return NULL;
	if(!FUNC5(zone, nc_rrset))
		return NULL;
	if(!FUNC7(nc_rrset, 0))
		return NULL;
	c.hash = hashnc;
	c.hash_len = nclen;
	c.b32 = nc_b32+1;
	c.b32_len = (size_t)nc_b32[0];
	if(FUNC6(zone->name, &c, nc_rrset, 0, buf)) {
		/* nc_rrset covers the next closer name.
		 * ce_rrset equals a closer encloser.
		 * nc_rrset is optout.
		 * No need to check wildcard for type DS */
		/* capacity=3: ce + nc + soa(if needed) */
		if(!(msg = FUNC1(qname, qname_len, 
			LDNS_RR_TYPE_DS, zone->dclass, region, 3))) 
			return NULL;
		/* now=0 because TTL was reduced in grab_nsec */
		if(!FUNC0(msg, region, ce_rrset, 0)) 
			return NULL;
		if(!FUNC0(msg, region, nc_rrset, 0)) 
			return NULL;
		return msg;
	}
	return NULL;
}