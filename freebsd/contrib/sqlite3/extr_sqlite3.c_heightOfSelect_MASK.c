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
struct TYPE_3__ {int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pEList; int /*<<< orphan*/  pLimit; int /*<<< orphan*/  pHaving; int /*<<< orphan*/  pWhere; struct TYPE_3__* pPrior; } ;
typedef  TYPE_1__ Select ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(Select *pSelect, int *pnHeight){
  Select *p;
  for(p=pSelect; p; p=p->pPrior){
    FUNC0(p->pWhere, pnHeight);
    FUNC0(p->pHaving, pnHeight);
    FUNC0(p->pLimit, pnHeight);
    FUNC1(p->pEList, pnHeight);
    FUNC1(p->pGroupBy, pnHeight);
    FUNC1(p->pOrderBy, pnHeight);
  }
}