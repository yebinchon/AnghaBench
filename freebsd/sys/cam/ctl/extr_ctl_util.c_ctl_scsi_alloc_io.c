
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initid; } ;
struct TYPE_4__ {TYPE_1__ nexus; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
typedef int uint32_t ;


 scalar_t__ malloc (int) ;

union ctl_io *
ctl_scsi_alloc_io(uint32_t initid)
{
 union ctl_io *io;

 io = (union ctl_io *)malloc(sizeof(*io));
 if (io == ((void*)0))
  goto bailout;

 io->io_hdr.nexus.initid = initid;

bailout:
 return (io);
}
