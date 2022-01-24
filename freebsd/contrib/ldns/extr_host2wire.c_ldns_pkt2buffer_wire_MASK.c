#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rbtree_t ;
struct TYPE_14__ {int /*<<< orphan*/  _edns_data; } ;
typedef  TYPE_1__ ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_OPT ; 
 int /*<<< orphan*/  LDNS_SECTION_ADDITIONAL ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  LDNS_SECTION_QUESTION ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  compression_node_free ; 
 scalar_t__ ldns_dname_compare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC11 (int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC28(ldns_buffer *buffer, const ldns_pkt *packet)
{
	ldns_rr_list *rr_list;
	uint16_t i;

	/* edns tmp vars */
	ldns_rr *edns_rr;
	uint8_t edata[4];

	ldns_rbtree_t *compression_data = FUNC11((int (*)(const void *, const void *))ldns_dname_compare);
	
	(void) FUNC0(buffer, packet);

	rr_list = FUNC9(packet);
	if (rr_list) {
		for (i = 0; i < FUNC18(rr_list); i++) {
			(void) FUNC15(buffer, 
			             FUNC17(rr_list, i), LDNS_SECTION_QUESTION, compression_data);
		}
	}
	rr_list = FUNC2(packet);
	if (rr_list) {
		for (i = 0; i < FUNC18(rr_list); i++) {
			(void) FUNC15(buffer, 
			             FUNC17(rr_list, i), LDNS_SECTION_ANSWER, compression_data);
		}
	}
	rr_list = FUNC3(packet);
	if (rr_list) {
		for (i = 0; i < FUNC18(rr_list); i++) {
			(void) FUNC15(buffer, 
			             FUNC17(rr_list, i), LDNS_SECTION_AUTHORITY, compression_data);
		}
	}
	rr_list = FUNC1(packet);
	if (rr_list) {
		for (i = 0; i < FUNC18(rr_list); i++) {
			(void) FUNC15(buffer, 
			             FUNC17(rr_list, i), LDNS_SECTION_ADDITIONAL, compression_data);
		}
	}
	
	/* add EDNS to additional if it is needed */
	if (FUNC4(packet)) {
		edns_rr = FUNC19();
		if(!edns_rr) return LDNS_STATUS_MEM_ERR;
		FUNC23(edns_rr,
				FUNC13(LDNS_RDF_TYPE_DNAME, "."));
		FUNC25(edns_rr, LDNS_RR_TYPE_OPT);
		FUNC22(edns_rr, FUNC6(packet));
		edata[0] = FUNC5(packet);
		edata[1] = FUNC7(packet);
		FUNC27(&edata[2], FUNC8(packet));
		FUNC24(edns_rr, FUNC14(edata));
		/* don't forget to add the edns rdata (if any) */
		if (packet->_edns_data)
			FUNC21 (edns_rr, packet->_edns_data);
		(void)FUNC15(buffer, edns_rr, LDNS_SECTION_ADDITIONAL, compression_data);
		/* take the edns rdata back out of the rr before we free rr */
		if (packet->_edns_data)
			(void)FUNC20 (edns_rr);
		FUNC16(edns_rr);
	}
	
	/* add TSIG to additional if it is there */
	if (FUNC10(packet)) {
		(void) FUNC15(buffer,
		                           FUNC10(packet), LDNS_SECTION_ADDITIONAL, compression_data);
	}

	FUNC26(compression_data,compression_node_free,NULL);
	FUNC12(compression_data);

	return LDNS_STATUS_OK;
}