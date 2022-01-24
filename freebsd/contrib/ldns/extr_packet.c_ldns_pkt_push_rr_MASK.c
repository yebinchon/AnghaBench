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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC13(ldns_pkt *packet, ldns_pkt_section section, ldns_rr *rr)
{
	switch(section) {
		case LDNS_SECTION_QUESTION:
			if (!FUNC12(FUNC7(packet), rr)) {
				return false;
			}
			FUNC11(packet, FUNC6(packet) + 1);
			break;
		case LDNS_SECTION_ANSWER:
			if (!FUNC12(FUNC2(packet), rr)) {
				return false;
			}
			FUNC8(packet, FUNC1(packet) + 1);
			break;
		case LDNS_SECTION_AUTHORITY:
			if (!FUNC12(FUNC4(packet), rr)) {
				return false;
			}
			FUNC10(packet, FUNC5(packet) + 1);
			break;
		case LDNS_SECTION_ADDITIONAL:
			if (!FUNC12(FUNC0(packet), rr)) {
				return false;
			}
			FUNC9(packet, FUNC3(packet) + 1);
			break;
		case LDNS_SECTION_ANY:
		case LDNS_SECTION_ANY_NOQUESTION:
			/* shouldn't this error? */
			break;
	}
	return true;
}