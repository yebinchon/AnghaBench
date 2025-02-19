
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int nConstraint; TYPE_1__* aConstraint; } ;
typedef TYPE_4__ sqlite3_index_info ;
struct TYPE_16__ {char* zName; } ;
struct TYPE_15__ {int pRight; scalar_t__ pLeft; } ;
struct TYPE_14__ {int pParse; TYPE_3__* pWC; } ;
struct TYPE_12__ {TYPE_2__* a; } ;
struct TYPE_11__ {TYPE_6__* pExpr; } ;
struct TYPE_10__ {int iTermOffset; } ;
typedef TYPE_5__ HiddenIndexInfo ;
typedef TYPE_6__ Expr ;
typedef TYPE_7__ CollSeq ;


 TYPE_7__* sqlite3BinaryCompareCollSeq (int ,scalar_t__,int ) ;
 char* sqlite3StrBINARY ;

const char *sqlite3_vtab_collation(sqlite3_index_info *pIdxInfo, int iCons){
  HiddenIndexInfo *pHidden = (HiddenIndexInfo*)&pIdxInfo[1];
  const char *zRet = 0;
  if( iCons>=0 && iCons<pIdxInfo->nConstraint ){
    CollSeq *pC = 0;
    int iTerm = pIdxInfo->aConstraint[iCons].iTermOffset;
    Expr *pX = pHidden->pWC->a[iTerm].pExpr;
    if( pX->pLeft ){
      pC = sqlite3BinaryCompareCollSeq(pHidden->pParse, pX->pLeft, pX->pRight);
    }
    zRet = (pC ? pC->zName : sqlite3StrBINARY);
  }
  return zRet;
}
