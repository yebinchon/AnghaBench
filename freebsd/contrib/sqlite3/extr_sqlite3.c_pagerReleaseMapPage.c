
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_8__ {int pageSize; TYPE_4__* fd; TYPE_2__* pMmapFreelist; int nMmapOut; } ;
struct TYPE_7__ {int pgno; int pData; struct TYPE_7__* pDirty; TYPE_3__* pPager; } ;
struct TYPE_6__ {int iVersion; } ;
typedef TYPE_2__ PgHdr ;
typedef TYPE_3__ Pager ;


 int assert (int) ;
 int sqlite3OsUnfetch (TYPE_4__*,int,int ) ;

__attribute__((used)) static void pagerReleaseMapPage(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  pPager->nMmapOut--;
  pPg->pDirty = pPager->pMmapFreelist;
  pPager->pMmapFreelist = pPg;

  assert( pPager->fd->pMethods->iVersion>=3 );
  sqlite3OsUnfetch(pPager->fd, (i64)(pPg->pgno-1)*pPager->pageSize, pPg->pData);
}
