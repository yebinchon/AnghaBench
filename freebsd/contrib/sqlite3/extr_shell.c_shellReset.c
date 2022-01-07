
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
 int sqlite3_reset (int *) ;
 int stderr ;

void shellReset(
  int *pRc,
  sqlite3_stmt *pStmt
){
  int rc = sqlite3_reset(pStmt);
  if( *pRc==SQLITE_OK ){
    if( rc!=SQLITE_OK ){
      sqlite3 *db = sqlite3_db_handle(pStmt);
      raw_printf(stderr, "SQL error: %s\n", sqlite3_errmsg(db));
    }
    *pRc = rc;
  }
}
