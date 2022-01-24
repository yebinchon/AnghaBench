#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pFuncArg; } ;
struct TYPE_6__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {TYPE_2__ u1; TYPE_1__ fg; TYPE_4__* pSelect; } ;
struct TYPE_9__ {TYPE_3__* pSrc; void* pWhere; void* pHaving; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pGroupBy; int /*<<< orphan*/  pEList; struct TYPE_9__* pPrior; } ;
struct TYPE_8__ {int nSrc; struct SrcList_item* a; } ;
typedef  int /*<<< orphan*/  SubstContext ;
typedef  TYPE_3__ SrcList ;
typedef  TYPE_4__ Select ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
  SubstContext *pSubst, /* Description of the substitution */
  Select *p,            /* SELECT statement in which to make substitutions */
  int doPrior           /* Do substitutes on p->pPrior too */
){
  SrcList *pSrc;
  struct SrcList_item *pItem;
  int i;
  if( !p ) return;
  do{
    FUNC2(pSubst, p->pEList);
    FUNC2(pSubst, p->pGroupBy);
    FUNC2(pSubst, p->pOrderBy);
    p->pHaving = FUNC1(pSubst, p->pHaving);
    p->pWhere = FUNC1(pSubst, p->pWhere);
    pSrc = p->pSrc;
    FUNC0( pSrc!=0 );
    for(i=pSrc->nSrc, pItem=pSrc->a; i>0; i--, pItem++){
      FUNC3(pSubst, pItem->pSelect, 1);
      if( pItem->fg.isTabFunc ){
        FUNC2(pSubst, pItem->u1.pFuncArg);
      }
    }
  }while( doPrior && (p = p->pPrior)!=0 );
}