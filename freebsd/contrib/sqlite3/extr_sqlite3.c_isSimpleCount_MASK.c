#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  pSelect; } ;
typedef  TYPE_7__ Table ;
struct TYPE_25__ {scalar_t__ op; } ;
struct TYPE_24__ {TYPE_4__* pEList; TYPE_2__* pSrc; scalar_t__ pWhere; int /*<<< orphan*/  pGroupBy; } ;
struct TYPE_22__ {TYPE_5__* pFunc; } ;
struct TYPE_21__ {int funcFlags; } ;
struct TYPE_20__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_19__ {TYPE_9__* pExpr; } ;
struct TYPE_18__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_17__ {TYPE_7__* pTab; scalar_t__ pSelect; } ;
struct TYPE_16__ {scalar_t__ nFunc; TYPE_6__* aFunc; } ;
typedef  TYPE_8__ Select ;
typedef  TYPE_9__ Expr ;
typedef  TYPE_10__ AggInfo ;

/* Variables and functions */
 int EP_Distinct ; 
 int EP_WinFunc ; 
 scalar_t__ FUNC0 (TYPE_9__*,int) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int SQLITE_FUNC_COUNT ; 
 scalar_t__ TK_AGG_FUNCTION ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static Table *FUNC4(Select *p, AggInfo *pAggInfo){
  Table *pTab;
  Expr *pExpr;

  FUNC3( !p->pGroupBy );

  if( p->pWhere || p->pEList->nExpr!=1 
   || p->pSrc->nSrc!=1 || p->pSrc->a[0].pSelect
  ){
    return 0;
  }
  pTab = p->pSrc->a[0].pTab;
  pExpr = p->pEList->a[0].pExpr;
  FUNC3( pTab && !pTab->pSelect && pExpr );

  if( FUNC1(pTab) ) return 0;
  if( pExpr->op!=TK_AGG_FUNCTION ) return 0;
  if( FUNC2(pAggInfo->nFunc==0) ) return 0;
  if( (pAggInfo->aFunc[0].pFunc->funcFlags&SQLITE_FUNC_COUNT)==0 ) return 0;
  if( FUNC0(pExpr, EP_Distinct|EP_WinFunc) ) return 0;

  return pTab;
}