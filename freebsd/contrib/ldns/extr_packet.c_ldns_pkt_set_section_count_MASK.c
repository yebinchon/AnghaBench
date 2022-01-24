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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
#define  LDNS_SECTION_ADDITIONAL 133 
#define  LDNS_SECTION_ANSWER 132 
#define  LDNS_SECTION_ANY 131 
#define  LDNS_SECTION_ANY_NOQUESTION 130 
#define  LDNS_SECTION_AUTHORITY 129 
#define  LDNS_SECTION_QUESTION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(ldns_pkt *packet, ldns_pkt_section s, uint16_t count)
{
	switch(s) {
		case LDNS_SECTION_QUESTION:
			FUNC3(packet, count);
			break;
		case LDNS_SECTION_ANSWER:
			FUNC0(packet, count);
			break;
		case LDNS_SECTION_AUTHORITY:
			FUNC2(packet, count);
			break;
		case LDNS_SECTION_ADDITIONAL:
			FUNC1(packet, count);
			break;
		case LDNS_SECTION_ANY:
		case LDNS_SECTION_ANY_NOQUESTION:
			break;
	}
}