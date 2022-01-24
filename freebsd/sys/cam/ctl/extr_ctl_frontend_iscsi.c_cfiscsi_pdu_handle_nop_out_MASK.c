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
struct iscsi_bhs_nop_out {int bhsno_initiator_task_tag; } ;
struct iscsi_bhs_nop_in {int bhsni_flags; int bhsni_initiator_task_tag; int bhsni_target_transfer_tag; int /*<<< orphan*/  bhsni_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*) ; 
 int /*<<< orphan*/  ISCSI_BHS_OPCODE_NOP_IN ; 
 int /*<<< orphan*/  M_CFISCSI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct cfiscsi_session* FUNC1 (struct icl_pdu*) ; 
 struct icl_pdu* FUNC2 (struct icl_pdu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct icl_pdu*,void*,size_t,int) ; 
 size_t FUNC7 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct icl_pdu*,int /*<<< orphan*/ ,void*,size_t) ; 
 void* FUNC10 (size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct icl_pdu *request)
{
	struct cfiscsi_session *cs;
	struct iscsi_bhs_nop_out *bhsno;
	struct iscsi_bhs_nop_in *bhsni;
	struct icl_pdu *response;
	void *data = NULL;
	size_t datasize;
	int error;

	cs = FUNC1(request);
	bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;

	if (bhsno->bhsno_initiator_task_tag == 0xffffffff) {
		/*
		 * Nothing to do, iscsi_pdu_update_statsn() already
		 * zeroed the timeout.
		 */
		FUNC8(request);
		return;
	}

	datasize = FUNC7(request);
	if (datasize > 0) {
		data = FUNC10(datasize, M_CFISCSI, M_NOWAIT | M_ZERO);
		if (data == NULL) {
			FUNC0(cs, "failed to allocate memory; "
			    "dropping connection");
			FUNC8(request);
			FUNC4(cs);
			return;
		}
		FUNC9(request, 0, data, datasize);
	}

	response = FUNC2(request, M_NOWAIT);
	if (response == NULL) {
		FUNC0(cs, "failed to allocate memory; "
		    "droppping connection");
		FUNC5(data, M_CFISCSI);
		FUNC8(request);
		FUNC4(cs);
		return;
	}
	bhsni = (struct iscsi_bhs_nop_in *)response->ip_bhs;
	bhsni->bhsni_opcode = ISCSI_BHS_OPCODE_NOP_IN;
	bhsni->bhsni_flags = 0x80;
	bhsni->bhsni_initiator_task_tag = bhsno->bhsno_initiator_task_tag;
	bhsni->bhsni_target_transfer_tag = 0xffffffff;
	if (datasize > 0) {
		error = FUNC6(response, data, datasize, M_NOWAIT);
		if (error != 0) {
			FUNC0(cs, "failed to allocate memory; "
			    "dropping connection");
			FUNC5(data, M_CFISCSI);
			FUNC8(request);
			FUNC8(response);
			FUNC4(cs);
			return;
		}
		FUNC5(data, M_CFISCSI);
	}

	FUNC8(request);
	FUNC3(response);
}