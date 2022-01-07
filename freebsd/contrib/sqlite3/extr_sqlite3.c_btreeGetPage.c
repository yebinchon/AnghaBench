
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


 int PAGER_GET_NOCONTENT ;
 int PAGER_GET_READONLY ;
 int SQLITE_OK ;
 int assert (int) ;
 int * btreePageFromDbPage (int *,int ,TYPE_1__*) ;
 int sqlite3PagerGet (int ,int ,int **,int) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int btreeGetPage(
  BtShared *pBt,
  Pgno pgno,
  MemPage **ppPage,
  int flags
){
  int rc;
  DbPage *pDbPage;

  assert( flags==0 || flags==PAGER_GET_NOCONTENT || flags==PAGER_GET_READONLY );
  assert( sqlite3_mutex_held(pBt->mutex) );
  rc = sqlite3PagerGet(pBt->pPager, pgno, (DbPage**)&pDbPage, flags);
  if( rc ) return rc;
  *ppPage = btreePageFromDbPage(pDbPage, pgno, pBt);
  return SQLITE_OK;
}
