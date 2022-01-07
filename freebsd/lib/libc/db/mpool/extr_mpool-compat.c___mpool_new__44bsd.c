
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgno_t ;
typedef int MPOOL ;


 int MPOOL_PAGE_NEXT ;
 void* mpool_new (int *,int *,int ) ;

void *
__mpool_new__44bsd(MPOOL *mp, pgno_t *pgnoaddr)
{

 return (mpool_new(mp, pgnoaddr, MPOOL_PAGE_NEXT));
}
