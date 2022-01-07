
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_10__ {unsigned int nHash; TYPE_1__** apHash; } ;
struct TYPE_9__ {unsigned int iKey; struct TYPE_9__* pNext; } ;
typedef TYPE_1__ PgHdr1 ;
typedef TYPE_2__ PCache1 ;


 scalar_t__ PAGE_IS_UNPINNED (TYPE_1__*) ;
 TYPE_1__* pcache1FetchStage2 (TYPE_2__*,unsigned int,int) ;
 TYPE_1__* pcache1PinPage (TYPE_1__*) ;

__attribute__((used)) static PgHdr1 *pcache1FetchNoMutex(
  sqlite3_pcache *p,
  unsigned int iKey,
  int createFlag
){
  PCache1 *pCache = (PCache1 *)p;
  PgHdr1 *pPage = 0;


  pPage = pCache->apHash[iKey % pCache->nHash];
  while( pPage && pPage->iKey!=iKey ){ pPage = pPage->pNext; }





  if( pPage ){
    if( PAGE_IS_UNPINNED(pPage) ){
      return pcache1PinPage(pPage);
    }else{
      return pPage;
    }
  }else if( createFlag ){

    return pcache1FetchStage2(pCache, iKey, createFlag);
  }else{
    return 0;
  }
}
