#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* pStatement; int /*<<< orphan*/ * pScan; int /*<<< orphan*/  dbv; scalar_t__ bRun; } ;
typedef  TYPE_1__ sqlite3expert ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {char* zSql; scalar_t__ iId; struct TYPE_7__* pNext; } ;
typedef  TYPE_2__ IdxStatement ;
typedef  int /*<<< orphan*/  IdxScan ;

/* Variables and functions */
 int SQLITE_MISUSE ; 
 int SQLITE_OK ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
  sqlite3expert *p,               /* From sqlite3_expert_new() */
  const char *zSql,               /* SQL statement to add */
  char **pzErr                    /* OUT: Error message (if any) */
){
  IdxScan *pScanOrig = p->pScan;
  IdxStatement *pStmtOrig = p->pStatement;
  int rc = SQLITE_OK;
  const char *zStmt = zSql;

  if( p->bRun ) return SQLITE_MISUSE;

  while( rc==SQLITE_OK && zStmt && zStmt[0] ){
    sqlite3_stmt *pStmt = 0;
    rc = FUNC7(p->dbv, zStmt, -1, &pStmt, &zStmt);
    if( rc==SQLITE_OK ){
      if( pStmt ){
        IdxStatement *pNew;
        const char *z = FUNC8(pStmt);
        int n = FUNC0(z);
        pNew = (IdxStatement*)FUNC2(&rc, sizeof(IdxStatement) + n+1);
        if( rc==SQLITE_OK ){
          pNew->zSql = (char*)&pNew[1];
          FUNC5(pNew->zSql, z, n+1);
          pNew->pNext = p->pStatement;
          if( p->pStatement ) pNew->iId = p->pStatement->iId+1;
          p->pStatement = pNew;
        }
        FUNC6(pStmt);
      }
    }else{
      FUNC1(p->dbv, pzErr);
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC3(p->pScan, pScanOrig);
    FUNC4(p->pStatement, pStmtOrig);
    p->pScan = pScanOrig;
    p->pStatement = pStmtOrig;
  }

  return rc;
}