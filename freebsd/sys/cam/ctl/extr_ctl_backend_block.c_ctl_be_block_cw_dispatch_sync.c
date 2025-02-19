
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctl_private; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_lba_len_flags {int len; int lba; int flags; } ;
struct ctl_be_lun {int blocksize; } ;
struct ctl_be_block_lun {int (* lun_flush ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;struct ctl_be_lun cbe_lun; } ;
struct ctl_be_block_io {int io_len; int io_offset; int io_arg; int ds_trans_type; int bio_cmd; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;


 int BIO_FLUSH ;
 size_t CTL_PRIV_LBA_LEN ;
 int DEVSTAT_NO_DATA ;
 int DPRINTF (char*) ;
 TYPE_2__* PRIV (union ctl_io*) ;
 int SSC_IMMED ;
 int stub1 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_cw_dispatch_sync(struct ctl_be_block_lun *be_lun,
       union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
 struct ctl_be_block_io *beio;
 struct ctl_lba_len_flags *lbalen;

 DPRINTF("entered\n");
 beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
 lbalen = (struct ctl_lba_len_flags *)&io->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];

 beio->io_len = lbalen->len * cbe_lun->blocksize;
 beio->io_offset = lbalen->lba * cbe_lun->blocksize;
 beio->io_arg = (lbalen->flags & SSC_IMMED) != 0;
 beio->bio_cmd = BIO_FLUSH;
 beio->ds_trans_type = DEVSTAT_NO_DATA;
 DPRINTF("SYNC\n");
 be_lun->lun_flush(be_lun, beio);
}
