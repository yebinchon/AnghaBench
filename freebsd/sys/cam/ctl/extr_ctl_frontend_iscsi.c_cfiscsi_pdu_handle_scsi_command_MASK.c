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
struct TYPE_12__ {int cdb_len; int /*<<< orphan*/  cdb; void* tag_type; int /*<<< orphan*/  tag_num; } ;
struct TYPE_10__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  targ_port; int /*<<< orphan*/  initid; } ;
struct TYPE_11__ {TYPE_4__ nexus; int /*<<< orphan*/  io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_6__ scsiio; TYPE_5__ io_hdr; } ;
struct iscsi_bhs_scsi_command {int bhssc_flags; int /*<<< orphan*/  bhssc_cdb; int /*<<< orphan*/  bhssc_initiator_task_tag; int /*<<< orphan*/  bhssc_lun; } ;
struct icl_pdu {scalar_t__ ip_data_len; scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int cs_immediate_data; int /*<<< orphan*/  cs_outstanding_ctl_pdus; TYPE_3__* cs_target; int /*<<< orphan*/  cs_ctl_initid; } ;
struct TYPE_8__ {int /*<<< orphan*/  targ_port; int /*<<< orphan*/  ctl_pool_ref; } ;
struct TYPE_9__ {TYPE_2__ ct_port; } ;
struct TYPE_7__ {struct icl_pdu* ptr; } ;

/* Variables and functions */
 int BHSSC_FLAGS_ATTR ; 
#define  BHSSC_FLAGS_ATTR_ACA 132 
#define  BHSSC_FLAGS_ATTR_HOQ 131 
#define  BHSSC_FLAGS_ATTR_ORDERED 130 
#define  BHSSC_FLAGS_ATTR_SIMPLE 129 
#define  BHSSC_FLAGS_ATTR_UNTAGGED 128 
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,...) ; 
 int /*<<< orphan*/  CTL_IO_SCSI ; 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 void* CTL_TAG_ACA ; 
 void* CTL_TAG_HEAD_OF_QUEUE ; 
 void* CTL_TAG_ORDERED ; 
 void* CTL_TAG_SIMPLE ; 
 void* CTL_TAG_UNTAGGED ; 
 struct cfiscsi_session* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfiscsi_session*) ; 
 union ctl_io* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ctl_io*) ; 
 int FUNC7 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC8 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC9 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct icl_pdu *request)
{
	struct iscsi_bhs_scsi_command *bhssc;
	struct cfiscsi_session *cs;
	union ctl_io *io;
	int error;

	cs = FUNC1(request);
	bhssc = (struct iscsi_bhs_scsi_command *)request->ip_bhs;
	//CFISCSI_SESSION_DEBUG(cs, "initiator task tag 0x%x",
	//    bhssc->bhssc_initiator_task_tag);

	if (request->ip_data_len > 0 && cs->cs_immediate_data == false) {
		FUNC0(cs, "unsolicited data with "
		    "ImmediateData=No; dropping connection");
		FUNC9(request);
		FUNC3(cs);
		return;
	}
	io = FUNC4(cs->cs_target->ct_port.ctl_pool_ref);
	FUNC8(io);
	io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = request;
	io->io_hdr.io_type = CTL_IO_SCSI;
	io->io_hdr.nexus.initid = cs->cs_ctl_initid;
	io->io_hdr.nexus.targ_port = cs->cs_target->ct_port.targ_port;
	io->io_hdr.nexus.targ_lun = FUNC5(FUNC2(bhssc->bhssc_lun));
	io->scsiio.tag_num = bhssc->bhssc_initiator_task_tag;
	switch ((bhssc->bhssc_flags & BHSSC_FLAGS_ATTR)) {
	case BHSSC_FLAGS_ATTR_UNTAGGED:
		io->scsiio.tag_type = CTL_TAG_UNTAGGED;
		break;
	case BHSSC_FLAGS_ATTR_SIMPLE:
		io->scsiio.tag_type = CTL_TAG_SIMPLE;
		break;
	case BHSSC_FLAGS_ATTR_ORDERED:
        	io->scsiio.tag_type = CTL_TAG_ORDERED;
		break;
	case BHSSC_FLAGS_ATTR_HOQ:
        	io->scsiio.tag_type = CTL_TAG_HEAD_OF_QUEUE;
		break;
	case BHSSC_FLAGS_ATTR_ACA:
		io->scsiio.tag_type = CTL_TAG_ACA;
		break;
	default:
		io->scsiio.tag_type = CTL_TAG_UNTAGGED;
		FUNC0(cs, "unhandled tag type %d",
		    bhssc->bhssc_flags & BHSSC_FLAGS_ATTR);
		break;
	}
	io->scsiio.cdb_len = sizeof(bhssc->bhssc_cdb); /* Which is 16. */
	FUNC10(io->scsiio.cdb, bhssc->bhssc_cdb, sizeof(bhssc->bhssc_cdb));
	FUNC11(&cs->cs_outstanding_ctl_pdus);
	error = FUNC7(io);
	if (error != CTL_RETVAL_COMPLETE) {
		FUNC0(cs, "ctl_queue() failed; error %d; "
		    "dropping connection", error);
		FUNC6(io);
		FUNC12(&cs->cs_outstanding_ctl_pdus);
		FUNC9(request);
		FUNC3(cs);
	}
}