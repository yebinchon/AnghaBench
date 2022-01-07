
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ autoVacuum; } ;
struct TYPE_13__ {scalar_t__ inTrans; TYPE_2__* pBt; } ;
typedef int Pgno ;
typedef int MemPage ;
typedef TYPE_1__ Btree ;
typedef TYPE_2__ BtShared ;


 int BTREE_LARGEST_ROOT_PAGE ;
 int PENDING_BYTE_PAGE (TYPE_2__*) ;
 scalar_t__ PTRMAP_ISPAGE (TYPE_2__*,int) ;
 int PTRMAP_ROOTPAGE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int assert (int) ;
 int btreeGetPage (TYPE_2__*,int,int **,int ) ;
 int btreePagecount (TYPE_2__*) ;
 int freePage (int *,int*) ;
 int releasePage (int *) ;
 int relocatePage (TYPE_2__*,int *,int ,int ,int,int ) ;
 int sqlite3BtreeClearTable (TYPE_1__*,int,int ) ;
 int sqlite3BtreeGetMeta (TYPE_1__*,int ,int*) ;
 int sqlite3BtreeHoldsMutex (TYPE_1__*) ;
 int sqlite3BtreeUpdateMeta (TYPE_1__*,int,int) ;

__attribute__((used)) static int btreeDropTable(Btree *p, Pgno iTable, int *piMoved){
  int rc;
  MemPage *pPage = 0;
  BtShared *pBt = p->pBt;

  assert( sqlite3BtreeHoldsMutex(p) );
  assert( p->inTrans==TRANS_WRITE );
  assert( iTable>=2 );
  if( iTable>btreePagecount(pBt) ){
    return SQLITE_CORRUPT_BKPT;
  }

  rc = btreeGetPage(pBt, (Pgno)iTable, &pPage, 0);
  if( rc ) return rc;
  rc = sqlite3BtreeClearTable(p, iTable, 0);
  if( rc ){
    releasePage(pPage);
    return rc;
  }

  *piMoved = 0;





  if( pBt->autoVacuum ){
    Pgno maxRootPgno;
    sqlite3BtreeGetMeta(p, BTREE_LARGEST_ROOT_PAGE, &maxRootPgno);

    if( iTable==maxRootPgno ){



      freePage(pPage, &rc);
      releasePage(pPage);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }else{




      MemPage *pMove;
      releasePage(pPage);
      rc = btreeGetPage(pBt, maxRootPgno, &pMove, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = relocatePage(pBt, pMove, PTRMAP_ROOTPAGE, 0, iTable, 0);
      releasePage(pMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      pMove = 0;
      rc = btreeGetPage(pBt, maxRootPgno, &pMove, 0);
      freePage(pMove, &rc);
      releasePage(pMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      *piMoved = maxRootPgno;
    }






    maxRootPgno--;
    while( maxRootPgno==PENDING_BYTE_PAGE(pBt)
           || PTRMAP_ISPAGE(pBt, maxRootPgno) ){
      maxRootPgno--;
    }
    assert( maxRootPgno!=PENDING_BYTE_PAGE(pBt) );

    rc = sqlite3BtreeUpdateMeta(p, 4, maxRootPgno);
  }else{
    freePage(pPage, &rc);
    releasePage(pPage);
  }

  return rc;
}
