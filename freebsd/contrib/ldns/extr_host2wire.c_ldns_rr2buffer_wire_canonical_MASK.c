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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
#define  LDNS_RR_TYPE_A6 151 
#define  LDNS_RR_TYPE_AFSDB 150 
#define  LDNS_RR_TYPE_CNAME 149 
#define  LDNS_RR_TYPE_DNAME 148 
#define  LDNS_RR_TYPE_HINFO 147 
#define  LDNS_RR_TYPE_KX 146 
#define  LDNS_RR_TYPE_MB 145 
#define  LDNS_RR_TYPE_MD 144 
#define  LDNS_RR_TYPE_MF 143 
#define  LDNS_RR_TYPE_MG 142 
#define  LDNS_RR_TYPE_MINFO 141 
#define  LDNS_RR_TYPE_MR 140 
#define  LDNS_RR_TYPE_MX 139 
#define  LDNS_RR_TYPE_NAPTR 138 
#define  LDNS_RR_TYPE_NS 137 
#define  LDNS_RR_TYPE_NXT 136 
#define  LDNS_RR_TYPE_PTR 135 
#define  LDNS_RR_TYPE_PX 134 
#define  LDNS_RR_TYPE_RP 133 
#define  LDNS_RR_TYPE_RRSIG 132 
#define  LDNS_RR_TYPE_RT 131 
#define  LDNS_RR_TYPE_SIG 130 
#define  LDNS_RR_TYPE_SOA 129 
#define  LDNS_RR_TYPE_SRV 128 
 int LDNS_SECTION_QUESTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC14(ldns_buffer *buffer,
						const ldns_rr *rr,
						int section)
{
	uint16_t i;
	uint16_t rdl_pos = 0;
	bool pre_rfc3597 = false;
	switch (FUNC9(rr)) {
	case LDNS_RR_TYPE_NS:
	case LDNS_RR_TYPE_MD:
	case LDNS_RR_TYPE_MF:
	case LDNS_RR_TYPE_CNAME:
	case LDNS_RR_TYPE_SOA:
	case LDNS_RR_TYPE_MB:
	case LDNS_RR_TYPE_MG:
	case LDNS_RR_TYPE_MR:
	case LDNS_RR_TYPE_PTR:
	case LDNS_RR_TYPE_HINFO:
	case LDNS_RR_TYPE_MINFO:
	case LDNS_RR_TYPE_MX:
	case LDNS_RR_TYPE_RP:
	case LDNS_RR_TYPE_AFSDB:
	case LDNS_RR_TYPE_RT:
	case LDNS_RR_TYPE_SIG:
	case LDNS_RR_TYPE_PX:
	case LDNS_RR_TYPE_NXT:
	case LDNS_RR_TYPE_NAPTR:
	case LDNS_RR_TYPE_KX:
	case LDNS_RR_TYPE_SRV:
	case LDNS_RR_TYPE_DNAME:
	case LDNS_RR_TYPE_A6:
	case LDNS_RR_TYPE_RRSIG:
		pre_rfc3597 = true;
		break;
	default:
		break;
	}
	
	if (FUNC10(rr)) {
		(void) FUNC7(buffer, FUNC10(rr));
	}
	
	if (FUNC1(buffer, 4)) {
		(void) FUNC3(buffer, FUNC9(rr));
		(void) FUNC3(buffer, FUNC8(rr));
	}

	if (section != LDNS_SECTION_QUESTION) {
		if (FUNC1(buffer, 6)) {
			FUNC5(buffer, FUNC13(rr));
			/* remember pos for later */
			rdl_pos = FUNC0(buffer);
			FUNC3(buffer, 0);
		}	
		for (i = 0; i < FUNC11(rr); i++) {
			if (pre_rfc3597) {
				(void) FUNC7(
					buffer, FUNC12(rr, i));
			} else {
				(void) FUNC6(
					buffer, FUNC12(rr, i));
			}
		}
		if (rdl_pos != 0) {
			FUNC4(buffer, rdl_pos,
			                         FUNC0(buffer)
		        	                   - rdl_pos - 2);
		}
	}
	return FUNC2(buffer);
}