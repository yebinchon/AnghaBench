#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_18__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
struct TYPE_16__ {char* zToken; } ;
struct TYPE_15__ {TYPE_5__* pList; } ;
struct TYPE_20__ {scalar_t__ op; TYPE_2__ u; TYPE_1__ x; } ;
struct TYPE_19__ {int nExpr; TYPE_3__* a; } ;
struct TYPE_17__ {int sortFlags; } ;
typedef  TYPE_5__ ExprList ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_WinFunc ; 
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int KEYINFO_ORDER_BIGNULL ; 
 int KEYINFO_ORDER_DESC ; 
 scalar_t__ TK_AGG_FUNCTION ; 
 int WHERE_ORDERBY_MAX ; 
 int WHERE_ORDERBY_MIN ; 
 int WHERE_ORDERBY_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static u8 FUNC5(sqlite3 *db, Expr *pFunc, ExprList **ppMinMax){
  int eRet = WHERE_ORDERBY_NORMAL;      /* Return value */
  ExprList *pEList = pFunc->x.pList;    /* Arguments to agg function */
  const char *zFunc;                    /* Name of aggregate function pFunc */
  ExprList *pOrderBy;
  u8 sortFlags;

  FUNC2( *ppMinMax==0 );
  FUNC2( pFunc->op==TK_AGG_FUNCTION );
  FUNC2( !FUNC1(pFunc) );
  if( pEList==0 || pEList->nExpr!=1 || FUNC0(pFunc, EP_WinFunc) ){
    return eRet;
  }
  zFunc = pFunc->u.zToken;
  if( FUNC4(zFunc, "min")==0 ){
    eRet = WHERE_ORDERBY_MIN;
    sortFlags = KEYINFO_ORDER_BIGNULL;
  }else if( FUNC4(zFunc, "max")==0 ){
    eRet = WHERE_ORDERBY_MAX;
    sortFlags = KEYINFO_ORDER_DESC;
  }else{
    return eRet;
  }
  *ppMinMax = pOrderBy = FUNC3(db, pEList, 0);
  FUNC2( pOrderBy!=0 || db->mallocFailed );
  if( pOrderBy ) pOrderBy->a[0].sortFlags = sortFlags;
  return eRet;
}