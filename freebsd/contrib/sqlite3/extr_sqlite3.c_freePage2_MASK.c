#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_15__ {int nPage; int btsFlags; int usableSize; int /*<<< orphan*/  mutex; TYPE_2__* pPage1; } ;
struct TYPE_14__ {int pgno; scalar_t__ isInit; int /*<<< orphan*/ * aData; int /*<<< orphan*/  pDbPage; TYPE_1__* pBt; } ;
struct TYPE_13__ {int /*<<< orphan*/  pageSize; } ;
typedef  int Pgno ;
typedef  TYPE_2__ MemPage ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int BTS_SECURE_DELETE ; 
 scalar_t__ CORRUPT_DB ; 
 scalar_t__ ISAUTOVACUUM ; 
 int /*<<< orphan*/  PTRMAP_FREEPAGE ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int,TYPE_2__**,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(BtShared *pBt, MemPage *pMemPage, Pgno iPage){
  MemPage *pTrunk = 0;                /* Free-list trunk page */
  Pgno iTrunk = 0;                    /* Page number of free-list trunk page */ 
  MemPage *pPage1 = pBt->pPage1;      /* Local reference to page 1 */
  MemPage *pPage;                     /* Page being freed. May be NULL. */
  int rc;                             /* Return Code */
  u32 nFree;                          /* Initial number of pages on free-list */

  FUNC1( FUNC13(pBt->mutex) );
  FUNC1( CORRUPT_DB || iPage>1 );
  FUNC1( !pMemPage || pMemPage->pgno==iPage );

  if( iPage<2 || iPage>pBt->nPage ){
    return SQLITE_CORRUPT_BKPT;
  }
  if( pMemPage ){
    pPage = pMemPage;
    FUNC11(pPage->pDbPage);
  }else{
    pPage = FUNC3(pBt, iPage);
  }

  /* Increment the free page count on pPage1 */
  rc = FUNC12(pPage1->pDbPage);
  if( rc ) goto freepage_out;
  nFree = FUNC5(&pPage1->aData[36]);
  FUNC8(&pPage1->aData[36], nFree+1);

  if( pBt->btsFlags & BTS_SECURE_DELETE ){
    /* If the secure_delete option is enabled, then
    ** always fully overwrite deleted information with zeros.
    */
    if( (!pPage && ((rc = FUNC2(pBt, iPage, &pPage, 0))!=0) )
     ||            ((rc = FUNC12(pPage->pDbPage))!=0)
    ){
      goto freepage_out;
    }
    FUNC6(pPage->aData, 0, pPage->pBt->pageSize);
  }

  /* If the database supports auto-vacuum, write an entry in the pointer-map
  ** to indicate that the page is free.
  */
  if( ISAUTOVACUUM ){
    FUNC7(pBt, iPage, PTRMAP_FREEPAGE, 0, &rc);
    if( rc ) goto freepage_out;
  }

  /* Now manipulate the actual database free-list structure. There are two
  ** possibilities. If the free-list is currently empty, or if the first
  ** trunk page in the free-list is full, then this page will become a
  ** new free-list trunk page. Otherwise, it will become a leaf of the
  ** first trunk page in the current free-list. This block tests if it
  ** is possible to add the page as a new free-list leaf.
  */
  if( nFree!=0 ){
    u32 nLeaf;                /* Initial number of leaf cells on trunk page */

    iTrunk = FUNC5(&pPage1->aData[32]);
    rc = FUNC2(pBt, iTrunk, &pTrunk, 0);
    if( rc!=SQLITE_OK ){
      goto freepage_out;
    }

    nLeaf = FUNC5(&pTrunk->aData[4]);
    FUNC1( pBt->usableSize>32 );
    if( nLeaf > (u32)pBt->usableSize/4 - 2 ){
      rc = SQLITE_CORRUPT_BKPT;
      goto freepage_out;
    }
    if( nLeaf < (u32)pBt->usableSize/4 - 8 ){
      /* In this case there is room on the trunk page to insert the page
      ** being freed as a new leaf.
      **
      ** Note that the trunk page is not really full until it contains
      ** usableSize/4 - 2 entries, not usableSize/4 - 8 entries as we have
      ** coded.  But due to a coding error in versions of SQLite prior to
      ** 3.6.0, databases with freelist trunk pages holding more than
      ** usableSize/4 - 8 entries will be reported as corrupt.  In order
      ** to maintain backwards compatibility with older versions of SQLite,
      ** we will continue to restrict the number of entries to usableSize/4 - 8
      ** for now.  At some point in the future (once everyone has upgraded
      ** to 3.6.0 or later) we should consider fixing the conditional above
      ** to read "usableSize/4-2" instead of "usableSize/4-8".
      **
      ** EVIDENCE-OF: R-19920-11576 However, newer versions of SQLite still
      ** avoid using the last six entries in the freelist trunk page array in
      ** order that database files created by newer versions of SQLite can be
      ** read by older versions of SQLite.
      */
      rc = FUNC12(pTrunk->pDbPage);
      if( rc==SQLITE_OK ){
        FUNC8(&pTrunk->aData[4], nLeaf+1);
        FUNC8(&pTrunk->aData[8+nLeaf*4], iPage);
        if( pPage && (pBt->btsFlags & BTS_SECURE_DELETE)==0 ){
          FUNC10(pPage->pDbPage);
        }
        rc = FUNC4(pBt, iPage);
      }
      FUNC0(("FREE-PAGE: %d leaf on trunk page %d\n",pPage->pgno,pTrunk->pgno));
      goto freepage_out;
    }
  }

  /* If control flows to this point, then it was not possible to add the
  ** the page being freed as a leaf page of the first trunk in the free-list.
  ** Possibly because the free-list is empty, or possibly because the 
  ** first trunk in the free-list is full. Either way, the page being freed
  ** will become the new first trunk page in the free-list.
  */
  if( pPage==0 && SQLITE_OK!=(rc = FUNC2(pBt, iPage, &pPage, 0)) ){
    goto freepage_out;
  }
  rc = FUNC12(pPage->pDbPage);
  if( rc!=SQLITE_OK ){
    goto freepage_out;
  }
  FUNC8(pPage->aData, iTrunk);
  FUNC8(&pPage->aData[4], 0);
  FUNC8(&pPage1->aData[32], iPage);
  FUNC0(("FREE-PAGE: %d new trunk page replacing %d\n", pPage->pgno, iTrunk));

freepage_out:
  if( pPage ){
    pPage->isInit = 0;
  }
  FUNC9(pPage);
  FUNC9(pTrunk);
  return rc;
}