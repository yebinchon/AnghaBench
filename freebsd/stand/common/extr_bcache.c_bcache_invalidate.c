
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct bcache {TYPE_1__* bcache_ctl; } ;
typedef int daddr_t ;
struct TYPE_2__ {int bc_blkno; int bc_count; } ;


 size_t BHASH (struct bcache*,int) ;
 int DPRINTF (char*,int) ;

__attribute__((used)) static void
bcache_invalidate(struct bcache *bc, daddr_t blkno)
{
    u_int i;

    i = BHASH(bc, blkno);
    if (bc->bcache_ctl[i].bc_blkno == blkno) {
 bc->bcache_ctl[i].bc_count = -1;
 bc->bcache_ctl[i].bc_blkno = -1;
 DPRINTF("invalidate blk %llu", blkno);
    }
}
