#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nColumn; scalar_t__ idxType; int* aiColumn; int /*<<< orphan*/ * azColl; TYPE_1__* pTable; int /*<<< orphan*/  nKeyCol; } ;
struct TYPE_5__ {int tabFlags; } ;
typedef  TYPE_2__ Index ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SQLITE_IDXTYPE_PRIMARYKEY ; 
 int TF_WithoutRowid ; 
 int XN_EXPR ; 
 int XN_ROWID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(Index *pIdx, int nKey, Index *pPk, int iCol){
  int i, j;
  FUNC1( nKey<=pIdx->nColumn );
  FUNC1( iCol<FUNC0(pPk->nColumn,pPk->nKeyCol) );
  FUNC1( pPk->idxType==SQLITE_IDXTYPE_PRIMARYKEY );
  FUNC1( pPk->pTable->tabFlags & TF_WithoutRowid );
  FUNC1( pPk->pTable==pIdx->pTable );
  FUNC3( pPk==pIdx );
  j = pPk->aiColumn[iCol];
  FUNC1( j!=XN_ROWID && j!=XN_EXPR );
  for(i=0; i<nKey; i++){
    FUNC1( pIdx->aiColumn[i]>=0 || j>=0 );
    if( pIdx->aiColumn[i]==j 
     && FUNC2(pIdx->azColl[i], pPk->azColl[iCol])==0
    ){
      return 1;
    }
  }
  return 0;
}