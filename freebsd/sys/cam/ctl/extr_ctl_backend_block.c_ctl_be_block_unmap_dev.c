
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctl_private; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
typedef int uint64_t ;
struct scsi_unmap_desc {int lba; int length; } ;
struct ctl_ptr_len_flags {int len; scalar_t__ ptr; } ;
struct TYPE_4__ {int blocksize; } ;
struct ctl_be_block_lun {TYPE_2__ cbe_lun; int io_lock; int disk_stats; } ;
struct ctl_be_block_io {int io_offset; int io_len; int ds_t0; union ctl_io* io; } ;


 size_t CTL_PRIV_LBA_LEN ;
 int DPRINTF (char*) ;
 int FALSE ;
 int TRUE ;
 int binuptime (int *) ;
 int ctl_be_block_unmap_dev_range (struct ctl_be_block_lun*,struct ctl_be_block_io*,int,int,int ) ;
 int devstat_start_transaction (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;

__attribute__((used)) static void
ctl_be_block_unmap_dev(struct ctl_be_block_lun *be_lun,
         struct ctl_be_block_io *beio)
{
 union ctl_io *io;
 struct ctl_ptr_len_flags *ptrlen;
 struct scsi_unmap_desc *buf, *end;
 uint64_t len;

 io = beio->io;

 DPRINTF("entered\n");

 binuptime(&beio->ds_t0);
 mtx_lock(&be_lun->io_lock);
 devstat_start_transaction(be_lun->disk_stats, &beio->ds_t0);
 mtx_unlock(&be_lun->io_lock);

 if (beio->io_offset == -1) {
  beio->io_len = 0;
  ptrlen = (struct ctl_ptr_len_flags *)&io->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
  buf = (struct scsi_unmap_desc *)ptrlen->ptr;
  end = buf + ptrlen->len / sizeof(*buf);
  for (; buf < end; buf++) {
   len = (uint64_t)scsi_4btoul(buf->length) *
       be_lun->cbe_lun.blocksize;
   beio->io_len += len;
   ctl_be_block_unmap_dev_range(be_lun, beio,
       scsi_8btou64(buf->lba) * be_lun->cbe_lun.blocksize,
       len, (end - buf < 2) ? TRUE : FALSE);
  }
 } else
  ctl_be_block_unmap_dev_range(be_lun, beio,
      beio->io_offset, beio->io_len, TRUE);
}
