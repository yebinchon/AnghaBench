#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int time_t ;
struct rr_parse {scalar_t__* ttl_data; scalar_t__ size; scalar_t__ outside_packet; } ;
struct packed_rrset_data {int ttl; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {scalar_t__ _dname_count; int* _wireformat; } ;
typedef  TYPE_1__ sldns_rr_descriptor ;
typedef  scalar_t__ sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
#define  LDNS_RDF_TYPE_DNAME 129 
#define  LDNS_RDF_TYPE_STR 128 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_SECTION_AUTHORITY ; 
 int MAX_NEG_TTL ; 
 int MAX_TTL ; 
 int MIN_TTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__*) ; 
 TYPE_1__* FUNC14 (scalar_t__) ; 
 int FUNC15 (struct rr_parse*) ; 

__attribute__((used)) static int
FUNC16(sldns_buffer* pkt, struct packed_rrset_data* data, uint8_t* to, 
	struct rr_parse* rr, time_t* rr_ttl, uint16_t type,
	sldns_pkt_section section)
{
	uint16_t pkt_len;
	const sldns_rr_descriptor* desc;

	*rr_ttl = FUNC13(rr->ttl_data);
	/* RFC 2181 Section 8. if msb of ttl is set treat as if zero. */
	if(*rr_ttl & 0x80000000U)
		*rr_ttl = 0;
	if(type == LDNS_RR_TYPE_SOA && section == LDNS_SECTION_AUTHORITY) {
		/* negative response. see if TTL of SOA record larger than the
		 * minimum-ttl in the rdata of the SOA record */
		if(*rr_ttl > FUNC15(rr))
			*rr_ttl = FUNC15(rr);
		if(*rr_ttl > MAX_NEG_TTL)
			*rr_ttl = MAX_NEG_TTL;
	}
	if(*rr_ttl < MIN_TTL)
		*rr_ttl = MIN_TTL;
	if(*rr_ttl > MAX_TTL)
		*rr_ttl = MAX_TTL;
	if(*rr_ttl < data->ttl)
		data->ttl = *rr_ttl;

	if(rr->outside_packet) {
		/* uncompressed already, only needs copy */
		FUNC4(to, rr->ttl_data+sizeof(uint32_t), rr->size);
		return 1;
	}

	FUNC11(pkt, (size_t)
		(rr->ttl_data - FUNC6(pkt) + sizeof(uint32_t)));
	/* insert decompressed size into rdata len stored in memory */
	/* -2 because rdatalen bytes are not included. */
	pkt_len = FUNC2(rr->size - 2);
	FUNC4(to, &pkt_len, sizeof(uint16_t));
	to += 2;
	/* read packet rdata len */
	pkt_len = FUNC9(pkt);
	if(FUNC10(pkt) < pkt_len)
		return 0;
	desc = FUNC14(type);
	if(pkt_len > 0 && desc && desc->_dname_count > 0) {
		int count = (int)desc->_dname_count;
		int rdf = 0;
		size_t len;
		size_t oldpos;
		/* decompress dnames. */
		while(pkt_len > 0 && count) {
			switch(desc->_wireformat[rdf]) {
			case LDNS_RDF_TYPE_DNAME:
				oldpos = FUNC8(pkt);
				FUNC0(pkt, to, 
					FUNC7(pkt));
				to += FUNC5(pkt);
				pkt_len -= FUNC8(pkt)-oldpos;
				count--;
				len = 0;
				break;
			case LDNS_RDF_TYPE_STR:
				len = FUNC7(pkt)[0] + 1;
				break;
			default:
				len = FUNC1(desc->_wireformat[rdf]);
				break;
			}
			if(len) {
				FUNC4(to, FUNC7(pkt), len);
				to += len;
				FUNC12(pkt, (ssize_t)len);
				FUNC3(len <= pkt_len);
				pkt_len -= len;
			}
			rdf++;
		}
	}
	/* copy remaining rdata */
	if(pkt_len >  0)
		FUNC4(to, FUNC7(pkt), pkt_len);
	
	return 1;
}