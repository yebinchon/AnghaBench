
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dev; scalar_t__ ino; } ;
struct TYPE_7__ {int pLockMutex; TYPE_3__* pUnused; struct TYPE_7__* pNext; TYPE_1__ fileId; } ;
typedef TYPE_2__ unixInodeInfo ;
typedef scalar_t__ u64 ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_8__ {int flags; struct TYPE_8__* pNext; } ;
typedef TYPE_3__ UnixUnusedFd ;


 int SQLITE_OPEN_READONLY ;
 int SQLITE_OPEN_READWRITE ;
 int assert (int ) ;
 TYPE_2__* inodeList ;
 scalar_t__ osStat (char const*,struct stat*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 int sqlite3_mutex_notheld (int ) ;
 int unixEnterMutex () ;
 int unixLeaveMutex () ;

__attribute__((used)) static UnixUnusedFd *findReusableFd(const char *zPath, int flags){
  UnixUnusedFd *pUnused = 0;







  struct stat sStat;

  unixEnterMutex();
  if( inodeList!=0 && 0==osStat(zPath, &sStat) ){
    unixInodeInfo *pInode;

    pInode = inodeList;
    while( pInode && (pInode->fileId.dev!=sStat.st_dev
                     || pInode->fileId.ino!=(u64)sStat.st_ino) ){
       pInode = pInode->pNext;
    }
    if( pInode ){
      UnixUnusedFd **pp;
      assert( sqlite3_mutex_notheld(pInode->pLockMutex) );
      sqlite3_mutex_enter(pInode->pLockMutex);
      flags &= (SQLITE_OPEN_READONLY|SQLITE_OPEN_READWRITE);
      for(pp=&pInode->pUnused; *pp && (*pp)->flags!=flags; pp=&((*pp)->pNext));
      pUnused = *pp;
      if( pUnused ){
        *pp = pUnused->pNext;
      }
      sqlite3_mutex_leave(pInode->pLockMutex);
    }
  }
  unixLeaveMutex();

  return pUnused;
}
