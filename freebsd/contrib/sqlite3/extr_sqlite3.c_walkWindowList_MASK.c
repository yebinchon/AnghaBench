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
struct TYPE_3__ {int /*<<< orphan*/  pEnd; int /*<<< orphan*/  pStart; int /*<<< orphan*/  pFilter; int /*<<< orphan*/  pPartition; int /*<<< orphan*/  pOrderBy; struct TYPE_3__* pNextWin; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  Walker ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int WRC_Abort ; 
 int WRC_Continue ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Walker *pWalker, Window *pList){
  Window *pWin;
  for(pWin=pList; pWin; pWin=pWin->pNextWin){
    int rc;
    rc = FUNC2(pWalker, pWin->pOrderBy);
    if( rc ) return WRC_Abort;
    rc = FUNC2(pWalker, pWin->pPartition);
    if( rc ) return WRC_Abort;
    rc = FUNC1(pWalker, pWin->pFilter);
    if( rc ) return WRC_Abort;

    /* The next two are purely for calls to sqlite3RenameExprUnmap()
    ** within sqlite3WindowOffsetExpr().  Because of constraints imposed
    ** by sqlite3WindowOffsetExpr(), they can never fail.  The results do
    ** not matter anyhow. */
    rc = FUNC1(pWalker, pWin->pStart);
    if( FUNC0(rc) ) return WRC_Abort;
    rc = FUNC1(pWalker, pWin->pEnd);
    if( FUNC0(rc) ) return WRC_Abort;
  }
  return WRC_Continue;
}