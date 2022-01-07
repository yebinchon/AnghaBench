
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ext_data_filled; } ;
struct TYPE_3__ {int flags; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;


 int CTL_FLAG_DATA_IN ;
 int CTL_FLAG_DATA_MASK ;
 int cfiscsi_datamove_in (union ctl_io*) ;
 int cfiscsi_datamove_out (union ctl_io*) ;

__attribute__((used)) static void
cfiscsi_datamove(union ctl_io *io)
{

 if ((io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_IN)
  cfiscsi_datamove_in(io);
 else {

  io->scsiio.ext_data_filled = 0;
  cfiscsi_datamove_out(io);
 }
}
