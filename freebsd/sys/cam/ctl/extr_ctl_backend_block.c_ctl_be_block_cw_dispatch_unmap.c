
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctl_private; } ;
union ctl_io {int scsiio; TYPE_1__ io_hdr; } ;
struct ctl_ptr_len_flags {int flags; } ;
struct ctl_be_block_lun {int (* unmap ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;} ;
struct ctl_be_block_io {int io_offset; int ds_trans_type; int bio_cmd; scalar_t__ io_len; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;


 int BIO_DELETE ;
 size_t CTL_PRIV_LBA_LEN ;
 int DEVSTAT_FREE ;
 int DPRINTF (char*) ;
 TYPE_2__* PRIV (union ctl_io*) ;
 int SU_ANCHOR ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_free_beio (struct ctl_be_block_io*) ;
 int ctl_set_invalid_field (int *,int ,int,int ,int ,int ) ;
 int stub1 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_cw_dispatch_unmap(struct ctl_be_block_lun *be_lun,
       union ctl_io *io)
{
 struct ctl_be_block_io *beio;
 struct ctl_ptr_len_flags *ptrlen;

 DPRINTF("entered\n");

 beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
 ptrlen = (struct ctl_ptr_len_flags *)&io->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];

 if ((ptrlen->flags & ~SU_ANCHOR) != 0 || be_lun->unmap == ((void*)0)) {
  ctl_free_beio(beio);
  ctl_set_invalid_field(&io->scsiio,
                        0,
                      1,
                    0,
                        0,
                  0);
  ctl_config_write_done(io);
  return;
 }

 beio->io_len = 0;
 beio->io_offset = -1;
 beio->bio_cmd = BIO_DELETE;
 beio->ds_trans_type = DEVSTAT_FREE;
 DPRINTF("UNMAP\n");
 be_lun->unmap(be_lun, beio);
}
