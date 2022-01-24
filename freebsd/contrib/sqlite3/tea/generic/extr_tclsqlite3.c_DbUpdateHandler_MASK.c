#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_2__ {int pUpdateHook; int /*<<< orphan*/  interp; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int SQLITE_DELETE ; 
 int SQLITE_INSERT ; 
 int SQLITE_UPDATE ; 
 int /*<<< orphan*/  TCL_EVAL_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(
  void *p,
  int op,
  const char *zDb,
  const char *zTbl,
  sqlite_int64 rowid
){
  SqliteDb *pDb = (SqliteDb *)p;
  Tcl_Obj *pCmd;
  static const char *azStr[] = {"DELETE", "INSERT", "UPDATE"};

  FUNC7( (SQLITE_DELETE-1)/9 == 0 );
  FUNC7( (SQLITE_INSERT-1)/9 == 1 );
  FUNC7( (SQLITE_UPDATE-1)/9 == 2 );

  FUNC7( pDb->pUpdateHook );
  FUNC7( op==SQLITE_INSERT || op==SQLITE_UPDATE || op==SQLITE_DELETE );

  pCmd = FUNC1(pDb->pUpdateHook);
  FUNC3(pCmd);
  FUNC4(0, pCmd, FUNC5(azStr[(op-1)/9], -1));
  FUNC4(0, pCmd, FUNC5(zDb, -1));
  FUNC4(0, pCmd, FUNC5(zTbl, -1));
  FUNC4(0, pCmd, FUNC6(rowid));
  FUNC2(pDb->interp, pCmd, TCL_EVAL_DIRECT);
  FUNC0(pCmd);
}