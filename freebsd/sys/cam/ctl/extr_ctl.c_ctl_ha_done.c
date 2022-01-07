
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sense_len; int sense_data; int tag_type; int tag_num; int scsi_status; } ;
struct TYPE_6__ {scalar_t__ io_type; int status; int nexus; int remote_io; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
struct TYPE_8__ {scalar_t__ sense_len; int sense_data; int tag_type; int tag_num; int scsi_status; } ;
struct TYPE_5__ {int status; int nexus; int original_sc; int msg_type; } ;
union ctl_ha_msg {TYPE_4__ scsi; TYPE_1__ hdr; } ;
typedef int msg ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_IO_SCSI ;
 int CTL_MSG_FINISH_IO ;
 int M_WAITOK ;
 int ctl_free_io (union ctl_io*) ;
 int ctl_ha_msg_send (int ,union ctl_ha_msg*,scalar_t__,int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (union ctl_ha_msg*,int ,int) ;

__attribute__((used)) static void
ctl_ha_done(union ctl_io *io)
{
 union ctl_ha_msg msg;

 if (io->io_hdr.io_type == CTL_IO_SCSI) {
  memset(&msg, 0, sizeof(msg));
  msg.hdr.msg_type = CTL_MSG_FINISH_IO;
  msg.hdr.original_sc = io->io_hdr.remote_io;
  msg.hdr.nexus = io->io_hdr.nexus;
  msg.hdr.status = io->io_hdr.status;
  msg.scsi.scsi_status = io->scsiio.scsi_status;
  msg.scsi.tag_num = io->scsiio.tag_num;
  msg.scsi.tag_type = io->scsiio.tag_type;
  msg.scsi.sense_len = io->scsiio.sense_len;
  memcpy(&msg.scsi.sense_data, &io->scsiio.sense_data,
      io->scsiio.sense_len);
  ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg,
      sizeof(msg.scsi) - sizeof(msg.scsi.sense_data) +
      msg.scsi.sense_len, M_WAITOK);
 }
 ctl_free_io(io);
}
