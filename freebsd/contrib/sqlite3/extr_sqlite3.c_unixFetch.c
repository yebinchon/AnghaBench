
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mmapSizeMax; scalar_t__ pMapRegion; int mmapSize; int nFetchOut; } ;
typedef TYPE_1__ unixFile ;
typedef int u8 ;
typedef int sqlite3_file ;
typedef int i64 ;


 int SQLITE_OK ;
 int unixMapfile (TYPE_1__*,int) ;

__attribute__((used)) static int unixFetch(sqlite3_file *fd, i64 iOff, int nAmt, void **pp){



  *pp = 0;
  return SQLITE_OK;
}
