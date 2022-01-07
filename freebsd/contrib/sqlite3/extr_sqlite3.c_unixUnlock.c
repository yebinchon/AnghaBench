
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nFetchOut; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;


 int SHARED_LOCK ;
 int assert (int) ;
 int posixUnlock (int *,int,int ) ;

__attribute__((used)) static int unixUnlock(sqlite3_file *id, int eFileLock){



  return posixUnlock(id, eFileLock, 0);
}
