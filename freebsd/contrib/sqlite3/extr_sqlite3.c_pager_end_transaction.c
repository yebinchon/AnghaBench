
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ eState; scalar_t__ eLock; scalar_t__ pInJournal; scalar_t__ journalMode; scalar_t__ journalOff; scalar_t__ dbSize; scalar_t__ dbFileSize; scalar_t__ setMaster; scalar_t__ changeCountDone; int pWal; scalar_t__ exclusiveMode; int fd; int pPCache; scalar_t__ nRec; int extraSync; int zJournal; int pVfs; int jfd; scalar_t__ tempFile; int syncFlags; scalar_t__ fullSync; } ;
struct TYPE_14__ {scalar_t__ pageHash; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 scalar_t__ EXCLUSIVE_LOCK ;
 scalar_t__ MEMDB ;
 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_JOURNALMODE_DELETE ;
 scalar_t__ PAGER_JOURNALMODE_MEMORY ;
 scalar_t__ PAGER_JOURNALMODE_PERSIST ;
 scalar_t__ PAGER_JOURNALMODE_TRUNCATE ;
 scalar_t__ PAGER_JOURNALMODE_WAL ;
 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 scalar_t__ RESERVED_LOCK ;
 int SHARED_LOCK ;
 int SQLITE_FCNTL_COMMIT_PHASETWO ;
 int SQLITE_IOCAP_BATCH_ATOMIC ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_2__*) ;
 scalar_t__ isOpen (int ) ;
 scalar_t__ pagerFlushOnCommit (TYPE_2__*,int) ;
 int pagerUnlockDb (TYPE_2__*,int ) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int pager_set_pagehash ;
 int pager_truncate (TYPE_2__*,scalar_t__) ;
 int releaseAllSavepoints (TYPE_2__*) ;
 int sqlite3BitvecDestroy (scalar_t__) ;
 scalar_t__ sqlite3JournalIsInMemory (int ) ;
 int sqlite3OsClose (int ) ;
 int sqlite3OsDelete (int ,int ,int ) ;
 int sqlite3OsDeviceCharacteristics (int ) ;
 int sqlite3OsFileControl (int ,int ,int ) ;
 int sqlite3OsSync (int ,int ) ;
 int sqlite3OsTruncate (int ,int ) ;
 TYPE_1__* sqlite3PagerLookup (TYPE_2__*,int) ;
 int sqlite3PagerUnrefNotNull (TYPE_1__*) ;
 int sqlite3PcacheCleanAll (int ) ;
 int sqlite3PcacheClearWritable (int ) ;
 int sqlite3PcacheIterateDirty (int ,int ) ;
 scalar_t__ sqlite3PcacheRefCount (int ) ;
 int sqlite3PcacheTruncate (int ,scalar_t__) ;
 int sqlite3WalEndWriteTransaction (int ) ;
 scalar_t__ sqlite3WalExclusiveMode (int ,int ) ;
 int zeroJournalHdr (TYPE_2__*,int) ;

__attribute__((used)) static int pager_end_transaction(Pager *pPager, int hasMaster, int bCommit){
  int rc = SQLITE_OK;
  int rc2 = SQLITE_OK;
  assert( assert_pager_state(pPager) );
  assert( pPager->eState!=PAGER_ERROR );
  if( pPager->eState<PAGER_WRITER_LOCKED && pPager->eLock<RESERVED_LOCK ){
    return SQLITE_OK;
  }

  releaseAllSavepoints(pPager);
  assert( isOpen(pPager->jfd) || pPager->pInJournal==0
      || (sqlite3OsDeviceCharacteristics(pPager->fd)&SQLITE_IOCAP_BATCH_ATOMIC)
  );
  if( isOpen(pPager->jfd) ){
    assert( !pagerUseWal(pPager) );


    if( sqlite3JournalIsInMemory(pPager->jfd) ){

      sqlite3OsClose(pPager->jfd);
    }else if( pPager->journalMode==PAGER_JOURNALMODE_TRUNCATE ){
      if( pPager->journalOff==0 ){
        rc = SQLITE_OK;
      }else{
        rc = sqlite3OsTruncate(pPager->jfd, 0);
        if( rc==SQLITE_OK && pPager->fullSync ){





          rc = sqlite3OsSync(pPager->jfd, pPager->syncFlags);
        }
      }
      pPager->journalOff = 0;
    }else if( pPager->journalMode==PAGER_JOURNALMODE_PERSIST
      || (pPager->exclusiveMode && pPager->journalMode!=PAGER_JOURNALMODE_WAL)
    ){
      rc = zeroJournalHdr(pPager, hasMaster||pPager->tempFile);
      pPager->journalOff = 0;
    }else{





      int bDelete = !pPager->tempFile;
      assert( sqlite3JournalIsInMemory(pPager->jfd)==0 );
      assert( pPager->journalMode==PAGER_JOURNALMODE_DELETE
           || pPager->journalMode==PAGER_JOURNALMODE_MEMORY
           || pPager->journalMode==PAGER_JOURNALMODE_WAL
      );
      sqlite3OsClose(pPager->jfd);
      if( bDelete ){
        rc = sqlite3OsDelete(pPager->pVfs, pPager->zJournal, pPager->extraSync);
      }
    }
  }
  sqlite3BitvecDestroy(pPager->pInJournal);
  pPager->pInJournal = 0;
  pPager->nRec = 0;
  if( rc==SQLITE_OK ){
    if( MEMDB || pagerFlushOnCommit(pPager, bCommit) ){
      sqlite3PcacheCleanAll(pPager->pPCache);
    }else{
      sqlite3PcacheClearWritable(pPager->pPCache);
    }
    sqlite3PcacheTruncate(pPager->pPCache, pPager->dbSize);
  }

  if( pagerUseWal(pPager) ){




    rc2 = sqlite3WalEndWriteTransaction(pPager->pWal);
    assert( rc2==SQLITE_OK );
  }else if( rc==SQLITE_OK && bCommit && pPager->dbFileSize>pPager->dbSize ){






    assert( pPager->eLock==EXCLUSIVE_LOCK );
    rc = pager_truncate(pPager, pPager->dbSize);
  }

  if( rc==SQLITE_OK && bCommit ){
    rc = sqlite3OsFileControl(pPager->fd, SQLITE_FCNTL_COMMIT_PHASETWO, 0);
    if( rc==SQLITE_NOTFOUND ) rc = SQLITE_OK;
  }

  if( !pPager->exclusiveMode
   && (!pagerUseWal(pPager) || sqlite3WalExclusiveMode(pPager->pWal, 0))
  ){
    rc2 = pagerUnlockDb(pPager, SHARED_LOCK);
    pPager->changeCountDone = 0;
  }
  pPager->eState = PAGER_READER;
  pPager->setMaster = 0;

  return (rc==SQLITE_OK?rc2:rc);
}
