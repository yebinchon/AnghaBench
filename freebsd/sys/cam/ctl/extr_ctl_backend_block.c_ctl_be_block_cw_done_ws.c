
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int status; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_be_block_io {union ctl_io* io; } ;


 int CTL_FLAG_ABORT ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 int ctl_be_block_config_write (union ctl_io*) ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_free_beio (struct ctl_be_block_io*) ;

__attribute__((used)) static void
ctl_be_block_cw_done_ws(struct ctl_be_block_io *beio)
{
 union ctl_io *io;

 io = beio->io;
 ctl_free_beio(beio);
 if ((io->io_hdr.flags & CTL_FLAG_ABORT) ||
     ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE &&
      (io->io_hdr.status & CTL_STATUS_MASK) != CTL_SUCCESS)) {
  ctl_config_write_done(io);
  return;
 }

 ctl_be_block_config_write(io);
}
