#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {scalar_t__ pWin; int /*<<< orphan*/  pWith; int /*<<< orphan*/  pWinDefn; int /*<<< orphan*/  pLimit; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pHaving; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pWhere; int /*<<< orphan*/  pSrc; int /*<<< orphan*/  pEList; struct TYPE_4__* pPrior; } ;
typedef  TYPE_1__ Select ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(sqlite3 *db, Select *p, int bFree){
  while( p ){
    Select *pPrior = p->pPrior;
    FUNC4(db, p->pEList);
    FUNC5(db, p->pSrc);
    FUNC3(db, p->pWhere);
    FUNC4(db, p->pGroupBy);
    FUNC3(db, p->pHaving);
    FUNC4(db, p->pOrderBy);
    FUNC3(db, p->pLimit);
#ifndef SQLITE_OMIT_WINDOWFUNC
    if( FUNC0(p->pWinDefn) ){
      FUNC6(db, p->pWinDefn);
    }
    FUNC1( p->pWin==0 );
#endif
    if( FUNC0(p->pWith) ) FUNC7(db, p->pWith);
    if( bFree ) FUNC2(db, p);
    p = pPrior;
    bFree = 1;
  }
}