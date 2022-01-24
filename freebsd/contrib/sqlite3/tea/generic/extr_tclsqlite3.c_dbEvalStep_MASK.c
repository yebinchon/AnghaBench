#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_12__ {char const* zSql; scalar_t__ pPreStmt; TYPE_1__* pDb; scalar_t__ pArray; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pStmt; } ;
struct TYPE_10__ {int /*<<< orphan*/  db; int /*<<< orphan*/  interp; scalar_t__ bLegacyPrepare; void* nVMStep; void* nIndex; void* nSort; void* nStep; } ;
typedef  TYPE_1__ SqliteDb ;
typedef  TYPE_2__ SqlPreparedStmt ;
typedef  TYPE_3__ DbEvalContext ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_AUTOINDEX ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_FULLSCAN_STEP ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_SORT ; 
 int /*<<< orphan*/  SQLITE_STMTSTATUS_VM_STEP ; 
 int TCL_BREAK ; 
 int TCL_ERROR ; 
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,char*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(DbEvalContext *p){
  const char *zPrevSql = 0;       /* Previous value of p->zSql */

  while( p->zSql[0] || p->pPreStmt ){
    int rc;
    if( p->pPreStmt==0 ){
      zPrevSql = (p->zSql==zPrevSql ? 0 : p->zSql);
      rc = FUNC3(p->pDb, p->zSql, &p->zSql, &p->pPreStmt);
      if( rc!=TCL_OK ) return rc;
    }else{
      int rcs;
      SqliteDb *pDb = p->pDb;
      SqlPreparedStmt *pPreStmt = p->pPreStmt;
      sqlite3_stmt *pStmt = pPreStmt->pStmt;

      rcs = FUNC8(pStmt);
      if( rcs==SQLITE_ROW ){
        return TCL_OK;
      }
      if( p->pArray ){
        FUNC2(p, 0, 0);
      }
      rcs = FUNC7(pStmt);

      pDb->nStep = FUNC9(pStmt,SQLITE_STMTSTATUS_FULLSCAN_STEP,1);
      pDb->nSort = FUNC9(pStmt,SQLITE_STMTSTATUS_SORT,1);
      pDb->nIndex = FUNC9(pStmt,SQLITE_STMTSTATUS_AUTOINDEX,1);
      pDb->nVMStep = FUNC9(pStmt,SQLITE_STMTSTATUS_VM_STEP,1);
      FUNC4(p);
      p->pPreStmt = 0;

      if( rcs!=SQLITE_OK ){
        /* If a run-time error occurs, report the error and stop reading
        ** the SQL.  */
        FUNC5(pDb, pPreStmt, 1);
#if SQLITE_TEST
        if( p->pDb->bLegacyPrepare && rcs==SQLITE_SCHEMA && zPrevSql ){
          /* If the runtime error was an SQLITE_SCHEMA, and the database
          ** handle is configured to use the legacy sqlite3_prepare()
          ** interface, retry prepare()/step() on the same SQL statement.
          ** This only happens once. If there is a second SQLITE_SCHEMA
          ** error, the error will be returned to the caller. */
          p->zSql = zPrevSql;
          continue;
        }
#endif
        FUNC1(pDb->interp,
                         FUNC0(FUNC6(pDb->db), -1));
        return TCL_ERROR;
      }else{
        FUNC5(pDb, pPreStmt, 0);
      }
    }
  }

  /* Finished */
  return TCL_BREAK;
}