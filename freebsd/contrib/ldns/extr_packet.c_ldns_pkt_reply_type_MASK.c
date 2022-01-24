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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_pkt_type ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_PACKET_ANSWER ; 
 int /*<<< orphan*/  LDNS_PACKET_NODATA ; 
 int /*<<< orphan*/  LDNS_PACKET_NXDOMAIN ; 
 int /*<<< orphan*/  LDNS_PACKET_REFERRAL ; 
 int /*<<< orphan*/  LDNS_PACKET_UNKNOWN ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ldns_pkt_type
FUNC6(const ldns_pkt *p)
{
	ldns_rr_list *tmp;

	if (!p) {
		return LDNS_PACKET_UNKNOWN;
	}

	if (FUNC2(p) == LDNS_RCODE_NXDOMAIN) {
		return LDNS_PACKET_NXDOMAIN;
	}

	if (FUNC0(p) == 0 && FUNC1(p) == 0
			&& FUNC3(p) == 1) {

		/* check for SOA */
		tmp = FUNC4(p, LDNS_RR_TYPE_SOA, 
					LDNS_SECTION_AUTHORITY);
		if (tmp) {
			FUNC5(tmp);
			return LDNS_PACKET_NODATA;
		} else {
			/* I have no idea ... */
		}
	}

	if (FUNC0(p) == 0 && FUNC3(p) > 0) {
		tmp = FUNC4(p, LDNS_RR_TYPE_NS,
		                               LDNS_SECTION_AUTHORITY);
		if (tmp) {
			/* there are nameservers here */
			FUNC5(tmp);
			return LDNS_PACKET_REFERRAL;
		} else {
			/* I have no idea */
		}
		FUNC5(tmp);
	}
	
	/* if we cannot determine the packet type, we say it's an 
	 * answer...
	 */
	return LDNS_PACKET_ANSWER;
}