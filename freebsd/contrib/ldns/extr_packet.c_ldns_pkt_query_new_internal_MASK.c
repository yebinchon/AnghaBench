#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_7__ {int /*<<< orphan*/ * _tsig_rr; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  LDNS_SECTION_QUESTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ldns_pkt *
FUNC9(ldns_rdf *rr_name, ldns_rr_type rr_type,
	ldns_rr_class rr_class,	uint16_t flags, ldns_rr* authsoa_rr)
{
	ldns_pkt *packet;
	ldns_rr *question_rr;

	packet = FUNC1();
	if (!packet) {
		return NULL;
	}

	if (!FUNC3(packet, flags)) {
		return NULL;
	}

	question_rr = FUNC4();
	if (!question_rr) {
		FUNC0(packet);
		return NULL;
	}

	if (rr_type == 0) {
		rr_type = LDNS_RR_TYPE_A;
	}
	if (rr_class == 0) {
		rr_class = LDNS_RR_CLASS_IN;
	}

	FUNC6(question_rr, rr_name);
	FUNC8(question_rr, rr_type);
	FUNC5(question_rr, rr_class);
        FUNC7(question_rr, true);
	FUNC2(packet, LDNS_SECTION_QUESTION, question_rr);

	if (authsoa_rr) {
		FUNC2(packet, LDNS_SECTION_AUTHORITY, authsoa_rr);
	}

	packet->_tsig_rr = NULL;
	return packet;
}