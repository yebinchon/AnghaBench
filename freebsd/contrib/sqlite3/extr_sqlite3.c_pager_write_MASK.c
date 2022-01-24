#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ eState; scalar_t__ errCode; scalar_t__ readOnly; scalar_t__ pInJournal; scalar_t__ dbOrigSize; scalar_t__ nSavepoint; scalar_t__ dbSize; int /*<<< orphan*/  jfd; } ;
struct TYPE_12__ {scalar_t__ pgno; int flags; TYPE_2__* pPager; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 scalar_t__ PAGER_WRITER_DBMOD ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int PGHDR_NEED_SYNC ; 
 int PGHDR_WRITEABLE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  int rc = SQLITE_OK;

  /* This routine is not called unless a write-transaction has already 
  ** been started. The journal file may or may not be open at this point.
  ** It is never called in the ERROR state.
  */
  FUNC3( pPager->eState==PAGER_WRITER_LOCKED
       || pPager->eState==PAGER_WRITER_CACHEMOD
       || pPager->eState==PAGER_WRITER_DBMOD
  );
  FUNC3( FUNC4(pPager) );
  FUNC3( pPager->errCode==0 );
  FUNC3( pPager->readOnly==0 );
  FUNC0(pPg);

  /* The journal file needs to be opened. Higher level routines have already
  ** obtained the necessary locks to begin the write-transaction, but the
  ** rollback journal might not yet be open. Open it now if this is the case.
  **
  ** This is done before calling sqlite3PcacheMakeDirty() on the page. 
  ** Otherwise, if it were done after calling sqlite3PcacheMakeDirty(), then
  ** an error might occur and the pager would end up in WRITER_LOCKED state
  ** with pages marked as dirty in the cache.
  */
  if( pPager->eState==PAGER_WRITER_LOCKED ){
    rc = FUNC8(pPager);
    if( rc!=SQLITE_OK ) return rc;
  }
  FUNC3( pPager->eState>=PAGER_WRITER_CACHEMOD );
  FUNC3( FUNC4(pPager) );

  /* Mark the page that is about to be modified as dirty. */
  FUNC10(pPg);

  /* If a rollback journal is in use, them make sure the page that is about
  ** to change is in the rollback journal, or if the page is a new page off
  ** then end of the file, make sure it is marked as PGHDR_NEED_SYNC.
  */
  FUNC3( (pPager->pInJournal!=0) == FUNC5(pPager->jfd) );
  if( pPager->pInJournal!=0
   && FUNC9(pPager->pInJournal, pPg->pgno)==0
  ){
    FUNC3( FUNC7(pPager)==0 );
    if( pPg->pgno<=pPager->dbOrigSize ){
      rc = FUNC6(pPg);
      if( rc!=SQLITE_OK ){
        return rc;
      }
    }else{
      if( pPager->eState!=PAGER_WRITER_DBMOD ){
        pPg->flags |= PGHDR_NEED_SYNC;
      }
      FUNC2(("APPEND %d page %d needSync=%d\n",
              FUNC1(pPager), pPg->pgno,
             ((pPg->flags&PGHDR_NEED_SYNC)?1:0)));
    }
  }

  /* The PGHDR_DIRTY bit is set above when the page was added to the dirty-list
  ** and before writing the page into the rollback journal.  Wait until now,
  ** after the page has been successfully journalled, before setting the
  ** PGHDR_WRITEABLE bit that indicates that the page can be safely modified.
  */
  pPg->flags |= PGHDR_WRITEABLE;
  
  /* If the statement journal is open and the page is not in it,
  ** then write the page into the statement journal.
  */
  if( pPager->nSavepoint>0 ){
    rc = FUNC11(pPg);
  }

  /* Update the database size and return. */
  if( pPager->dbSize<pPg->pgno ){
    pPager->dbSize = pPg->pgno;
  }
  return rc;
}