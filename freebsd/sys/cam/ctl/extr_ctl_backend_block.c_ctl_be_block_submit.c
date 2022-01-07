
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_type; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_be_lun {scalar_t__ be_lun; } ;
struct ctl_be_block_lun {int io_task; int io_taskqueue; int queue_lock; int input_queue; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 scalar_t__ CTL_IO_SCSI ;
 int CTL_RETVAL_COMPLETE ;
 int DPRINTF (char*) ;
 int KASSERT (int,char*) ;
 TYPE_2__* PRIV (union ctl_io*) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ctl_be_block_submit(union ctl_io *io)
{
 struct ctl_be_block_lun *be_lun;
 struct ctl_be_lun *cbe_lun;

 DPRINTF("entered\n");

 cbe_lun = CTL_BACKEND_LUN(io);
 be_lun = (struct ctl_be_block_lun *)cbe_lun->be_lun;




 KASSERT(io->io_hdr.io_type == CTL_IO_SCSI, ("Non-SCSI I/O (type "
  "%#x) encountered", io->io_hdr.io_type));

 PRIV(io)->len = 0;

 mtx_lock(&be_lun->queue_lock);
 STAILQ_INSERT_TAIL(&be_lun->input_queue, &io->io_hdr, links);
 mtx_unlock(&be_lun->queue_lock);
 taskqueue_enqueue(be_lun->io_taskqueue, &be_lun->io_task);

 return (CTL_RETVAL_COMPLETE);
}
