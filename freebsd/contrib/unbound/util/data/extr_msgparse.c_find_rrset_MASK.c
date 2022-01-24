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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct rrset_parse {int /*<<< orphan*/ * dname; } ;
struct regional {int dummy; } ;
struct msg_parse {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  hashvalue_type ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  PACKED_RRSET_NSEC_AT_APEX ; 
 int /*<<< orphan*/  PACKED_RRSET_SOA_NEG ; 
 struct rrset_parse* FUNC0 (struct rrset_parse*,struct msg_parse*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct regional*) ; 
 struct rrset_parse* FUNC1 (struct msg_parse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct rrset_parse*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct msg_parse* msg, sldns_buffer* pkt, uint8_t* dname, 
	size_t dnamelen, uint16_t type, uint16_t dclass, hashvalue_type* hash, 
	uint32_t* rrset_flags,
	uint8_t** prev_dname_first, uint8_t** prev_dname_last,
	size_t* prev_dnamelen, uint16_t* prev_type,
	uint16_t* prev_dclass, struct rrset_parse** rrset_prev,
	sldns_pkt_section section, struct regional* region)
{
	hashvalue_type dname_h = FUNC2(pkt, dname);
	uint16_t covtype;
	if(*rrset_prev) {
		/* check if equal to previous item */
		if(type == *prev_type && dclass == *prev_dclass &&
			dnamelen == *prev_dnamelen &&
			FUNC9(pkt, dname, *prev_dname_first, 
				*prev_dname_last) == 0 &&
			type != LDNS_RR_TYPE_RRSIG) {
			/* same as previous */
			*prev_dname_last = dname;
			return 1;
		}
		/* check if rrsig over previous item */
		if(type == LDNS_RR_TYPE_RRSIG && dclass == *prev_dclass &&
			FUNC6(pkt, FUNC8(pkt),
				*prev_type) &&
			FUNC9(pkt, dname, *prev_dname_first,
				*prev_dname_last) == 0) {
			/* covers previous */
			*prev_dname_last = dname;
			return 1;
		}
	}
	/* find by hashing and lookup in hashtable */
	*rrset_flags = FUNC4(pkt, type, section);
	
	/* if rrsig - try to lookup matching data set first */
	if(type == LDNS_RR_TYPE_RRSIG && FUNC5(pkt, 
		FUNC8(pkt), &covtype)) {
		*hash = FUNC3(dname_h, covtype, dclass, 
			*rrset_flags);
		*rrset_prev = FUNC1(msg, pkt, *hash, 
			*rrset_flags, dname, dnamelen, covtype, dclass);
		if(!*rrset_prev && covtype == LDNS_RR_TYPE_NSEC) {
			/* if NSEC try with NSEC apex bit twiddled */
			*rrset_flags ^= PACKED_RRSET_NSEC_AT_APEX;
			*hash = FUNC3(dname_h, covtype, dclass, 
				*rrset_flags);
			*rrset_prev = FUNC1(msg, pkt, 
				*hash, *rrset_flags, dname, dnamelen, covtype, 
				dclass);
			if(!*rrset_prev) /* untwiddle if not found */
				*rrset_flags ^= PACKED_RRSET_NSEC_AT_APEX;
		}
		if(!*rrset_prev && covtype == LDNS_RR_TYPE_SOA) {
			/* if SOA try with SOA neg flag twiddled */
			*rrset_flags ^= PACKED_RRSET_SOA_NEG;
			*hash = FUNC3(dname_h, covtype, dclass, 
				*rrset_flags);
			*rrset_prev = FUNC1(msg, pkt, 
				*hash, *rrset_flags, dname, dnamelen, covtype, 
				dclass);
			if(!*rrset_prev) /* untwiddle if not found */
				*rrset_flags ^= PACKED_RRSET_SOA_NEG;
		}
		if(*rrset_prev) {
			*prev_dname_first = (*rrset_prev)->dname;
			*prev_dname_last = dname;
			*prev_dnamelen = dnamelen;
			*prev_type = covtype;
			*prev_dclass = dclass;
			return 1;
		}
	}
	if(type != LDNS_RR_TYPE_RRSIG) {
		int hasother = 0;
		/* find matching rrsig */
		*hash = FUNC3(dname_h, LDNS_RR_TYPE_RRSIG, 
			dclass, 0);
		*rrset_prev = FUNC1(msg, pkt, *hash, 
			0, dname, dnamelen, LDNS_RR_TYPE_RRSIG, 
			dclass);
		if(*rrset_prev && FUNC7(pkt, *rrset_prev, type,
			&hasother)) {
			/* yes! */
			*prev_dname_first = (*rrset_prev)->dname;
			*prev_dname_last = dname;
			*prev_dnamelen = dnamelen;
			*prev_type = type;
			*prev_dclass = dclass;
			*rrset_prev = FUNC0(*rrset_prev, msg, 
				pkt, type, *rrset_flags, hasother, section, 
				region);
			if(!*rrset_prev) return 0;
			return 1;
		}
	}

	*hash = FUNC3(dname_h, type, dclass, *rrset_flags);
	*rrset_prev = FUNC1(msg, pkt, *hash, *rrset_flags, 
		dname, dnamelen, type, dclass);
	if(*rrset_prev)
		*prev_dname_first = (*rrset_prev)->dname;
	else 	*prev_dname_first = dname;
	*prev_dname_last = dname;
	*prev_dnamelen = dnamelen;
	*prev_type = type;
	*prev_dclass = dclass;
	return 1;
}