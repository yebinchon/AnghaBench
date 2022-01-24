#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct cfiscsi_session {int dummy; } ;
struct TYPE_2__ {int bhs_opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,int) ; 
 int ISCSI_BHS_OPCODE_IMMEDIATE ; 
#define  ISCSI_BHS_OPCODE_LOGOUT_REQUEST 132 
#define  ISCSI_BHS_OPCODE_NOP_OUT 131 
#define  ISCSI_BHS_OPCODE_SCSI_COMMAND 130 
#define  ISCSI_BHS_OPCODE_SCSI_DATA_OUT 129 
#define  ISCSI_BHS_OPCODE_TASK_REQUEST 128 
 struct cfiscsi_session* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*) ; 
 int FUNC7 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC9 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC10(struct icl_pdu *request)
{
	struct cfiscsi_session *cs;
	bool ignore;

	cs = FUNC1(request);

	ignore = FUNC7(request);
	if (ignore) {
		FUNC9(request);
		return;
	}

	/*
	 * Handle the PDU; this includes e.g. receiving the remaining
	 * part of PDU and submitting the SCSI command to CTL
	 * or queueing a reply.  The handling routine is responsible
	 * for freeing the PDU when it's no longer needed.
	 */
	switch (request->ip_bhs->bhs_opcode &
	    ~ISCSI_BHS_OPCODE_IMMEDIATE) {
	case ISCSI_BHS_OPCODE_NOP_OUT:
		FUNC4(request);
		break;
	case ISCSI_BHS_OPCODE_SCSI_COMMAND:
		FUNC5(request);
		break;
	case ISCSI_BHS_OPCODE_TASK_REQUEST:
		FUNC6(request);
		break;
	case ISCSI_BHS_OPCODE_SCSI_DATA_OUT:
		FUNC2(request);
		break;
	case ISCSI_BHS_OPCODE_LOGOUT_REQUEST:
		FUNC3(request);
		break;
	default:
		FUNC0(cs, "received PDU with unsupported "
		    "opcode 0x%x; dropping connection",
		    request->ip_bhs->bhs_opcode);
		FUNC9(request);
		FUNC8(cs);
	}

}