
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int cdb_len; int cdb; void* tag_type; int tag_num; } ;
struct TYPE_10__ {int targ_lun; int targ_port; int initid; } ;
struct TYPE_11__ {TYPE_4__ nexus; int io_type; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_6__ scsiio; TYPE_5__ io_hdr; } ;
struct iscsi_bhs_scsi_command {int bhssc_flags; int bhssc_cdb; int bhssc_initiator_task_tag; int bhssc_lun; } ;
struct icl_pdu {scalar_t__ ip_data_len; scalar_t__ ip_bhs; } ;
struct cfiscsi_session {int cs_immediate_data; int cs_outstanding_ctl_pdus; TYPE_3__* cs_target; int cs_ctl_initid; } ;
struct TYPE_8__ {int targ_port; int ctl_pool_ref; } ;
struct TYPE_9__ {TYPE_2__ ct_port; } ;
struct TYPE_7__ {struct icl_pdu* ptr; } ;


 int BHSSC_FLAGS_ATTR ;





 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,...) ;
 int CTL_IO_SCSI ;
 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 void* CTL_TAG_ACA ;
 void* CTL_TAG_HEAD_OF_QUEUE ;
 void* CTL_TAG_ORDERED ;
 void* CTL_TAG_SIMPLE ;
 void* CTL_TAG_UNTAGGED ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int be64toh (int ) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 union ctl_io* ctl_alloc_io (int ) ;
 int ctl_decode_lun (int ) ;
 int ctl_free_io (union ctl_io*) ;
 int ctl_queue (union ctl_io*) ;
 int ctl_zero_io (union ctl_io*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int memcpy (int ,int ,int) ;
 int refcount_acquire (int *) ;
 int refcount_release (int *) ;

__attribute__((used)) static void
cfiscsi_pdu_handle_scsi_command(struct icl_pdu *request)
{
 struct iscsi_bhs_scsi_command *bhssc;
 struct cfiscsi_session *cs;
 union ctl_io *io;
 int error;

 cs = PDU_SESSION(request);
 bhssc = (struct iscsi_bhs_scsi_command *)request->ip_bhs;



 if (request->ip_data_len > 0 && cs->cs_immediate_data == 0) {
  CFISCSI_SESSION_WARN(cs, "unsolicited data with "
      "ImmediateData=No; dropping connection");
  icl_pdu_free(request);
  cfiscsi_session_terminate(cs);
  return;
 }
 io = ctl_alloc_io(cs->cs_target->ct_port.ctl_pool_ref);
 ctl_zero_io(io);
 io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = request;
 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.nexus.initid = cs->cs_ctl_initid;
 io->io_hdr.nexus.targ_port = cs->cs_target->ct_port.targ_port;
 io->io_hdr.nexus.targ_lun = ctl_decode_lun(be64toh(bhssc->bhssc_lun));
 io->scsiio.tag_num = bhssc->bhssc_initiator_task_tag;
 switch ((bhssc->bhssc_flags & BHSSC_FLAGS_ATTR)) {
 case 128:
  io->scsiio.tag_type = CTL_TAG_UNTAGGED;
  break;
 case 129:
  io->scsiio.tag_type = CTL_TAG_SIMPLE;
  break;
 case 130:
         io->scsiio.tag_type = CTL_TAG_ORDERED;
  break;
 case 131:
         io->scsiio.tag_type = CTL_TAG_HEAD_OF_QUEUE;
  break;
 case 132:
  io->scsiio.tag_type = CTL_TAG_ACA;
  break;
 default:
  io->scsiio.tag_type = CTL_TAG_UNTAGGED;
  CFISCSI_SESSION_WARN(cs, "unhandled tag type %d",
      bhssc->bhssc_flags & BHSSC_FLAGS_ATTR);
  break;
 }
 io->scsiio.cdb_len = sizeof(bhssc->bhssc_cdb);
 memcpy(io->scsiio.cdb, bhssc->bhssc_cdb, sizeof(bhssc->bhssc_cdb));
 refcount_acquire(&cs->cs_outstanding_ctl_pdus);
 error = ctl_queue(io);
 if (error != CTL_RETVAL_COMPLETE) {
  CFISCSI_SESSION_WARN(cs, "ctl_queue() failed; error %d; "
      "dropping connection", error);
  ctl_free_io(io);
  refcount_release(&cs->cs_outstanding_ctl_pdus);
  icl_pdu_free(request);
  cfiscsi_session_terminate(cs);
 }
}
