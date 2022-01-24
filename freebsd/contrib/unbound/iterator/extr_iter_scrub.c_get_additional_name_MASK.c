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
typedef  int /*<<< orphan*/  uint16_t ;
struct rrset_parse {int type; } ;
struct rr_parse {int /*<<< orphan*/ * ttl_data; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
#define  LDNS_RR_TYPE_KX 135 
#define  LDNS_RR_TYPE_MB 134 
#define  LDNS_RR_TYPE_MD 133 
#define  LDNS_RR_TYPE_MF 132 
#define  LDNS_RR_TYPE_MX 131 
#define  LDNS_RR_TYPE_NAPTR 130 
#define  LDNS_RR_TYPE_NS 129 
#define  LDNS_RR_TYPE_SRV 128 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct rrset_parse* rrset, struct rr_parse* rr, 
	uint8_t** nm, size_t* nmlen, sldns_buffer* pkt) 
{
	size_t offset = 0;
	size_t len, oldpos;
	switch(rrset->type) {
		case LDNS_RR_TYPE_MB:
		case LDNS_RR_TYPE_MD:
		case LDNS_RR_TYPE_MF:
		case LDNS_RR_TYPE_NS:
			offset = 0;
			break;
		case LDNS_RR_TYPE_MX:
		case LDNS_RR_TYPE_KX:
			offset = 2;
			break;
		case LDNS_RR_TYPE_SRV:
			offset = 6;
			break;
		case LDNS_RR_TYPE_NAPTR:
			/* TODO: NAPTR not supported, glue stripped off */
			return 0;
		default:
			return 0;
	}
	len = FUNC4(rr->ttl_data+sizeof(uint32_t));
	if(len < offset+1)
		return 0; /* rdata field too small */
	*nm = rr->ttl_data+sizeof(uint32_t)+sizeof(uint16_t)+offset;
	oldpos = FUNC2(pkt);
	FUNC3(pkt, (size_t)(*nm - FUNC1(pkt)));
	*nmlen = FUNC0(pkt);
	FUNC3(pkt, oldpos);
	if(*nmlen == 0)
		return 0;
	return 1;
}