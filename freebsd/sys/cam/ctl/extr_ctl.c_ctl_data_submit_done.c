
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* io_cont ) (union ctl_io*) ;} ;
struct TYPE_4__ {int flags; int status; } ;
union ctl_io {TYPE_1__ scsiio; TYPE_2__ io_hdr; } ;


 int CTL_FLAG_ABORT ;
 int CTL_FLAG_IO_CONT ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 int ctl_done (union ctl_io*) ;
 int stub1 (union ctl_io*) ;

void
ctl_data_submit_done(union ctl_io *io)
{
 if ((io->io_hdr.flags & CTL_FLAG_IO_CONT) &&
     (io->io_hdr.flags & CTL_FLAG_ABORT) == 0 &&
     ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_STATUS_NONE ||
      (io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)) {
  io->scsiio.io_cont(io);
  return;
 }
 ctl_done(io);
}
