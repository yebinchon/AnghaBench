
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_12__ {char const* zSql; scalar_t__ pPreStmt; TYPE_1__* pDb; scalar_t__ pArray; } ;
struct TYPE_11__ {int * pStmt; } ;
struct TYPE_10__ {int db; int interp; scalar_t__ bLegacyPrepare; void* nVMStep; void* nIndex; void* nSort; void* nStep; } ;
typedef TYPE_1__ SqliteDb ;
typedef TYPE_2__ SqlPreparedStmt ;
typedef TYPE_3__ DbEvalContext ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_SCHEMA ;
 int SQLITE_STMTSTATUS_AUTOINDEX ;
 int SQLITE_STMTSTATUS_FULLSCAN_STEP ;
 int SQLITE_STMTSTATUS_SORT ;
 int SQLITE_STMTSTATUS_VM_STEP ;
 int TCL_BREAK ;
 int TCL_ERROR ;
 int TCL_OK ;
 int Tcl_NewStringObj (int ,int) ;
 int Tcl_SetObjResult (int ,int ) ;
 int dbEvalRowInfo (TYPE_3__*,int ,int ) ;
 int dbPrepareAndBind (TYPE_1__*,char*,char**,scalar_t__*) ;
 int dbReleaseColumnNames (TYPE_3__*) ;
 int dbReleaseStmt (TYPE_1__*,TYPE_2__*,int) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 void* sqlite3_stmt_status (int *,int ,int) ;

__attribute__((used)) static int dbEvalStep(DbEvalContext *p){
  const char *zPrevSql = 0;

  while( p->zSql[0] || p->pPreStmt ){
    int rc;
    if( p->pPreStmt==0 ){
      zPrevSql = (p->zSql==zPrevSql ? 0 : p->zSql);
      rc = dbPrepareAndBind(p->pDb, p->zSql, &p->zSql, &p->pPreStmt);
      if( rc!=TCL_OK ) return rc;
    }else{
      int rcs;
      SqliteDb *pDb = p->pDb;
      SqlPreparedStmt *pPreStmt = p->pPreStmt;
      sqlite3_stmt *pStmt = pPreStmt->pStmt;

      rcs = sqlite3_step(pStmt);
      if( rcs==SQLITE_ROW ){
        return TCL_OK;
      }
      if( p->pArray ){
        dbEvalRowInfo(p, 0, 0);
      }
      rcs = sqlite3_reset(pStmt);

      pDb->nStep = sqlite3_stmt_status(pStmt,SQLITE_STMTSTATUS_FULLSCAN_STEP,1);
      pDb->nSort = sqlite3_stmt_status(pStmt,SQLITE_STMTSTATUS_SORT,1);
      pDb->nIndex = sqlite3_stmt_status(pStmt,SQLITE_STMTSTATUS_AUTOINDEX,1);
      pDb->nVMStep = sqlite3_stmt_status(pStmt,SQLITE_STMTSTATUS_VM_STEP,1);
      dbReleaseColumnNames(p);
      p->pPreStmt = 0;

      if( rcs!=SQLITE_OK ){


        dbReleaseStmt(pDb, pPreStmt, 1);
        Tcl_SetObjResult(pDb->interp,
                         Tcl_NewStringObj(sqlite3_errmsg(pDb->db), -1));
        return TCL_ERROR;
      }else{
        dbReleaseStmt(pDb, pPreStmt, 0);
      }
    }
  }


  return TCL_BREAK;
}
