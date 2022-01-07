
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocked_queue; int * blocker; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
struct ctl_lun {int lun_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 scalar_t__ TAILQ_FIRST (int *) ;
 scalar_t__ TAILQ_NEXT (TYPE_1__*,int ) ;
 int blocked_links ;
 int ctl_try_unblock_io (struct ctl_lun*,union ctl_io*,int) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ctl_try_unblock_others(struct ctl_lun *lun, union ctl_io *bio, bool skip)
{
 union ctl_io *io, *next_io;

 mtx_assert(&lun->lun_lock, MA_OWNED);

 for (io = (union ctl_io *)TAILQ_FIRST(&bio->io_hdr.blocked_queue);
      io != ((void*)0); io = next_io) {
  next_io = (union ctl_io *)TAILQ_NEXT(&io->io_hdr, blocked_links);

  KASSERT(io->io_hdr.blocker != ((void*)0),
      ("I/O %p on blocked list without blocker", io));
  ctl_try_unblock_io(lun, io, skip);
 }
 KASSERT(!skip || TAILQ_EMPTY(&bio->io_hdr.blocked_queue),
     ("blocked_queue is not empty after skipping %p", bio));
}
