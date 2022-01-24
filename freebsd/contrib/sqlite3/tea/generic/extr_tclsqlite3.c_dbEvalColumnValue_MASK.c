#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_7__ {TYPE_1__* pDb; TYPE_2__* pPreStmt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pStmt; } ;
struct TYPE_5__ {char* zNull; } ;
typedef  TYPE_3__ DbEvalContext ;

/* Variables and functions */
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Tcl_Obj *FUNC11(DbEvalContext *p, int iCol){
  sqlite3_stmt *pStmt = p->pPreStmt->pStmt;
  switch( FUNC10(pStmt, iCol) ){
    case SQLITE_BLOB: {
      int bytes = FUNC6(pStmt, iCol);
      const char *zBlob = FUNC5(pStmt, iCol);
      if( !zBlob ) bytes = 0;
      return FUNC0((u8*)zBlob, bytes);
    }
    case SQLITE_INTEGER: {
      sqlite_int64 v = FUNC8(pStmt, iCol);
      if( v>=-2147483647 && v<=2147483647 ){
        return FUNC2((int)v);
      }else{
        return FUNC4(v);
      }
    }
    case SQLITE_FLOAT: {
      return FUNC1(FUNC7(pStmt, iCol));
    }
    case SQLITE_NULL: {
      return FUNC3(p->pDb->zNull, -1);
    }
  }

  return FUNC3((char*)FUNC9(pStmt, iCol), -1);
}