
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ctl_io {int scsiio; int io_hdr; } ;
struct ctl_be_lun {int flags; } ;
struct ctl_be_block_lun {int queue_lock; int input_queue; int config_read_queue; int config_write_queue; int (* dispatch ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;int datamove_queue; struct ctl_be_lun cbe_lun; } ;
struct ctl_be_block_io {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr; } ;


 int CTL_LUN_FLAG_NO_MEDIA ;
 int DPRINTF (char*) ;
 TYPE_1__* PRIV (union ctl_io*) ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE (int *,int *,int ,int ) ;
 int ctl_be_block_cr_dispatch (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_be_block_cw_dispatch (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_be_block_dispatch (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_complete_beio (struct ctl_be_block_io*) ;
 int ctl_config_read_done (union ctl_io*) ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_data_submit_done (union ctl_io*) ;
 int ctl_io_hdr ;
 int ctl_set_busy (int *) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_worker(void *context, int pending)
{
 struct ctl_be_block_lun *be_lun = (struct ctl_be_block_lun *)context;
 struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
 union ctl_io *io;
 struct ctl_be_block_io *beio;

 DPRINTF("entered\n");





 for (;;) {
  mtx_lock(&be_lun->queue_lock);
  io = (union ctl_io *)STAILQ_FIRST(&be_lun->datamove_queue);
  if (io != ((void*)0)) {
   DPRINTF("datamove queue\n");
   STAILQ_REMOVE(&be_lun->datamove_queue, &io->io_hdr,
          ctl_io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
   if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
    ctl_set_busy(&io->scsiio);
    ctl_complete_beio(beio);
    return;
   }
   be_lun->dispatch(be_lun, beio);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&be_lun->config_write_queue);
  if (io != ((void*)0)) {
   DPRINTF("config write queue\n");
   STAILQ_REMOVE(&be_lun->config_write_queue, &io->io_hdr,
          ctl_io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
    ctl_set_busy(&io->scsiio);
    ctl_config_write_done(io);
    return;
   }
   ctl_be_block_cw_dispatch(be_lun, io);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&be_lun->config_read_queue);
  if (io != ((void*)0)) {
   DPRINTF("config read queue\n");
   STAILQ_REMOVE(&be_lun->config_read_queue, &io->io_hdr,
          ctl_io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
    ctl_set_busy(&io->scsiio);
    ctl_config_read_done(io);
    return;
   }
   ctl_be_block_cr_dispatch(be_lun, io);
   continue;
  }
  io = (union ctl_io *)STAILQ_FIRST(&be_lun->input_queue);
  if (io != ((void*)0)) {
   DPRINTF("input queue\n");
   STAILQ_REMOVE(&be_lun->input_queue, &io->io_hdr,
          ctl_io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   if (cbe_lun->flags & CTL_LUN_FLAG_NO_MEDIA) {
    ctl_set_busy(&io->scsiio);
    ctl_data_submit_done(io);
    return;
   }
   ctl_be_block_dispatch(be_lun, io);
   continue;
  }





  mtx_unlock(&be_lun->queue_lock);
  break;
 }
}
