
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; int num_dmas; int dma_bt; int dma_start_bt; int port_status; int status; int nexus; int remote_io; } ;
struct TYPE_6__ {scalar_t__ sense_len; int sense_data; int scsi_status; int tag_type; int tag_num; int kern_data_resid; } ;
union ctl_io {TYPE_4__ io_hdr; TYPE_2__ scsiio; } ;
struct TYPE_7__ {scalar_t__ sense_len; int port_status; int sense_data; int scsi_status; int tag_type; int tag_num; int kern_data_resid; } ;
struct TYPE_5__ {int status; int nexus; int serializing_sc; union ctl_io* original_sc; int msg_type; } ;
union ctl_ha_msg {TYPE_3__ scsi; TYPE_1__ hdr; } ;
struct bintime {int dummy; } ;
typedef int msg ;


 int CTL_FLAG_FAILOVER ;
 int CTL_FLAG_IO_ACTIVE ;
 int CTL_HA_CHAN_CTL ;
 int CTL_MSG_DATAMOVE_DONE ;
 int M_WAITOK ;
 int bintime_add (int *,struct bintime*) ;
 int bintime_sub (struct bintime*,int *) ;
 int ctl_failover_io (union ctl_io*,int) ;
 int ctl_ha_msg_send (int ,union ctl_ha_msg*,scalar_t__,int ) ;
 int getbinuptime (struct bintime*) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (union ctl_ha_msg*,int ,int) ;

__attribute__((used)) static void
ctl_send_datamove_done(union ctl_io *io, int have_lock)
{
 union ctl_ha_msg msg;




 memset(&msg, 0, sizeof(msg));
 msg.hdr.msg_type = CTL_MSG_DATAMOVE_DONE;
 msg.hdr.original_sc = io;
 msg.hdr.serializing_sc = io->io_hdr.remote_io;
 msg.hdr.nexus = io->io_hdr.nexus;
 msg.hdr.status = io->io_hdr.status;
 msg.scsi.kern_data_resid = io->scsiio.kern_data_resid;
 msg.scsi.tag_num = io->scsiio.tag_num;
 msg.scsi.tag_type = io->scsiio.tag_type;
 msg.scsi.scsi_status = io->scsiio.scsi_status;
 memcpy(&msg.scsi.sense_data, &io->scsiio.sense_data,
        io->scsiio.sense_len);
 msg.scsi.sense_len = io->scsiio.sense_len;
 msg.scsi.port_status = io->io_hdr.port_status;
 io->io_hdr.flags &= ~CTL_FLAG_IO_ACTIVE;
 if (io->io_hdr.flags & CTL_FLAG_FAILOVER) {
  ctl_failover_io(io, have_lock);
  return;
 }
 ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg,
     sizeof(msg.scsi) - sizeof(msg.scsi.sense_data) +
     msg.scsi.sense_len, M_WAITOK);






 io->io_hdr.num_dmas++;
}
