
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pPager; int mutex; } ;
typedef int Pgno ;
typedef int MemPage ;
typedef int DbPage ;
typedef TYPE_1__ BtShared ;


 int assert (int ) ;
 int * btreePageFromDbPage (int *,int ,TYPE_1__*) ;
 int * sqlite3PagerLookup (int ,int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static MemPage *btreePageLookup(BtShared *pBt, Pgno pgno){
  DbPage *pDbPage;
  assert( sqlite3_mutex_held(pBt->mutex) );
  pDbPage = sqlite3PagerLookup(pBt->pPager, pgno);
  if( pDbPage ){
    return btreePageFromDbPage(pDbPage, pgno, pBt);
  }
  return 0;
}
