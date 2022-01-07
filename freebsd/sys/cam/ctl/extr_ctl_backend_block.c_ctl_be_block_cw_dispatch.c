
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag_type; int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;
struct ctl_be_block_softc {int dummy; } ;
struct ctl_be_block_lun {struct ctl_be_block_softc* softc; } ;
struct ctl_be_block_io {int ds_tag_type; int beio_cont; struct ctl_be_block_lun* lun; union ctl_io* io; } ;
struct TYPE_4__ {void* ptr; } ;







 int DEVSTAT_TAG_HEAD ;
 int DEVSTAT_TAG_ORDERED ;
 int DEVSTAT_TAG_SIMPLE ;
 int DPRINTF (char*) ;
 TYPE_2__* PRIV (union ctl_io*) ;





 struct ctl_be_block_io* ctl_alloc_beio (struct ctl_be_block_softc*) ;
 int ctl_be_block_cw_dispatch_sync (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_be_block_cw_dispatch_unmap (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_be_block_cw_dispatch_ws (struct ctl_be_block_lun*,union ctl_io*) ;
 int ctl_be_block_cw_done ;
 int panic (char*,int) ;

__attribute__((used)) static void
ctl_be_block_cw_dispatch(struct ctl_be_block_lun *be_lun,
    union ctl_io *io)
{
 struct ctl_be_block_io *beio;
 struct ctl_be_block_softc *softc;

 DPRINTF("entered\n");

 softc = be_lun->softc;
 beio = ctl_alloc_beio(softc);
 beio->io = io;
 beio->lun = be_lun;
 beio->beio_cont = ctl_be_block_cw_done;
 switch (io->scsiio.tag_type) {
 case 135:
  beio->ds_tag_type = DEVSTAT_TAG_ORDERED;
  break;
 case 136:
  beio->ds_tag_type = DEVSTAT_TAG_HEAD;
  break;
 case 133:
 case 134:
 case 137:
 default:
  beio->ds_tag_type = DEVSTAT_TAG_SIMPLE;
  break;
 }
 PRIV(io)->ptr = (void *)beio;

 switch (io->scsiio.cdb[0]) {
 case 132:
 case 131:
  ctl_be_block_cw_dispatch_sync(be_lun, io);
  break;
 case 129:
 case 128:
  ctl_be_block_cw_dispatch_ws(be_lun, io);
  break;
 case 130:
  ctl_be_block_cw_dispatch_unmap(be_lun, io);
  break;
 default:
  panic("Unhandled CDB type %#x", io->scsiio.cdb[0]);
  break;
 }
}
