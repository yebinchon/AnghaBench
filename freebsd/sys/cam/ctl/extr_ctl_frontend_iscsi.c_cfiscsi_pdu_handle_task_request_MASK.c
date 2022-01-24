#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* task_action; int /*<<< orphan*/  tag_num; int /*<<< orphan*/  tag_type; } ;
struct TYPE_10__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  targ_port; int /*<<< orphan*/  initid; } ;
struct TYPE_11__ {TYPE_4__ nexus; int /*<<< orphan*/  io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_6__ taskio; TYPE_5__ io_hdr; } ;
struct iscsi_bhs_task_management_response {int bhstmr_flags; int /*<<< orphan*/  bhstmr_initiator_task_tag; int /*<<< orphan*/  bhstmr_response; int /*<<< orphan*/  bhstmr_opcode; } ;
struct iscsi_bhs_task_management_request {int bhstmr_function; int /*<<< orphan*/  bhstmr_initiator_task_tag; int /*<<< orphan*/  bhstmr_referenced_task_tag; int /*<<< orphan*/  bhstmr_lun; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int /*<<< orphan*/  cs_outstanding_ctl_pdus; TYPE_3__* cs_target; int /*<<< orphan*/  cs_ctl_initid; } ;
struct TYPE_8__ {int /*<<< orphan*/  targ_port; int /*<<< orphan*/  ctl_pool_ref; } ;
struct TYPE_9__ {TYPE_2__ ct_port; } ;
struct TYPE_7__ {struct icl_pdu* ptr; } ;

