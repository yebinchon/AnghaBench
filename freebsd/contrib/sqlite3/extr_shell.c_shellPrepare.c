
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int raw_printf (int ,char*,int ,int ) ;
 int sqlite3_errcode (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 int stderr ;

__attribute__((used)) static void shellPrepare(
  sqlite3 *db,
  int *pRc,
  const char *zSql,
  sqlite3_stmt **ppStmt
){
  *ppStmt = 0;
  if( *pRc==SQLITE_OK ){
    int rc = sqlite3_prepare_v2(db, zSql, -1, ppStmt, 0);
    if( rc!=SQLITE_OK ){
      raw_printf(stderr, "sql error: %s (%d)\n",
          sqlite3_errmsg(db), sqlite3_errcode(db)
      );
      *pRc = rc;
    }
  }
}
