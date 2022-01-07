
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isUnlocked; int zFilename; int hShm; scalar_t__ isReadonly; } ;
typedef TYPE_1__ unixShmNode ;
typedef int unixFile ;
struct flock {int l_len; scalar_t__ l_type; int l_start; int l_whence; } ;


 int F_GETLK ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int SEEK_SET ;
 int SQLITE_BUSY ;
 int SQLITE_IOERR_LOCK ;
 int SQLITE_IOERR_SHMOPEN ;
 int SQLITE_OK ;
 int SQLITE_READONLY_CANTINIT ;
 int UNIX_SHM_DMS ;
 int assert (int) ;
 scalar_t__ osFcntl (int ,int ,struct flock*) ;
 scalar_t__ robust_ftruncate (int ,int) ;
 int unixLogError (int ,char*,int ) ;
 int unixShmSystemLock (int *,scalar_t__,int ,int) ;

__attribute__((used)) static int unixLockSharedMemory(unixFile *pDbFd, unixShmNode *pShmNode){
  struct flock lock;
  int rc = SQLITE_OK;
  lock.l_whence = SEEK_SET;
  lock.l_start = UNIX_SHM_DMS;
  lock.l_len = 1;
  lock.l_type = F_WRLCK;
  if( osFcntl(pShmNode->hShm, F_GETLK, &lock)!=0 ) {
    rc = SQLITE_IOERR_LOCK;
  }else if( lock.l_type==F_UNLCK ){
    if( pShmNode->isReadonly ){
      pShmNode->isUnlocked = 1;
      rc = SQLITE_READONLY_CANTINIT;
    }else{
      rc = unixShmSystemLock(pDbFd, F_WRLCK, UNIX_SHM_DMS, 1);





      if( rc==SQLITE_OK && robust_ftruncate(pShmNode->hShm, 3) ){
        rc = unixLogError(SQLITE_IOERR_SHMOPEN,"ftruncate",pShmNode->zFilename);
      }
    }
  }else if( lock.l_type==F_WRLCK ){
    rc = SQLITE_BUSY;
  }

  if( rc==SQLITE_OK ){
    assert( lock.l_type==F_UNLCK || lock.l_type==F_RDLCK );
    rc = unixShmSystemLock(pDbFd, F_RDLCK, UNIX_SHM_DMS, 1);
  }
  return rc;
}
