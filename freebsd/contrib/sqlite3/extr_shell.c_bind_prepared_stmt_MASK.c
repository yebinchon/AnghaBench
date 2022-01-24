#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zNum ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(ShellState *pArg, sqlite3_stmt *pStmt){
  int nVar;
  int i;
  int rc;
  sqlite3_stmt *pQ = 0;

  nVar = FUNC1(pStmt);
  if( nVar==0 ) return;  /* Nothing to do */
  if( FUNC11(pArg->db, "TEMP", "sqlite_parameters",
                                    "key", 0, 0, 0, 0, 0)!=SQLITE_OK ){
    return; /* Parameter table does not exist */
  }
  rc = FUNC7(pArg->db,
          "SELECT value FROM temp.sqlite_parameters"
          " WHERE key=?1", -1, &pQ, 0);
  if( rc || pQ==0 ) return;
  for(i=1; i<=nVar; i++){
    char zNum[30];
    const char *zVar = FUNC2(pStmt, i);
    if( zVar==0 ){
      FUNC9(sizeof(zNum),zNum,"?%d",i);
      zVar = zNum;
    }
    FUNC3(pQ, 1, zVar, -1, SQLITE_STATIC);
    if( FUNC10(pQ)==SQLITE_ROW ){
      FUNC4(pStmt, i, FUNC5(pQ, 0));
    }else{
      FUNC0(pStmt, i);
    }
    FUNC8(pQ);
  }
  FUNC6(pQ);
}