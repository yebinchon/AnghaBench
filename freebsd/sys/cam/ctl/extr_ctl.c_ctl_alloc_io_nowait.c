
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* pool; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_io_pool {TYPE_3__* ctl_softc; int zone; } ;
struct TYPE_5__ {int blocked_queue; } ;
struct TYPE_6__ {TYPE_2__ io_hdr; } ;
typedef TYPE_3__* CTL_SOFTC ;


 int M_NOWAIT ;
 int TAILQ_INIT (int *) ;
 union ctl_io* uma_zalloc (int ,int ) ;

union ctl_io *
ctl_alloc_io_nowait(void *pool_ref)
{
 struct ctl_io_pool *pool = (struct ctl_io_pool *)pool_ref;
 union ctl_io *io;

 io = uma_zalloc(pool->zone, M_NOWAIT);
 if (io != ((void*)0)) {
  io->io_hdr.pool = pool_ref;
  CTL_SOFTC(io) = pool->ctl_softc;
  TAILQ_INIT(&io->io_hdr.blocked_queue);
 }
 return (io);
}
