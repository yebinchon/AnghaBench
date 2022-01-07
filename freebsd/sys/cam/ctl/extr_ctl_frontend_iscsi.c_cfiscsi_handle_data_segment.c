
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int kern_sg_entries; size_t kern_data_ptr; size_t kern_data_len; size_t kern_rel_offset; size_t ext_data_filled; size_t kern_data_resid; int kern_total_len; } ;
struct TYPE_4__ {int flags; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_1__ io_hdr; } ;
struct iscsi_bhs_data_out {int bhsdo_flags; int bhsdo_buffer_offset; } ;
struct icl_pdu {TYPE_2__* ip_bhs; int ip_data_len; } ;
struct ctl_sg_entry {size_t addr; size_t len; } ;
struct cfiscsi_session {int dummy; } ;
struct cfiscsi_data_wait {int cdw_sg_index; size_t cdw_sg_len; size_t cdw_sg_addr; size_t cdw_r2t_end; int cdw_target_transfer_tag; union ctl_io* cdw_ctl_io; } ;
struct TYPE_5__ {int bhs_opcode; } ;


 int BHSDO_FLAGS_F ;
 int CFISCSI_SESSION_DEBUG (struct cfiscsi_session*,char*,int ,...) ;
 int CFISCSI_SESSION_WARN (struct cfiscsi_session*,char*,size_t,...) ;
 int CTL_FLAG_DATA_IN ;
 int CTL_FLAG_DATA_MASK ;
 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_SCSI_COMMAND ;
 int ISCSI_BHS_OPCODE_SCSI_DATA_OUT ;
 int KASSERT (int,char*) ;
 struct cfiscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int cfiscsi_session_terminate (struct cfiscsi_session*) ;
 int ctl_set_data_phase_error (TYPE_3__*) ;
 size_t icl_pdu_data_segment_length (struct icl_pdu*) ;
 int icl_pdu_get_data (struct icl_pdu*,size_t,size_t,size_t) ;
 size_t ntohl (int ) ;

__attribute__((used)) static bool
cfiscsi_handle_data_segment(struct icl_pdu *request, struct cfiscsi_data_wait *cdw)
{
 struct iscsi_bhs_data_out *bhsdo;
 struct cfiscsi_session *cs;
 struct ctl_sg_entry ctl_sg_entry, *ctl_sglist;
 size_t copy_len, len, off, buffer_offset;
 int ctl_sg_count;
 union ctl_io *io;

 cs = PDU_SESSION(request);

 KASSERT((request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
     ISCSI_BHS_OPCODE_SCSI_DATA_OUT ||
     (request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
     ISCSI_BHS_OPCODE_SCSI_COMMAND,
     ("bad opcode 0x%x", request->ip_bhs->bhs_opcode));




 bhsdo = (struct iscsi_bhs_data_out *)request->ip_bhs;

 io = cdw->cdw_ctl_io;
 KASSERT((io->io_hdr.flags & CTL_FLAG_DATA_MASK) != CTL_FLAG_DATA_IN,
     ("CTL_FLAG_DATA_IN"));






 if (io->scsiio.kern_sg_entries > 0) {
  ctl_sglist = (struct ctl_sg_entry *)io->scsiio.kern_data_ptr;
  ctl_sg_count = io->scsiio.kern_sg_entries;
 } else {
  ctl_sglist = &ctl_sg_entry;
  ctl_sglist->addr = io->scsiio.kern_data_ptr;
  ctl_sglist->len = io->scsiio.kern_data_len;
  ctl_sg_count = 1;
 }

 if ((request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
     ISCSI_BHS_OPCODE_SCSI_DATA_OUT)
  buffer_offset = ntohl(bhsdo->bhsdo_buffer_offset);
 else
  buffer_offset = 0;
 len = icl_pdu_data_segment_length(request);





 if (buffer_offset >
     io->scsiio.kern_rel_offset + io->scsiio.ext_data_filled ||
     buffer_offset + len <=
     io->scsiio.kern_rel_offset + io->scsiio.ext_data_filled) {
  CFISCSI_SESSION_WARN(cs, "received bad buffer offset %zd, "
      "expected %zd; dropping connection", buffer_offset,
      (size_t)io->scsiio.kern_rel_offset +
      (size_t)io->scsiio.ext_data_filled);
  ctl_set_data_phase_error(&io->scsiio);
  cfiscsi_session_terminate(cs);
  return (1);
 }






 off = io->scsiio.kern_rel_offset + io->scsiio.ext_data_filled -
     buffer_offset;







 for (;;) {
  KASSERT(cdw->cdw_sg_index < ctl_sg_count,
      ("cdw->cdw_sg_index >= ctl_sg_count"));
  if (cdw->cdw_sg_len == 0) {
   cdw->cdw_sg_addr = ctl_sglist[cdw->cdw_sg_index].addr;
   cdw->cdw_sg_len = ctl_sglist[cdw->cdw_sg_index].len;
  }
  KASSERT(off <= len, ("len > off"));
  copy_len = len - off;
  if (copy_len > cdw->cdw_sg_len)
   copy_len = cdw->cdw_sg_len;

  icl_pdu_get_data(request, off, cdw->cdw_sg_addr, copy_len);
  cdw->cdw_sg_addr += copy_len;
  cdw->cdw_sg_len -= copy_len;
  off += copy_len;
  io->scsiio.ext_data_filled += copy_len;
  io->scsiio.kern_data_resid -= copy_len;

  if (cdw->cdw_sg_len == 0) {



   if (cdw->cdw_sg_index == ctl_sg_count - 1) {



    break;
   }
   cdw->cdw_sg_index++;
  }

  if (off == len) {



   break;
  }
 }

 if (len > off) {
  if ((request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
      ISCSI_BHS_OPCODE_SCSI_COMMAND)
   return (1);

  CFISCSI_SESSION_WARN(cs, "received too much data: got %zd bytes, "
      "expected %zd; dropping connection",
      icl_pdu_data_segment_length(request), off);
  ctl_set_data_phase_error(&io->scsiio);
  cfiscsi_session_terminate(cs);
  return (1);
 }

 if (io->scsiio.ext_data_filled == cdw->cdw_r2t_end &&
     (bhsdo->bhsdo_flags & BHSDO_FLAGS_F) == 0) {
  CFISCSI_SESSION_WARN(cs, "got the final packet without "
      "the F flag; flags = 0x%x; dropping connection",
      bhsdo->bhsdo_flags);
  ctl_set_data_phase_error(&io->scsiio);
  cfiscsi_session_terminate(cs);
  return (1);
 }

 if (io->scsiio.ext_data_filled != cdw->cdw_r2t_end &&
     (bhsdo->bhsdo_flags & BHSDO_FLAGS_F) != 0) {
  if ((request->ip_bhs->bhs_opcode & ~ISCSI_BHS_OPCODE_IMMEDIATE) ==
      ISCSI_BHS_OPCODE_SCSI_DATA_OUT) {
   CFISCSI_SESSION_WARN(cs, "got the final packet, but the "
       "transmitted size was %zd bytes instead of %d; "
       "dropping connection",
       (size_t)io->scsiio.ext_data_filled,
       cdw->cdw_r2t_end);
   ctl_set_data_phase_error(&io->scsiio);
   cfiscsi_session_terminate(cs);
   return (1);
  } else {




   return (0);
  }
 }

 if (io->scsiio.ext_data_filled == cdw->cdw_r2t_end) {





  return (1);
 }

 return (0);
}
