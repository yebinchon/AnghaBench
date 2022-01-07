
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int targ_lun; int targ_mapped_lun; } ;
struct TYPE_5__ {int io_type; TYPE_1__ nexus; int start_bt; int start_time; } ;
struct TYPE_6__ {int * cdb; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_3__ scsiio; } ;
struct ctl_port {int dummy; } ;


 int CTL_DEBUG_CDB ;
 int CTL_DEBUG_PRINT (char*) ;


 struct ctl_port* CTL_PORT (union ctl_io*) ;
 int CTL_RETVAL_COMPLETE ;
 int EINVAL ;
 int ctl_debug ;
 int ctl_enqueue_incoming (union ctl_io*) ;
 int ctl_io_print (union ctl_io*) ;
 int ctl_lun_map_from_port (struct ctl_port*,int ) ;
 int getbinuptime (int *) ;
 int printf (char*,int) ;
 int time_uptime ;

int
ctl_queue(union ctl_io *io)
{
 struct ctl_port *port = CTL_PORT(io);

 CTL_DEBUG_PRINT(("ctl_queue cdb[0]=%02X\n", io->scsiio.cdb[0]));







 io->io_hdr.nexus.targ_mapped_lun =
     ctl_lun_map_from_port(port, io->io_hdr.nexus.targ_lun);

 switch (io->io_hdr.io_type) {
 case 129:
 case 128:
  if (ctl_debug & CTL_DEBUG_CDB)
   ctl_io_print(io);
  ctl_enqueue_incoming(io);
  break;
 default:
  printf("ctl_queue: unknown I/O type %d\n", io->io_hdr.io_type);
  return (EINVAL);
 }

 return (CTL_RETVAL_COMPLETE);
}
