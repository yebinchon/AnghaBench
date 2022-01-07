
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_6__ {int pgno; int flags; int page; } ;
struct TYPE_5__ {int pagesize; int pgcookie; int (* pgin ) (int ,int,int ) ;int fd; int (* pgout ) (int ,int,int ) ;int pagewrite; } ;
typedef TYPE_1__ MPOOL ;
typedef TYPE_2__ BKT ;


 int MPOOL_DIRTY ;
 int RET_ERROR ;
 int RET_SUCCESS ;
 scalar_t__ pwrite (int ,int ,int,int) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int,int ) ;

__attribute__((used)) static int
mpool_write(MPOOL *mp, BKT *bp)
{
 off_t off;






 if (mp->pgout)
  (mp->pgout)(mp->pgcookie, bp->pgno, bp->page);

 off = mp->pagesize * bp->pgno;
 if (pwrite(mp->fd, bp->page, mp->pagesize, off) != (ssize_t)mp->pagesize)
  return (RET_ERROR);







 if (mp->pgin)
  (mp->pgin)(mp->pgcookie, bp->pgno, bp->page);

 bp->flags &= ~MPOOL_DIRTY;
 return (RET_SUCCESS);
}
