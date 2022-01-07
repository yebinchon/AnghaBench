
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zNum ;
typedef int sqlite3_stmt ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ ShellState ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int sqlite3_bind_null (int *,int) ;
 int sqlite3_bind_parameter_count (int *) ;
 char* sqlite3_bind_parameter_name (int *,int) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_bind_value (int *,int,int ) ;
 int sqlite3_column_value (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_snprintf (int,char*,char*,int) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_table_column_metadata (int ,char*,char*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bind_prepared_stmt(ShellState *pArg, sqlite3_stmt *pStmt){
  int nVar;
  int i;
  int rc;
  sqlite3_stmt *pQ = 0;

  nVar = sqlite3_bind_parameter_count(pStmt);
  if( nVar==0 ) return;
  if( sqlite3_table_column_metadata(pArg->db, "TEMP", "sqlite_parameters",
                                    "key", 0, 0, 0, 0, 0)!=SQLITE_OK ){
    return;
  }
  rc = sqlite3_prepare_v2(pArg->db,
          "SELECT value FROM temp.sqlite_parameters"
          " WHERE key=?1", -1, &pQ, 0);
  if( rc || pQ==0 ) return;
  for(i=1; i<=nVar; i++){
    char zNum[30];
    const char *zVar = sqlite3_bind_parameter_name(pStmt, i);
    if( zVar==0 ){
      sqlite3_snprintf(sizeof(zNum),zNum,"?%d",i);
      zVar = zNum;
    }
    sqlite3_bind_text(pQ, 1, zVar, -1, SQLITE_STATIC);
    if( sqlite3_step(pQ)==SQLITE_ROW ){
      sqlite3_bind_value(pStmt, i, sqlite3_column_value(pQ, 0));
    }else{
      sqlite3_bind_null(pStmt, i);
    }
    sqlite3_reset(pQ);
  }
  sqlite3_finalize(pQ);
}
