#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pPreallocatedUnused; int dbUpdate; int transCntrChng; int mmapSize; scalar_t__ lastErrno; scalar_t__ pMapRegion; scalar_t__ inNormalWrite; } ;
typedef  TYPE_1__ unixFile ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_file ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 int PENDING_BYTE ; 
 int SQLITE_FULL ; 
 int SQLITE_IOERR_WRITE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 
 int FUNC6 (TYPE_1__*,int,char*,int) ; 
 int FUNC7 (TYPE_1__*,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  sqlite3_file *id, 
  const void *pBuf, 
  int amt,
  sqlite3_int64 offset 
){
  unixFile *pFile = (unixFile*)id;
  int wrote = 0;
  FUNC3( *id );
  FUNC3( amt>0 );

  /* If this is a database file (not a journal, master-journal or temp
  ** file), the bytes in the locking range should never be read or written. */
#if 0
  assert( pFile->pPreallocatedUnused==0
       || offset>=PENDING_BYTE+512
       || offset+amt<=PENDING_BYTE 
  );
#endif

#ifdef SQLITE_DEBUG
  /* If we are doing a normal write to a database file (as opposed to
  ** doing a hot-journal rollback or a write to some file other than a
  ** normal database file) then record the fact that the database
  ** has changed.  If the transaction counter is modified, record that
  ** fact too.
  */
  if( pFile->inNormalWrite ){
    pFile->dbUpdate = 1;  /* The database has been modified */
    if( offset<=24 && offset+amt>=27 ){
      int rc;
      char oldCntr[4];
      SimulateIOErrorBenign(1);
      rc = seekAndRead(pFile, 24, oldCntr, 4);
      SimulateIOErrorBenign(0);
      if( rc!=4 || memcmp(oldCntr, &((char*)pBuf)[24-offset], 4)!=0 ){
        pFile->transCntrChng = 1;  /* The transaction counter has changed */
      }
    }
  }
#endif

#if defined(SQLITE_MMAP_READWRITE) && SQLITE_MAX_MMAP_SIZE>0
  /* Deal with as much of this write request as possible by transfering
  ** data from the memory mapping using memcpy().  */
  if( offset<pFile->mmapSize ){
    if( offset+amt <= pFile->mmapSize ){
      memcpy(&((u8 *)(pFile->pMapRegion))[offset], pBuf, amt);
      return SQLITE_OK;
    }else{
      int nCopy = pFile->mmapSize - offset;
      memcpy(&((u8 *)(pFile->pMapRegion))[offset], pBuf, nCopy);
      pBuf = &((u8 *)pBuf)[nCopy];
      amt -= nCopy;
      offset += nCopy;
    }
  }
#endif
 
  while( (wrote = FUNC7(pFile, offset, pBuf, amt))<amt && wrote>0 ){
    amt -= wrote;
    offset += wrote;
    pBuf = &((char*)pBuf)[wrote];
  }
  FUNC1(( wrote=(-1), amt=1 ));
  FUNC0(( wrote=0, amt=1 ));

  if( amt>wrote ){
    if( wrote<0 && pFile->lastErrno!=ENOSPC ){
      /* lastErrno set by seekAndWrite */
      return SQLITE_IOERR_WRITE;
    }else{
      FUNC8(pFile, 0); /* not a system error */
      return SQLITE_FULL;
    }
  }

  return SQLITE_OK;
}