
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ext_data_filled; int tag_num; } ;
struct TYPE_8__ {int targ_lun; int targ_port; scalar_t__ initid; } ;
struct TYPE_7__ {TYPE_4__ nexus; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_3__ io_hdr; } ;
typedef int uint64_t ;
struct TYPE_5__ {int targ_port; } ;
struct tpcl_softc {int cur_tag_num; TYPE_1__ port; } ;


 int atomic_fetchadd_int (int *,int) ;
 int ctl_queue (union ctl_io*) ;
 struct tpcl_softc tpcl_softc ;

int
tpcl_queue(union ctl_io *io, uint64_t lun)
{
 struct tpcl_softc *tsoftc = &tpcl_softc;

 io->io_hdr.nexus.initid = 0;
 io->io_hdr.nexus.targ_port = tsoftc->port.targ_port;
 io->io_hdr.nexus.targ_lun = lun;
 io->scsiio.tag_num = atomic_fetchadd_int(&tsoftc->cur_tag_num, 1);
 io->scsiio.ext_data_filled = 0;
 return (ctl_queue(io));
}
