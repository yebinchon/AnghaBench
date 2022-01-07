
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zStmt ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_exec (int *,char*,int ,int ,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 int sqlite3_snprintf (int,char*,char*,int) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void toggleSelectOrder(sqlite3 *db){
  sqlite3_stmt *pStmt = 0;
  int iSetting = 0;
  char zStmt[100];
  sqlite3_prepare_v2(db, "PRAGMA reverse_unordered_selects", -1, &pStmt, 0);
  if( sqlite3_step(pStmt)==SQLITE_ROW ){
    iSetting = sqlite3_column_int(pStmt, 0);
  }
  sqlite3_finalize(pStmt);
  sqlite3_snprintf(sizeof(zStmt), zStmt,
       "PRAGMA reverse_unordered_selects(%d)", !iSetting);
  sqlite3_exec(db, zStmt, 0, 0, 0);
}
