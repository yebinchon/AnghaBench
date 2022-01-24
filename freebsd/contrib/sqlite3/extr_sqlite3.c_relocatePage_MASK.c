#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * pPager; } ;
struct TYPE_11__ {int pgno; int /*<<< orphan*/  pDbPage; int /*<<< orphan*/  aData; TYPE_2__* pBt; } ;
typedef  int Pgno ;
typedef  int /*<<< orphan*/  Pager ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  PTRMAP_BTREE ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW1 ; 
 int /*<<< orphan*/  PTRMAP_OVERFLOW2 ; 
 int /*<<< orphan*/  PTRMAP_ROOTPAGE ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
  BtShared *pBt,           /* Btree */
  MemPage *pDbPage,        /* Open page to move */
  u8 eType,                /* Pointer map 'type' entry for pDbPage */
  Pgno iPtrPage,           /* Pointer map 'page-no' entry for pDbPage */
  Pgno iFreePage,          /* The location to move pDbPage to */
  int isCommit             /* isCommit flag passed to sqlite3PagerMovepage */
){
  MemPage *pPtrPage;   /* The page that contains a pointer to pDbPage */
  Pgno iDbPage = pDbPage->pgno;
  Pager *pPager = pBt->pPager;
  int rc;

  FUNC1( eType==PTRMAP_OVERFLOW2 || eType==PTRMAP_OVERFLOW1 || 
      eType==PTRMAP_BTREE || eType==PTRMAP_ROOTPAGE );
  FUNC1( FUNC10(pBt->mutex) );
  FUNC1( pDbPage->pBt==pBt );
  if( iDbPage<3 ) return SQLITE_CORRUPT_BKPT;

  /* Move page iDbPage from its current location to page number iFreePage */
  FUNC0(("AUTOVACUUM: Moving %d to free page %d (ptr page %d type %d)\n", 
      iDbPage, iFreePage, iPtrPage, eType));
  rc = FUNC8(pPager, pDbPage->pDbPage, iFreePage, isCommit);
  if( rc!=SQLITE_OK ){
    return rc;
  }
  pDbPage->pgno = iFreePage;

  /* If pDbPage was a btree-page, then it may have child pages and/or cells
  ** that point to overflow pages. The pointer map entries for all these
  ** pages need to be changed.
  **
  ** If pDbPage is an overflow page, then the first 4 bytes may store a
  ** pointer to a subsequent overflow page. If this is the case, then
  ** the pointer map needs to be updated for the subsequent overflow page.
  */
  if( eType==PTRMAP_BTREE || eType==PTRMAP_ROOTPAGE ){
    rc = FUNC7(pDbPage);
    if( rc!=SQLITE_OK ){
      return rc;
    }
  }else{
    Pgno nextOvfl = FUNC3(pDbPage->aData);
    if( nextOvfl!=0 ){
      FUNC5(pBt, nextOvfl, PTRMAP_OVERFLOW2, iFreePage, &rc);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }
  }

  /* Fix the database pointer on page iPtrPage that pointed at iDbPage so
  ** that it points at iFreePage. Also fix the pointer map entry for
  ** iPtrPage.
  */
  if( eType!=PTRMAP_ROOTPAGE ){
    rc = FUNC2(pBt, iPtrPage, &pPtrPage, 0);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    rc = FUNC9(pPtrPage->pDbPage);
    if( rc!=SQLITE_OK ){
      FUNC6(pPtrPage);
      return rc;
    }
    rc = FUNC4(pPtrPage, iDbPage, iFreePage, eType);
    FUNC6(pPtrPage);
    if( rc==SQLITE_OK ){
      FUNC5(pBt, iFreePage, eType, iPtrPage, &rc);
    }
  }
  return rc;
}