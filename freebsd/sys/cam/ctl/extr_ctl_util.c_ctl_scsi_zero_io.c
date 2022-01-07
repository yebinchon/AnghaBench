
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pool; } ;
union ctl_io {TYPE_1__ io_hdr; } ;


 int memset (union ctl_io*,int ,int) ;

void
ctl_scsi_zero_io(union ctl_io *io)
{
 void *pool_ref;

 if (io == ((void*)0))
  return;

 pool_ref = io->io_hdr.pool;
 memset(io, 0, sizeof(*io));
 io->io_hdr.pool = pool_ref;
}
