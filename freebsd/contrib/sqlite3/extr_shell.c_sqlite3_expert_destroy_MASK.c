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
struct TYPE_4__ {struct TYPE_4__* zCandidates; int /*<<< orphan*/  hIdx; int /*<<< orphan*/  pWrite; int /*<<< orphan*/  pTable; int /*<<< orphan*/  pStatement; int /*<<< orphan*/  pScan; int /*<<< orphan*/  dbv; int /*<<< orphan*/  dbm; } ;
typedef  TYPE_1__ sqlite3expert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(sqlite3expert *p){
  if( p ){
    FUNC5(p->dbm);
    FUNC5(p->dbv);
    FUNC1(p->pScan, 0);
    FUNC2(p->pStatement, 0);
    FUNC3(p->pTable);
    FUNC4(p->pWrite);
    FUNC0(&p->hIdx);
    FUNC6(p->zCandidates);
    FUNC6(p);
  }
}