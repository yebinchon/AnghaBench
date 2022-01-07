
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int raw_printf (int ,char*,int ) ;
 int * sqlite3_db_handle (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int stderr ;

void shellFinalize(
  int *pRc,
  sqlite3_stmt *pStmt
){
  if( pStmt ){
    sqlite3 *db = sqlite3_db_handle(pStmt);
    int rc = sqlite3_finalize(pStmt);
    if( *pRc==SQLITE_OK ){
      if( rc!=SQLITE_OK ){
        raw_printf(stderr, "SQL error: %s\n", sqlite3_errmsg(db));
      }
      *pRc = rc;
    }
  }
}
