
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pool; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_io_pool {int zone; } ;


 int uma_zfree (int ,union ctl_io*) ;

void
ctl_free_io(union ctl_io *io)
{
 struct ctl_io_pool *pool;

 if (io == ((void*)0))
  return;

 pool = (struct ctl_io_pool *)io->io_hdr.pool;
 uma_zfree(pool->zone, io);
}
