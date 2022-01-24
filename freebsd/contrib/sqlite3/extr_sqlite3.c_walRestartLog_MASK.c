#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_13__ {scalar_t__ nBackfill; } ;
typedef  TYPE_2__ WalCkptInfo ;
struct TYPE_12__ {scalar_t__ mxFrame; } ;
struct TYPE_14__ {int readLock; TYPE_1__ hdr; } ;
typedef  TYPE_3__ Wal ;

/* Variables and functions */
 int SQLITE_BUSY ; 
 int SQLITE_IOERR ; 
 int SQLITE_OK ; 
 int SQLITE_PROTOCOL ; 
 scalar_t__ WAL_NREADER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WAL_RETRY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(Wal *pWal){
  int rc = SQLITE_OK;
  int cnt;

  if( pWal->readLock==0 ){
    volatile WalCkptInfo *pInfo = FUNC4(pWal);
    FUNC1( pInfo->nBackfill==pWal->hdr.mxFrame );
    if( pInfo->nBackfill>0 ){
      u32 salt1;
      FUNC2(4, &salt1);
      rc = FUNC5(pWal, FUNC0(1), WAL_NREADER-1);
      if( rc==SQLITE_OK ){
        /* If all readers are using WAL_READ_LOCK(0) (in other words if no
        ** readers are currently using the WAL), then the transactions
        ** frames will overwrite the start of the existing log. Update the
        ** wal-index header to reflect this.
        **
        ** In theory it would be Ok to update the cache of the header only
        ** at this point. But updating the actual wal-index header is also
        ** safe and means there is no special case for sqlite3WalUndo()
        ** to handle if this transaction is rolled back.  */
        FUNC6(pWal, salt1);
        FUNC8(pWal, FUNC0(1), WAL_NREADER-1);
      }else if( rc!=SQLITE_BUSY ){
        return rc;
      }
    }
    FUNC9(pWal, FUNC0(0));
    pWal->readLock = -1;
    cnt = 0;
    do{
      int notUsed;
      rc = FUNC7(pWal, &notUsed, 1, ++cnt);
    }while( rc==WAL_RETRY );
    FUNC1( (rc&0xff)!=SQLITE_BUSY ); /* BUSY not possible when useWal==1 */
    FUNC3( (rc&0xff)==SQLITE_IOERR );
    FUNC3( rc==SQLITE_PROTOCOL );
    FUNC3( rc==SQLITE_OK );
  }
  return rc;
}