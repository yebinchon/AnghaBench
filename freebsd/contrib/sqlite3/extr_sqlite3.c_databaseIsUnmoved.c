
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dbSize; int fd; scalar_t__* zFilename; scalar_t__ tempFile; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_FCNTL_HAS_MOVED ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int SQLITE_READONLY_DBMOVED ;
 int assert (int) ;
 int sqlite3OsFileControl (int ,int ,int*) ;

__attribute__((used)) static int databaseIsUnmoved(Pager *pPager){
  int bHasMoved = 0;
  int rc;

  if( pPager->tempFile ) return SQLITE_OK;
  if( pPager->dbSize==0 ) return SQLITE_OK;
  assert( pPager->zFilename && pPager->zFilename[0] );
  rc = sqlite3OsFileControl(pPager->fd, SQLITE_FCNTL_HAS_MOVED, &bHasMoved);
  if( rc==SQLITE_NOTFOUND ){



    rc = SQLITE_OK;
  }else if( rc==SQLITE_OK && bHasMoved ){
    rc = SQLITE_READONLY_DBMOVED;
  }
  return rc;
}
