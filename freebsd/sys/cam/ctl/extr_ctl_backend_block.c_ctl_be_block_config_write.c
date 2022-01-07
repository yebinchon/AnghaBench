
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; int io_hdr; } ;
struct scsi_start_stop_unit {int how; } ;
struct ctl_lun_req {int dummy; } ;
struct ctl_be_lun {int flags; scalar_t__ be_lun; } ;
struct ctl_be_block_lun {int * vn; int io_task; int io_taskqueue; int queue_lock; int config_write_queue; } ;


 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int CTL_LUN_FLAG_EJECTED ;
 int CTL_LUN_FLAG_NO_MEDIA ;
 int CTL_RETVAL_COMPLETE ;
 int DPRINTF (char*) ;

 int SSS_LOEJ ;
 int SSS_PC_MASK ;
 int SSS_START ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;






 int ctl_be_block_close (struct ctl_be_block_lun*) ;
 int ctl_be_block_open (struct ctl_be_block_lun*,struct ctl_lun_req*) ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_lun_ejected (struct ctl_be_lun*) ;
 int ctl_lun_has_media (struct ctl_be_lun*) ;
 int ctl_lun_no_media (struct ctl_be_lun*) ;
 int ctl_set_invalid_opcode (TYPE_1__*) ;
 int ctl_set_success (TYPE_1__*) ;
 int ctl_start_lun (struct ctl_be_lun*) ;
 int ctl_stop_lun (struct ctl_be_lun*) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ctl_be_block_config_write(union ctl_io *io)
{
 struct ctl_be_block_lun *be_lun;
 struct ctl_be_lun *cbe_lun;
 int retval;

 DPRINTF("entered\n");

 cbe_lun = CTL_BACKEND_LUN(io);
 be_lun = (struct ctl_be_block_lun *)cbe_lun->be_lun;

 retval = 0;
 switch (io->scsiio.cdb[0]) {
 case 132:
 case 131:
 case 129:
 case 128:
 case 130:
  mtx_lock(&be_lun->queue_lock);
  STAILQ_INSERT_TAIL(&be_lun->config_write_queue, &io->io_hdr,
       links);
  mtx_unlock(&be_lun->queue_lock);
  taskqueue_enqueue(be_lun->io_taskqueue, &be_lun->io_task);
  break;
 case 133: {
  struct scsi_start_stop_unit *cdb;
  struct ctl_lun_req req;

  cdb = (struct scsi_start_stop_unit *)io->scsiio.cdb;
  if ((cdb->how & SSS_PC_MASK) != 0) {
   ctl_set_success(&io->scsiio);
   ctl_config_write_done(io);
   break;
  }
  if (cdb->how & SSS_START) {
   if ((cdb->how & SSS_LOEJ) && be_lun->vn == ((void*)0)) {
    retval = ctl_be_block_open(be_lun, &req);
    cbe_lun->flags &= ~CTL_LUN_FLAG_EJECTED;
    if (retval == 0) {
     cbe_lun->flags &= ~CTL_LUN_FLAG_NO_MEDIA;
     ctl_lun_has_media(cbe_lun);
    } else {
     cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;
     ctl_lun_no_media(cbe_lun);
    }
   }
   ctl_start_lun(cbe_lun);
  } else {
   ctl_stop_lun(cbe_lun);
   if (cdb->how & SSS_LOEJ) {
    cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;
    cbe_lun->flags |= CTL_LUN_FLAG_EJECTED;
    ctl_lun_ejected(cbe_lun);
    if (be_lun->vn != ((void*)0))
     ctl_be_block_close(be_lun);
   }
  }

  ctl_set_success(&io->scsiio);
  ctl_config_write_done(io);
  break;
 }
 case 134:
  ctl_set_success(&io->scsiio);
  ctl_config_write_done(io);
  break;
 default:
  ctl_set_invalid_opcode(&io->scsiio);
  ctl_config_write_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 }

 return (retval);
}
