
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_26__ {scalar_t__ inTransaction; int btsFlags; int openFlags; TYPE_1__* pPage1; scalar_t__ autoVacuum; } ;
struct TYPE_25__ {TYPE_4__* pBt; } ;
struct TYPE_24__ {int pDbPage; } ;
struct TYPE_23__ {int pDbPage; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ Btree ;
typedef TYPE_4__ BtShared ;


 int BTALLOC_EXACT ;
 int BTREE_INTKEY ;
 int BTREE_LARGEST_ROOT_PAGE ;
 int BTREE_SINGLE ;
 int BTS_READ_ONLY ;
 scalar_t__ CORRUPT_DB ;
 scalar_t__ NEVER (int) ;
 int PENDING_BYTE_PAGE (TYPE_4__*) ;
 int PTF_INTKEY ;
 int PTF_LEAF ;
 int PTF_LEAFDATA ;
 int PTF_ZERODATA ;
 scalar_t__ PTRMAP_FREEPAGE ;
 int PTRMAP_PAGENO (TYPE_4__*,int) ;
 scalar_t__ PTRMAP_ROOTPAGE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 scalar_t__ TRANS_WRITE ;
 int allocateBtreePage (TYPE_4__*,TYPE_2__**,int*,int,int ) ;
 int assert (int) ;
 int btreeGetPage (TYPE_4__*,int,TYPE_2__**,int ) ;
 int invalidateAllOverflowCache (TYPE_4__*) ;
 int ptrmapGet (TYPE_4__*,int,scalar_t__*,int*) ;
 int ptrmapPut (TYPE_4__*,int,scalar_t__,int ,int*) ;
 int releasePage (TYPE_2__*) ;
 int relocatePage (TYPE_4__*,TYPE_2__*,scalar_t__,int,int,int ) ;
 int saveAllCursors (TYPE_4__*,int ,int ) ;
 int sqlite3BtreeGetMeta (TYPE_3__*,int ,int*) ;
 int sqlite3BtreeHoldsMutex (TYPE_3__*) ;
 int sqlite3BtreeUpdateMeta (TYPE_3__*,int,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3PagerUnref (int ) ;
 int sqlite3PagerWrite (int ) ;
 int testcase (int) ;
 int zeroPage (TYPE_2__*,int) ;

__attribute__((used)) static int btreeCreateTable(Btree *p, int *piTable, int createTabFlags){
  BtShared *pBt = p->pBt;
  MemPage *pRoot;
  Pgno pgnoRoot;
  int rc;
  int ptfFlags;

  assert( sqlite3BtreeHoldsMutex(p) );
  assert( pBt->inTransaction==TRANS_WRITE );
  assert( (pBt->btsFlags & BTS_READ_ONLY)==0 );







  if( pBt->autoVacuum ){
    Pgno pgnoMove;
    MemPage *pPageMove;






    invalidateAllOverflowCache(pBt);





    sqlite3BtreeGetMeta(p, BTREE_LARGEST_ROOT_PAGE, &pgnoRoot);
    pgnoRoot++;




    while( pgnoRoot==PTRMAP_PAGENO(pBt, pgnoRoot) ||
        pgnoRoot==PENDING_BYTE_PAGE(pBt) ){
      pgnoRoot++;
    }
    assert( pgnoRoot>=3 || CORRUPT_DB );
    testcase( pgnoRoot<3 );





    rc = allocateBtreePage(pBt, &pPageMove, &pgnoMove, pgnoRoot, BTALLOC_EXACT);
    if( rc!=SQLITE_OK ){
      return rc;
    }

    if( pgnoMove!=pgnoRoot ){






      u8 eType = 0;
      Pgno iPtrPage = 0;




      rc = saveAllCursors(pBt, 0, 0);
      releasePage(pPageMove);
      if( rc!=SQLITE_OK ){
        return rc;
      }


      rc = btreeGetPage(pBt, pgnoRoot, &pRoot, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = ptrmapGet(pBt, pgnoRoot, &eType, &iPtrPage);
      if( eType==PTRMAP_ROOTPAGE || eType==PTRMAP_FREEPAGE ){
        rc = SQLITE_CORRUPT_BKPT;
      }
      if( rc!=SQLITE_OK ){
        releasePage(pRoot);
        return rc;
      }
      assert( eType!=PTRMAP_ROOTPAGE );
      assert( eType!=PTRMAP_FREEPAGE );
      rc = relocatePage(pBt, pRoot, eType, iPtrPage, pgnoMove, 0);
      releasePage(pRoot);


      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = btreeGetPage(pBt, pgnoRoot, &pRoot, 0);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      rc = sqlite3PagerWrite(pRoot->pDbPage);
      if( rc!=SQLITE_OK ){
        releasePage(pRoot);
        return rc;
      }
    }else{
      pRoot = pPageMove;
    }


    ptrmapPut(pBt, pgnoRoot, PTRMAP_ROOTPAGE, 0, &rc);
    if( rc ){
      releasePage(pRoot);
      return rc;
    }





    assert( sqlite3PagerIswriteable(pBt->pPage1->pDbPage) );
    rc = sqlite3BtreeUpdateMeta(p, 4, pgnoRoot);
    if( NEVER(rc) ){
      releasePage(pRoot);
      return rc;
    }

  }else{
    rc = allocateBtreePage(pBt, &pRoot, &pgnoRoot, 1, 0);
    if( rc ) return rc;
  }

  assert( sqlite3PagerIswriteable(pRoot->pDbPage) );
  if( createTabFlags & BTREE_INTKEY ){
    ptfFlags = PTF_INTKEY | PTF_LEAFDATA | PTF_LEAF;
  }else{
    ptfFlags = PTF_ZERODATA | PTF_LEAF;
  }
  zeroPage(pRoot, ptfFlags);
  sqlite3PagerUnref(pRoot->pDbPage);
  assert( (pBt->openFlags & BTREE_SINGLE)==0 || pgnoRoot==2 );
  *piTable = (int)pgnoRoot;
  return SQLITE_OK;
}