/* Variables and functions */
#define  BHSTMR_FUNCTION_ABORT_TASK 137 
#define  BHSTMR_FUNCTION_ABORT_TASK_SET 136 
#define  BHSTMR_FUNCTION_CLEAR_TASK_SET 135 
#define  BHSTMR_FUNCTION_I_T_NEXUS_RESET 134 
#define  BHSTMR_FUNCTION_LOGICAL_UNIT_RESET 133 
#define  BHSTMR_FUNCTION_QUERY_ASYNC_EVENT 132 
#define  BHSTMR_FUNCTION_QUERY_TASK 131 
#define  BHSTMR_FUNCTION_QUERY_TASK_SET 130 
#define  BHSTMR_FUNCTION_TARGET_COLD_RESET 129 
#define  BHSTMR_FUNCTION_TARGET_WARM_RESET 128 
 int /*<<< orphan*/  BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_session*,char*,...) ; 
 int /*<<< orphan*/  CTL_IO_TASK ; 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  CTL_TAG_SIMPLE ; 
 void* CTL_TASK_ABORT_TASK ; 
 void* CTL_TASK_ABORT_TASK_SET ; 
 void* CTL_TASK_CLEAR_TASK_SET ; 
 void* CTL_TASK_I_T_NEXUS_RESET ; 
 void* CTL_TASK_LUN_RESET ; 
 void* CTL_TASK_QUERY_ASYNC_EVENT ; 
 void* CTL_TASK_QUERY_TASK ; 
 void* CTL_TASK_QUERY_TASK_SET ; 
 void* CTL_TASK_TARGET_RESET ; 
 int /*<<< orphan*/  ISCSI_BHS_OPCODE_TASK_RESPONSE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct cfiscsi_session* FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct icl_pdu* FUNC4 (struct icl_pdu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfiscsi_session*) ; 
 union ctl_io* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union ctl_io*) ; 
 int FUNC10 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC11 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC12 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct icl_pdu *request)
{
	struct iscsi_bhs_task_management_request *bhstmr;
	struct iscsi_bhs_task_management_response *bhstmr2;
	struct icl_pdu *response;
	struct cfiscsi_session *cs;
	union ctl_io *io;
	int error;

	cs = FUNC2(request);
	bhstmr = (struct iscsi_bhs_task_management_request *)request->ip_bhs;
	io = FUNC7(cs->cs_target->ct_port.ctl_pool_ref);
	FUNC11(io);
	io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = request;
	io->io_hdr.io_type = CTL_IO_TASK;
	io->io_hdr.nexus.initid = cs->cs_ctl_initid;
	io->io_hdr.nexus.targ_port = cs->cs_target->ct_port.targ_port;
	io->io_hdr.nexus.targ_lun = FUNC8(FUNC3(bhstmr->bhstmr_lun));
	io->taskio.tag_type = CTL_TAG_SIMPLE; /* XXX */

	switch (bhstmr->bhstmr_function & ~0x80) {
	case BHSTMR_FUNCTION_ABORT_TASK:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_ABORT_TASK");
#endif
		io->taskio.task_action = CTL_TASK_ABORT_TASK;
		io->taskio.tag_num = bhstmr->bhstmr_referenced_task_tag;
		break;
	case BHSTMR_FUNCTION_ABORT_TASK_SET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_ABORT_TASK_SET");
#endif
		io->taskio.task_action = CTL_TASK_ABORT_TASK_SET;
		break;
	case BHSTMR_FUNCTION_CLEAR_TASK_SET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_CLEAR_TASK_SET");
#endif
		io->taskio.task_action = CTL_TASK_CLEAR_TASK_SET;
		break;
	case BHSTMR_FUNCTION_LOGICAL_UNIT_RESET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_LOGICAL_UNIT_RESET");
#endif
		io->taskio.task_action = CTL_TASK_LUN_RESET;
		break;
	case BHSTMR_FUNCTION_TARGET_WARM_RESET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_TARGET_WARM_RESET");
#endif
		io->taskio.task_action = CTL_TASK_TARGET_RESET;
		break;
	case BHSTMR_FUNCTION_TARGET_COLD_RESET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_TARGET_COLD_RESET");
#endif
		io->taskio.task_action = CTL_TASK_TARGET_RESET;
		break;
	case BHSTMR_FUNCTION_QUERY_TASK:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_QUERY_TASK");
#endif
		io->taskio.task_action = CTL_TASK_QUERY_TASK;
		io->taskio.tag_num = bhstmr->bhstmr_referenced_task_tag;
		break;
	case BHSTMR_FUNCTION_QUERY_TASK_SET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_QUERY_TASK_SET");
#endif
		io->taskio.task_action = CTL_TASK_QUERY_TASK_SET;
		break;
	case BHSTMR_FUNCTION_I_T_NEXUS_RESET:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_I_T_NEXUS_RESET");
#endif
		io->taskio.task_action = CTL_TASK_I_T_NEXUS_RESET;
		break;
	case BHSTMR_FUNCTION_QUERY_ASYNC_EVENT:
#if 0
		CFISCSI_SESSION_DEBUG(cs, "BHSTMR_FUNCTION_QUERY_ASYNC_EVENT");
#endif
		io->taskio.task_action = CTL_TASK_QUERY_ASYNC_EVENT;
		break;
	default:
		FUNC0(cs, "unsupported function 0x%x",
		    bhstmr->bhstmr_function & ~0x80);
		FUNC9(io);

		response = FUNC4(request, M_NOWAIT);
		if (response == NULL) {
			FUNC1(cs, "failed to allocate memory; "
			    "dropping connection");
			FUNC12(request);
			FUNC6(cs);
			return;
		}
		bhstmr2 = (struct iscsi_bhs_task_management_response *)
		    response->ip_bhs;
		bhstmr2->bhstmr_opcode = ISCSI_BHS_OPCODE_TASK_RESPONSE;
		bhstmr2->bhstmr_flags = 0x80;
		bhstmr2->bhstmr_response =
		    BHSTMR_RESPONSE_FUNCTION_NOT_SUPPORTED;
		bhstmr2->bhstmr_initiator_task_tag =
		    bhstmr->bhstmr_initiator_task_tag;
		FUNC12(request);
		FUNC5(response);
		return;
	}

	FUNC13(&cs->cs_outstanding_ctl_pdus);
	error = FUNC10(io);
	if (error != CTL_RETVAL_COMPLETE) {
		FUNC1(cs, "ctl_queue() failed; error %d; "
		    "dropping connection", error);
		FUNC9(io);
		FUNC14(&cs->cs_outstanding_ctl_pdus);
		FUNC12(request);
		FUNC6(cs);
	}
}