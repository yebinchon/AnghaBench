
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct ctl_be_block_softc {int dummy; } ;
struct ctl_be_block_lun {int (* get_lba_status ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;struct ctl_be_block_softc* softc; } ;
struct ctl_be_block_io {int bio_cmd; int io_len; int ds_tag_type; int ds_trans_type; int (* beio_cont ) (struct ctl_be_block_io*) ;struct ctl_be_block_lun* lun; union ctl_io* io; } ;
struct TYPE_4__ {void* ptr; } ;


 int DEVSTAT_NO_DATA ;
 int DEVSTAT_TAG_ORDERED ;
 int DPRINTF (char*) ;
 TYPE_2__* PRIV (union ctl_io*) ;

 struct ctl_be_block_io* ctl_alloc_beio (struct ctl_be_block_softc*) ;
 int ctl_be_block_cr_done (struct ctl_be_block_io*) ;
 int panic (char*,int) ;
 int stub1 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_cr_dispatch(struct ctl_be_block_lun *be_lun,
    union ctl_io *io)
{
 struct ctl_be_block_io *beio;
 struct ctl_be_block_softc *softc;

 DPRINTF("entered\n");

 softc = be_lun->softc;
 beio = ctl_alloc_beio(softc);
 beio->io = io;
 beio->lun = be_lun;
 beio->beio_cont = ctl_be_block_cr_done;
 PRIV(io)->ptr = (void *)beio;

 switch (io->scsiio.cdb[0]) {
 case 128:
  beio->bio_cmd = -1;
  beio->ds_trans_type = DEVSTAT_NO_DATA;
  beio->ds_tag_type = DEVSTAT_TAG_ORDERED;
  beio->io_len = 0;
  if (be_lun->get_lba_status)
   be_lun->get_lba_status(be_lun, beio);
  else
   ctl_be_block_cr_done(beio);
  break;
 default:
  panic("Unhandled CDB type %#x", io->scsiio.cdb[0]);
  break;
 }
}
