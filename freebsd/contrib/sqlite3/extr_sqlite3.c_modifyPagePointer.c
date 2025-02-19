
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_12__ {scalar_t__ nLocal; scalar_t__ nPayload; int nSize; } ;
struct TYPE_11__ {scalar_t__* aData; int nCell; int hdrOffset; TYPE_1__* pBt; int (* xParseCell ) (TYPE_2__*,scalar_t__*,TYPE_3__*) ;scalar_t__ isInit; int pDbPage; } ;
struct TYPE_10__ {int usableSize; int mutex; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellInfo ;


 scalar_t__ PTRMAP_BTREE ;
 scalar_t__ PTRMAP_OVERFLOW1 ;
 scalar_t__ PTRMAP_OVERFLOW2 ;
 int SQLITE_CORRUPT_PAGE (TYPE_2__*) ;
 int SQLITE_OK ;
 int assert (int ) ;
 int btreeInitPage (TYPE_2__*) ;
 scalar_t__* findCell (TYPE_2__*,int) ;
 scalar_t__ get4byte (scalar_t__*) ;
 int put4byte (scalar_t__*,scalar_t__) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (TYPE_2__*,scalar_t__*,TYPE_3__*) ;

__attribute__((used)) static int modifyPagePointer(MemPage *pPage, Pgno iFrom, Pgno iTo, u8 eType){
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  if( eType==PTRMAP_OVERFLOW2 ){

    if( get4byte(pPage->aData)!=iFrom ){
      return SQLITE_CORRUPT_PAGE(pPage);
    }
    put4byte(pPage->aData, iTo);
  }else{
    int i;
    int nCell;
    int rc;

    rc = pPage->isInit ? SQLITE_OK : btreeInitPage(pPage);
    if( rc ) return rc;
    nCell = pPage->nCell;

    for(i=0; i<nCell; i++){
      u8 *pCell = findCell(pPage, i);
      if( eType==PTRMAP_OVERFLOW1 ){
        CellInfo info;
        pPage->xParseCell(pPage, pCell, &info);
        if( info.nLocal<info.nPayload ){
          if( pCell+info.nSize > pPage->aData+pPage->pBt->usableSize ){
            return SQLITE_CORRUPT_PAGE(pPage);
          }
          if( iFrom==get4byte(pCell+info.nSize-4) ){
            put4byte(pCell+info.nSize-4, iTo);
            break;
          }
        }
      }else{
        if( get4byte(pCell)==iFrom ){
          put4byte(pCell, iTo);
          break;
        }
      }
    }

    if( i==nCell ){
      if( eType!=PTRMAP_BTREE ||
          get4byte(&pPage->aData[pPage->hdrOffset+8])!=iFrom ){
        return SQLITE_CORRUPT_PAGE(pPage);
      }
      put4byte(&pPage->aData[pPage->hdrOffset+8], iTo);
    }
  }
  return SQLITE_OK;
}
