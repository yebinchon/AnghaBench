
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iSample; int dbv; int dbm; int * db; } ;
typedef TYPE_1__ sqlite3expert ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_DBCONFIG_TRIGGER_EQP ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int idxAuthCallback ;
 int idxCreateVtabSchema (TYPE_1__*,char**) ;
 int idxFinalize (int*,int *) ;
 scalar_t__ idxMalloc (int*,int) ;
 int idxPrintfPrepareStmt (int *,int **,char**,char*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_db_config (int ,int ,int,int*) ;
 int sqlite3_exec (int ,char const*,int ,int ,char**) ;
 int sqlite3_expert_destroy (TYPE_1__*) ;
 int sqlite3_open (char*,int *) ;
 int sqlite3_set_authorizer (int ,int ,void*) ;
 scalar_t__ sqlite3_step (int *) ;

sqlite3expert *sqlite3_expert_new(sqlite3 *db, char **pzErrmsg){
  int rc = SQLITE_OK;
  sqlite3expert *pNew;

  pNew = (sqlite3expert*)idxMalloc(&rc, sizeof(sqlite3expert));







  if( rc==SQLITE_OK ){
    pNew->db = db;
    pNew->iSample = 100;
    rc = sqlite3_open(":memory:", &pNew->dbv);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3_open(":memory:", &pNew->dbm);
    if( rc==SQLITE_OK ){
      sqlite3_db_config(pNew->dbm, SQLITE_DBCONFIG_TRIGGER_EQP, 1, (int*)0);
    }
  }



  if( rc==SQLITE_OK ){
    sqlite3_stmt *pSql;
    rc = idxPrintfPrepareStmt(pNew->db, &pSql, pzErrmsg,
        "SELECT sql FROM sqlite_master WHERE name NOT LIKE 'sqlite_%%'"
        " AND sql NOT LIKE 'CREATE VIRTUAL %%'"
    );
    while( rc==SQLITE_OK && SQLITE_ROW==sqlite3_step(pSql) ){
      const char *zSql = (const char*)sqlite3_column_text(pSql, 0);
      rc = sqlite3_exec(pNew->dbm, zSql, 0, 0, pzErrmsg);
    }
    idxFinalize(&rc, pSql);
  }


  if( rc==SQLITE_OK ){
    rc = idxCreateVtabSchema(pNew, pzErrmsg);
  }


  if( rc==SQLITE_OK ){
    sqlite3_set_authorizer(pNew->dbv, idxAuthCallback, (void*)pNew);
  }



  if( rc!=SQLITE_OK ){
    sqlite3_expert_destroy(pNew);
    pNew = 0;
  }
  return pNew;
}
