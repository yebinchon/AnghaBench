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
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
#define  LDNS_SECTION_ADDITIONAL 133 
#define  LDNS_SECTION_ANSWER 132 
#define  LDNS_SECTION_ANY 131 
#define  LDNS_SECTION_ANY_NOQUESTION 130 
#define  LDNS_SECTION_AUTHORITY 129 
#define  LDNS_SECTION_QUESTION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

bool
FUNC5(const ldns_pkt *pkt, ldns_pkt_section sec, const ldns_rr *rr)
{
	bool result = false;

	switch (sec) {
	case LDNS_SECTION_QUESTION:
		return FUNC4(FUNC3(pkt), rr);
	case LDNS_SECTION_ANSWER:
		return FUNC4(FUNC1(pkt), rr);
	case LDNS_SECTION_AUTHORITY:
		return FUNC4(FUNC2(pkt), rr);
	case LDNS_SECTION_ADDITIONAL:
		return FUNC4(FUNC0(pkt), rr);
	case LDNS_SECTION_ANY:
		result = FUNC4(FUNC3(pkt), rr);
	case LDNS_SECTION_ANY_NOQUESTION:
		result = result
		    || FUNC4(FUNC1(pkt), rr)
		    || FUNC4(FUNC2(pkt), rr)
		    || FUNC4(FUNC0(pkt), rr);
	}

	return result;
}