
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; int io_hdr; } ;
struct ctl_be_lun {scalar_t__ be_lun; } ;
struct ctl_be_block_lun {int io_task; int io_taskqueue; int queue_lock; int config_read_queue; } ;


 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_RETVAL_QUEUED ;
 int DPRINTF (char*) ;

 int SGLS_SERVICE_ACTION ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int ctl_config_read_done (union ctl_io*) ;
 int ctl_set_invalid_field (TYPE_1__*,int,int,int,int,int) ;
 int ctl_set_invalid_opcode (TYPE_1__*) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ctl_be_block_config_read(union ctl_io *io)
{
 struct ctl_be_block_lun *be_lun;
 struct ctl_be_lun *cbe_lun;
 int retval = 0;

 DPRINTF("entered\n");

 cbe_lun = CTL_BACKEND_LUN(io);
 be_lun = (struct ctl_be_block_lun *)cbe_lun->be_lun;

 switch (io->scsiio.cdb[0]) {
 case 128:
  if (io->scsiio.cdb[1] == SGLS_SERVICE_ACTION) {
   mtx_lock(&be_lun->queue_lock);
   STAILQ_INSERT_TAIL(&be_lun->config_read_queue,
       &io->io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   taskqueue_enqueue(be_lun->io_taskqueue,
       &be_lun->io_task);
   retval = CTL_RETVAL_QUEUED;
   break;
  }
  ctl_set_invalid_field(&io->scsiio,
                        1,
                      1,
                    1,
                        1,
                  4);
  ctl_config_read_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 default:
  ctl_set_invalid_opcode(&io->scsiio);
  ctl_config_read_done(io);
  retval = CTL_RETVAL_COMPLETE;
  break;
 }

 return (retval);
}
