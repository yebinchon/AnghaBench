
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unixFile ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_5__ {scalar_t__ xLock; } ;


 int UNUSED_PARAMETER (TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ nolockLock ;
 int sqlite3MemoryBarrier () ;
 int unixEnterMutex () ;
 scalar_t__ unixFileMutexNotheld (int *) ;
 int unixLeaveMutex () ;

__attribute__((used)) static void unixShmBarrier(
  sqlite3_file *fd
){
  UNUSED_PARAMETER(fd);
  sqlite3MemoryBarrier();
  assert( fd->pMethods->xLock==nolockLock
       || unixFileMutexNotheld((unixFile*)fd)
  );
  unixEnterMutex();
  unixLeaveMutex();
}
