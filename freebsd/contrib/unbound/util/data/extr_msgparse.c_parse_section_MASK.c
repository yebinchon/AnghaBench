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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct rrset_parse {scalar_t__ type; int /*<<< orphan*/ * dname; } ;
struct regional {int dummy; } ;
struct msg_parse {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  hashvalue_type ;
typedef  int /*<<< orphan*/  dclass ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* _name; } ;

/* Variables and functions */
 int LDNS_RCODE_FORMERR ; 
 int LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int FUNC0 (struct rrset_parse*,int /*<<< orphan*/ *,struct msg_parse*,struct regional*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msg_parse*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t*,scalar_t__*,scalar_t__*,struct rrset_parse**,int /*<<< orphan*/ ,struct regional*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct rrset_parse* FUNC4 (struct msg_parse*,int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regional*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sldns_rr_classes ; 
 TYPE_1__* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC14(sldns_buffer* pkt, struct msg_parse* msg, 
	struct regional* region, sldns_pkt_section section, 
	uint16_t num_rrs, size_t* num_rrsets)
{
	uint16_t i;
	uint8_t* dname, *prev_dname_f = NULL, *prev_dname_l = NULL;
	size_t dnamelen, prev_dnamelen = 0;
	uint16_t type, prev_type = 0;
	uint16_t dclass, prev_dclass = 0;
	uint32_t rrset_flags = 0;
	hashvalue_type hash = 0;
	struct rrset_parse* rrset = NULL;
	int r;

	if(num_rrs == 0)
		return 0;
	if(FUNC11(pkt) <= 0)
		return LDNS_RCODE_FORMERR;
	for(i=0; i<num_rrs; i++) {
		/* parse this RR. */
		dname = FUNC8(pkt);
		if((dnamelen = FUNC6(pkt)) == 0)
			return LDNS_RCODE_FORMERR;
		if(FUNC11(pkt) < 10) /* type, class, ttl, len */
			return LDNS_RCODE_FORMERR;
		type = FUNC10(pkt);
		FUNC9(pkt, &dclass, sizeof(dclass));

		if(0) { /* debug show what is being parsed. */
			if(type == LDNS_RR_TYPE_RRSIG) {
				uint16_t t;
				if(FUNC7(pkt, 
					FUNC8(pkt), &t))
					FUNC3(stderr, "parse of %s(%d) [%s(%d)]",
					FUNC13(type)?
					FUNC13(type)->_name: "??",
					(int)type,
					FUNC13(t)?
					FUNC13(t)->_name: "??",
					(int)t);
			} else
			  FUNC3(stderr, "parse of %s(%d)",
				FUNC13(type)?
				FUNC13(type)->_name: "??",
				(int)type);
			FUNC3(stderr, " %s(%d) ",
				FUNC12(sldns_rr_classes, 
				(int)FUNC5(dclass))?FUNC12(
				sldns_rr_classes, (int)FUNC5(dclass))->name: 
				"??", (int)FUNC5(dclass));
			FUNC1(stderr, pkt, dname);
			FUNC3(stderr, "\n");
		}

		/* see if it is part of an existing RR set */
		if(!FUNC2(msg, pkt, dname, dnamelen, type, dclass, &hash, 
			&rrset_flags, &prev_dname_f, &prev_dname_l, 
			&prev_dnamelen, &prev_type, &prev_dclass, &rrset, 
			section, region))
			return LDNS_RCODE_SERVFAIL;
		if(!rrset) {
			/* it is a new RR set. hash&flags already calculated.*/
			(*num_rrsets)++;
			rrset = FUNC4(msg, dname, dnamelen, type, dclass,
				hash, rrset_flags, section, region);
			if(!rrset) 
				return LDNS_RCODE_SERVFAIL;
		}
		else if(0)	{ 
			FUNC3(stderr, "is part of existing: ");
			FUNC1(stderr, pkt, rrset->dname);
			FUNC3(stderr, " type %s(%d)\n",
				FUNC13(rrset->type)?
				FUNC13(rrset->type)->_name: "??",
				(int)rrset->type);
		}
		/* add to rrset. */
		if((r=FUNC0(rrset, pkt, msg, region, section, 
			type)) != 0)
			return r;
	}
	return 0;
}