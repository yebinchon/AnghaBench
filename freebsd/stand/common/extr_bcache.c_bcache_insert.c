
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct bcache {TYPE_1__* bcache_ctl; } ;
typedef int daddr_t ;
struct TYPE_2__ {scalar_t__ bc_count; int bc_blkno; } ;


 size_t BHASH (struct bcache*,int ) ;
 int DPRINTF (char*,int ,size_t,int ) ;
 int bcache_bcount ;

__attribute__((used)) static void
bcache_insert(struct bcache *bc, daddr_t blkno)
{
    u_int cand;

    cand = BHASH(bc, blkno);

    DPRINTF("insert blk %llu -> %u # %d", blkno, cand, bcache_bcount);
    bc->bcache_ctl[cand].bc_blkno = blkno;
    bc->bcache_ctl[cand].bc_count = bcache_bcount++;
}
