
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * blocker; int start_bt; } ;
struct TYPE_3__ {int cdb_len; int cdb; int tag_num; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_1__ scsiio; } ;
typedef scalar_t__ uint32_t ;
struct ctl_ooa_entry {int cmd_flags; int cdb_len; int cdb; int start_bt; int lun_num; int tag_num; } ;
struct ctl_ooa {scalar_t__ alloc_num; } ;
struct ctl_lun {int lun_lock; int lun; int ooa_queue; } ;


 int CTL_FLAG_ABORT ;
 int CTL_FLAG_DMA_INPROG ;
 int CTL_FLAG_DMA_QUEUED ;
 int CTL_FLAG_IS_WAS_ON_RTR ;
 int CTL_OOACMD_FLAG_ABORT ;
 int CTL_OOACMD_FLAG_BLOCKED ;
 int CTL_OOACMD_FLAG_DMA ;
 int CTL_OOACMD_FLAG_DMA_QUEUED ;
 int CTL_OOACMD_FLAG_RTR ;
 scalar_t__ TAILQ_FIRST (int *) ;
 scalar_t__ TAILQ_NEXT (TYPE_2__*,int ) ;
 int bcopy (int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ooa_links ;

__attribute__((used)) static void
ctl_ioctl_fill_ooa(struct ctl_lun *lun, uint32_t *cur_fill_num,
     struct ctl_ooa *ooa_hdr, struct ctl_ooa_entry *kern_entries)
{
 union ctl_io *io;

 mtx_lock(&lun->lun_lock);
 for (io = (union ctl_io *)TAILQ_FIRST(&lun->ooa_queue); (io != ((void*)0));
      (*cur_fill_num)++, io = (union ctl_io *)TAILQ_NEXT(&io->io_hdr,
      ooa_links)) {
  struct ctl_ooa_entry *entry;





  if (*cur_fill_num >= ooa_hdr->alloc_num)
   continue;

  entry = &kern_entries[*cur_fill_num];

  entry->tag_num = io->scsiio.tag_num;
  entry->lun_num = lun->lun;



  bcopy(io->scsiio.cdb, entry->cdb, io->scsiio.cdb_len);
  entry->cdb_len = io->scsiio.cdb_len;
  if (io->io_hdr.blocker != ((void*)0))
   entry->cmd_flags |= CTL_OOACMD_FLAG_BLOCKED;

  if (io->io_hdr.flags & CTL_FLAG_DMA_INPROG)
   entry->cmd_flags |= CTL_OOACMD_FLAG_DMA;

  if (io->io_hdr.flags & CTL_FLAG_ABORT)
   entry->cmd_flags |= CTL_OOACMD_FLAG_ABORT;

  if (io->io_hdr.flags & CTL_FLAG_IS_WAS_ON_RTR)
   entry->cmd_flags |= CTL_OOACMD_FLAG_RTR;

  if (io->io_hdr.flags & CTL_FLAG_DMA_QUEUED)
   entry->cmd_flags |= CTL_OOACMD_FLAG_DMA_QUEUED;
 }
 mtx_unlock(&lun->lun_lock);
}
