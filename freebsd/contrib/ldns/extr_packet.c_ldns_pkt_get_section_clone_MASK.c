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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC7(const ldns_pkt *packet, ldns_pkt_section s)
{
	switch(s) {
	case LDNS_SECTION_QUESTION:
		return FUNC6(FUNC5(packet));
	case LDNS_SECTION_ANSWER:
		return FUNC6(FUNC3(packet));
	case LDNS_SECTION_AUTHORITY:
		return FUNC6(FUNC4(packet));
	case LDNS_SECTION_ADDITIONAL:
		return FUNC6(FUNC0(packet));
	case LDNS_SECTION_ANY:
		/* these are already clones */
		return FUNC1(packet);
	case LDNS_SECTION_ANY_NOQUESTION:
		return FUNC2(packet);
	default:
		return NULL;
	}
}