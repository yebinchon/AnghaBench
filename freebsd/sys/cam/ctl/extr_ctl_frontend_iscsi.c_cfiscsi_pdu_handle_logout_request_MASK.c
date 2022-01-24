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
struct iscsi_bhs_logout_response {int bhslr_flags; int /*<<< orphan*/  bhslr_initiator_task_tag; int /*<<< orphan*/  bhslr_response; void* bhslr_opcode; } ;
struct iscsi_bhs_logout_request {int bhslr_reason; int /*<<< orphan*/  bhslr_initiator_task_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int dummy; } ;

/* Variables and functions */
#define  BHSLR_REASON_CLOSE_CONNECTION 130 
#define  BHSLR_REASON_CLOSE_SESSION 129 
#define  BHSLR_REASON_REMOVE_FOR_RECOVERY 128 
 int /*<<< orphan*/  BHSLR_RESPONSE_CLOSED_SUCCESSFULLY ; 
 int /*<<< orphan*/  BHSLR_RESPONSE_RECOVERY_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_session*,char*,...) ; 
 void* ISCSI_BHS_OPCODE_LOGOUT_RESPONSE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct cfiscsi_session* FUNC2 (struct icl_pdu*) ; 
 struct icl_pdu* FUNC3 (struct icl_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC7(struct icl_pdu *request)
{
	struct iscsi_bhs_logout_request *bhslr;
	struct iscsi_bhs_logout_response *bhslr2;
	struct icl_pdu *response;
	struct cfiscsi_session *cs;

	cs = FUNC2(request);
	bhslr = (struct iscsi_bhs_logout_request *)request->ip_bhs;
	switch (bhslr->bhslr_reason & 0x7f) {
	case BHSLR_REASON_CLOSE_SESSION:
	case BHSLR_REASON_CLOSE_CONNECTION:
		response = FUNC3(request, M_NOWAIT);
		if (response == NULL) {
			FUNC0(cs, "failed to allocate memory");
			FUNC6(request);
			FUNC5(cs);
			return;
		}
		bhslr2 = (struct iscsi_bhs_logout_response *)response->ip_bhs;
		bhslr2->bhslr_opcode = ISCSI_BHS_OPCODE_LOGOUT_RESPONSE;
		bhslr2->bhslr_flags = 0x80;
		bhslr2->bhslr_response = BHSLR_RESPONSE_CLOSED_SUCCESSFULLY;
		bhslr2->bhslr_initiator_task_tag =
		    bhslr->bhslr_initiator_task_tag;
		FUNC6(request);
		FUNC4(response);
		FUNC5(cs);
		break;
	case BHSLR_REASON_REMOVE_FOR_RECOVERY:
		response = FUNC3(request, M_NOWAIT);
		if (response == NULL) {
			FUNC1(cs,
			    "failed to allocate memory; dropping connection");
			FUNC6(request);
			FUNC5(cs);
			return;
		}
		bhslr2 = (struct iscsi_bhs_logout_response *)response->ip_bhs;
		bhslr2->bhslr_opcode = ISCSI_BHS_OPCODE_LOGOUT_RESPONSE;
		bhslr2->bhslr_flags = 0x80;
		bhslr2->bhslr_response = BHSLR_RESPONSE_RECOVERY_NOT_SUPPORTED;
		bhslr2->bhslr_initiator_task_tag =
		    bhslr->bhslr_initiator_task_tag;
		FUNC6(request);
		FUNC4(response);
		break;
	default:
		FUNC1(cs, "invalid reason 0%x; dropping connection",
		    bhslr->bhslr_reason);
		FUNC6(request);
		FUNC5(cs);
		break;
	}
}