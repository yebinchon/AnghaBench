
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Wal ;


 int SQLITE_BUSY ;
 int walLockExclusive (int *,int,int) ;

__attribute__((used)) static int walBusyLock(
  Wal *pWal,
  int (*xBusy)(void*),
  void *pBusyArg,
  int lockIdx,
  int n
){
  int rc;
  do {
    rc = walLockExclusive(pWal, lockIdx, n);
  }while( xBusy && rc==SQLITE_BUSY && xBusy(pBusyArg) );
  return rc;
}
