#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {scalar_t__ iSyncPoint; int /*<<< orphan*/  pFd; int /*<<< orphan*/  syncFlags; } ;
typedef  TYPE_1__ WalWriter ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(
  WalWriter *p,              /* WAL to write to */
  void *pContent,            /* Content to be written */
  int iAmt,                  /* Number of bytes to write */
  sqlite3_int64 iOffset      /* Start writing at this offset */
){
  int rc;
  if( iOffset<p->iSyncPoint && iOffset+iAmt>=p->iSyncPoint ){
    int iFirstAmt = (int)(p->iSyncPoint - iOffset);
    rc = FUNC3(p->pFd, pContent, iFirstAmt, iOffset);
    if( rc ) return rc;
    iOffset += iFirstAmt;
    iAmt -= iFirstAmt;
    pContent = (void*)(iFirstAmt + (char*)pContent);
    FUNC1( FUNC0(p->syncFlags)!=0 );
    rc = FUNC2(p->pFd, FUNC0(p->syncFlags));
    if( iAmt==0 || rc ) return rc;
  }
  rc = FUNC3(p->pFd, pContent, iAmt, iOffset);
  return rc;
}