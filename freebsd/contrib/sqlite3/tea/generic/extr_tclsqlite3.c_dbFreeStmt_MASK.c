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
struct TYPE_3__ {int /*<<< orphan*/  pStmt; scalar_t__ zSql; } ;
typedef  TYPE_1__ SqlPreparedStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(SqlPreparedStmt *pStmt){
#ifdef SQLITE_TEST
  if( sqlite3_sql(pStmt->pStmt)==0 ){
    Tcl_Free((char *)pStmt->zSql);
  }
#endif
  FUNC1(pStmt->pStmt);
  FUNC0((char *)pStmt);
}