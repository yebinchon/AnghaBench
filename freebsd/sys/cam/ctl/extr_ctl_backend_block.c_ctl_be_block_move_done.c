
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ port_status; int status; int num_dmas; int dma_bt; int dma_start_bt; } ;
struct TYPE_6__ {scalar_t__ kern_data_resid; scalar_t__ kern_data_len; int kern_rel_offset; } ;
union ctl_io {TYPE_4__ io_hdr; TYPE_1__ scsiio; } ;
struct ctl_lba_len_flags {int flags; } ;
struct ctl_be_block_lun {int io_task; int io_taskqueue; int queue_lock; int datamove_queue; } ;
struct ctl_be_block_io {scalar_t__ bio_cmd; int io; struct ctl_be_block_lun* lun; } ;
struct bintime {int dummy; } ;
struct TYPE_8__ {scalar_t__ ptr; } ;


 struct ctl_lba_len_flags* ARGS (int ) ;
 scalar_t__ BIO_READ ;
 int CTL_FLAG_ABORT ;
 int CTL_FLAG_DATA_MASK ;
 int CTL_FLAG_DATA_OUT ;
 int CTL_LLF_COMPARE ;
 int CTL_LLF_READ ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 int DPRINTF (char*) ;
 TYPE_5__* PRIV (union ctl_io*) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 int bintime_add (int *,struct bintime*) ;
 int bintime_sub (struct bintime*,int *) ;
 int ctl_be_block_compare (union ctl_io*) ;
 int ctl_complete_beio (struct ctl_be_block_io*) ;
 int ctl_set_internal_failure (TYPE_1__*,int,scalar_t__) ;
 int ctl_set_invalid_field_ciu (TYPE_1__*) ;
 int ctl_set_success (TYPE_1__*) ;
 int getbinuptime (struct bintime*) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
ctl_be_block_move_done(union ctl_io *io)
{
 struct ctl_be_block_io *beio;
 struct ctl_be_block_lun *be_lun;
 struct ctl_lba_len_flags *lbalen;




 beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
 be_lun = beio->lun;

 DPRINTF("entered\n");






 io->io_hdr.num_dmas++;
 io->scsiio.kern_rel_offset += io->scsiio.kern_data_len;





 if (io->io_hdr.flags & CTL_FLAG_ABORT) {
  ;
 } else if ((io->io_hdr.port_status != 0) &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
      (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
  ctl_set_internal_failure(&io->scsiio, 1,
                      io->io_hdr.port_status);
 } else if (io->scsiio.kern_data_resid != 0 &&
     (io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_OUT &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
      (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
  ctl_set_invalid_field_ciu(&io->scsiio);
 } else if ((io->io_hdr.port_status == 0) &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE)) {
  lbalen = ARGS(beio->io);
  if (lbalen->flags & CTL_LLF_READ) {
   ctl_set_success(&io->scsiio);
  } else if (lbalen->flags & CTL_LLF_COMPARE) {

   ctl_be_block_compare(io);
  }
 }




 if ((beio->bio_cmd == BIO_READ)
  || ((io->io_hdr.flags & CTL_FLAG_ABORT) != 0)
  || ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE)) {
  ctl_complete_beio(beio);
  return (0);
 }
 mtx_lock(&be_lun->queue_lock);
 STAILQ_INSERT_TAIL(&be_lun->datamove_queue, &io->io_hdr, links);
 mtx_unlock(&be_lun->queue_lock);
 taskqueue_enqueue(be_lun->io_taskqueue, &be_lun->io_task);

 return (0);
}
