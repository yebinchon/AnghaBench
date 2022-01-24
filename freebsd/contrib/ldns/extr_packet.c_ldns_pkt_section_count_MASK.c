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
typedef  int ldns_pkt_section ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
#define  LDNS_SECTION_ADDITIONAL 133 
#define  LDNS_SECTION_ANSWER 132 
#define  LDNS_SECTION_ANY 131 
#define  LDNS_SECTION_ANY_NOQUESTION 130 
#define  LDNS_SECTION_AUTHORITY 129 
#define  LDNS_SECTION_QUESTION 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

uint16_t
FUNC4(const ldns_pkt *packet, ldns_pkt_section s)
{
	switch(s) {
	case LDNS_SECTION_QUESTION:
		return FUNC3(packet);
	case LDNS_SECTION_ANSWER:
		return FUNC0(packet);
	case LDNS_SECTION_AUTHORITY:
		return FUNC2(packet);
	case LDNS_SECTION_ADDITIONAL:
		return FUNC1(packet);
	case LDNS_SECTION_ANY:
		return FUNC3(packet) +
			FUNC0(packet) +
			FUNC2(packet) +
			FUNC1(packet);
	case LDNS_SECTION_ANY_NOQUESTION:
		return FUNC0(packet) +
			FUNC2(packet) +
			FUNC1(packet);
	default:
		return 0;
	}
}