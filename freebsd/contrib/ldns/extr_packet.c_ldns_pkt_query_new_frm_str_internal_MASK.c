#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_8__ {int /*<<< orphan*/ * _tsig_rr; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  LDNS_SECTION_QUESTION ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_NULL ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,char const*) ; 

__attribute__((used)) static ldns_status
FUNC12(ldns_pkt **p, const char *name,
	ldns_rr_type rr_type, ldns_rr_class rr_class, uint16_t flags,
	ldns_rr* authsoa_rr)
{
	ldns_pkt *packet;
	ldns_rr *question_rr;
	ldns_rdf *name_rdf;

	packet = FUNC1();
	if (!packet) {
		return LDNS_STATUS_MEM_ERR;
	}

	if (!FUNC4(packet, flags)) {
		return LDNS_STATUS_ERR;
	}

	question_rr = FUNC6();
	if (!question_rr) {
		return LDNS_STATUS_MEM_ERR;
	}

	if (rr_type == 0) {
		rr_type = LDNS_RR_TYPE_A;
	}
	if (rr_class == 0) {
		rr_class = LDNS_RR_CLASS_IN;
	}

	if (FUNC11(&name_rdf, name) == LDNS_STATUS_OK) {
		FUNC8(question_rr, name_rdf);
		FUNC10(question_rr, rr_type);
		FUNC7(question_rr, rr_class);
                FUNC9(question_rr, true);

		FUNC2(packet, LDNS_SECTION_QUESTION, question_rr);
	} else {
		FUNC5(question_rr);
		FUNC0(packet);
		return LDNS_STATUS_ERR;
	}

	if (authsoa_rr) {
		FUNC2(packet, LDNS_SECTION_AUTHORITY, authsoa_rr);
	}

	packet->_tsig_rr = NULL;
	FUNC3(packet, NULL);
	if (p) {
		*p = packet;
		return LDNS_STATUS_OK;
	} else {
		FUNC0(packet);
		return LDNS_STATUS_NULL;
	}
}