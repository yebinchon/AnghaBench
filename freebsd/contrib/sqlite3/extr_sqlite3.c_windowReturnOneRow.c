
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int regGosub; int addrGosub; int * pParse; int * pVdbe; TYPE_5__* pMWin; } ;
typedef TYPE_4__ WindowCodeArg ;
struct TYPE_13__ {int csrApp; int regResult; int iEphCsr; int iArgCol; int regApp; TYPE_3__* pOwner; TYPE_6__* pFunc; struct TYPE_13__* pNextWin; scalar_t__ regStartRowid; } ;
typedef TYPE_5__ Window ;
typedef int Vdbe ;
struct TYPE_14__ {scalar_t__ zName; } ;
struct TYPE_10__ {TYPE_1__* pList; } ;
struct TYPE_11__ {TYPE_2__ x; } ;
struct TYPE_9__ {int nExpr; } ;
typedef int Parse ;
typedef TYPE_6__ FuncDef ;


 int OP_Add ;
 int OP_AddImm ;
 int OP_Column ;
 int OP_Gosub ;
 int OP_Gt ;
 int OP_Integer ;
 int OP_Null ;
 int OP_Rowid ;
 int OP_SeekRowid ;
 int OP_Subtract ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageNeverNull (int *) ;
 int VdbeCoverageNeverTaken (int *) ;
 scalar_t__ first_valueName ;
 scalar_t__ lagName ;
 scalar_t__ leadName ;
 scalar_t__ nth_valueName ;
 int sqlite3GetTempReg (int *) ;
 int sqlite3ReleaseTempReg (int *,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;
 int sqlite3VdbeMakeLabel (int *) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int windowCheckValue (int *,int,int) ;
 int windowFullScan (TYPE_4__*) ;

__attribute__((used)) static void windowReturnOneRow(WindowCodeArg *p){
  Window *pMWin = p->pMWin;
  Vdbe *v = p->pVdbe;

  if( pMWin->regStartRowid ){
    windowFullScan(p);
  }else{
    Parse *pParse = p->pParse;
    Window *pWin;

    for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
      FuncDef *pFunc = pWin->pFunc;
      if( pFunc->zName==nth_valueName
       || pFunc->zName==first_valueName
      ){
        int csr = pWin->csrApp;
        int lbl = sqlite3VdbeMakeLabel(pParse);
        int tmpReg = sqlite3GetTempReg(pParse);
        sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regResult);

        if( pFunc->zName==nth_valueName ){
          sqlite3VdbeAddOp3(v, OP_Column,pMWin->iEphCsr,pWin->iArgCol+1,tmpReg);
          windowCheckValue(pParse, tmpReg, 2);
        }else{
          sqlite3VdbeAddOp2(v, OP_Integer, 1, tmpReg);
        }
        sqlite3VdbeAddOp3(v, OP_Add, tmpReg, pWin->regApp, tmpReg);
        sqlite3VdbeAddOp3(v, OP_Gt, pWin->regApp+1, lbl, tmpReg);
        VdbeCoverageNeverNull(v);
        sqlite3VdbeAddOp3(v, OP_SeekRowid, csr, 0, tmpReg);
        VdbeCoverageNeverTaken(v);
        sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol, pWin->regResult);
        sqlite3VdbeResolveLabel(v, lbl);
        sqlite3ReleaseTempReg(pParse, tmpReg);
      }
      else if( pFunc->zName==leadName || pFunc->zName==lagName ){
        int nArg = pWin->pOwner->x.pList->nExpr;
        int csr = pWin->csrApp;
        int lbl = sqlite3VdbeMakeLabel(pParse);
        int tmpReg = sqlite3GetTempReg(pParse);
        int iEph = pMWin->iEphCsr;

        if( nArg<3 ){
          sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regResult);
        }else{
          sqlite3VdbeAddOp3(v, OP_Column, iEph,pWin->iArgCol+2,pWin->regResult);
        }
        sqlite3VdbeAddOp2(v, OP_Rowid, iEph, tmpReg);
        if( nArg<2 ){
          int val = (pFunc->zName==leadName ? 1 : -1);
          sqlite3VdbeAddOp2(v, OP_AddImm, tmpReg, val);
        }else{
          int op = (pFunc->zName==leadName ? OP_Add : OP_Subtract);
          int tmpReg2 = sqlite3GetTempReg(pParse);
          sqlite3VdbeAddOp3(v, OP_Column, iEph, pWin->iArgCol+1, tmpReg2);
          sqlite3VdbeAddOp3(v, op, tmpReg2, tmpReg, tmpReg);
          sqlite3ReleaseTempReg(pParse, tmpReg2);
        }

        sqlite3VdbeAddOp3(v, OP_SeekRowid, csr, lbl, tmpReg);
        VdbeCoverage(v);
        sqlite3VdbeAddOp3(v, OP_Column, csr, pWin->iArgCol, pWin->regResult);
        sqlite3VdbeResolveLabel(v, lbl);
        sqlite3ReleaseTempReg(pParse, tmpReg);
      }
    }
  }
  sqlite3VdbeAddOp2(v, OP_Gosub, p->regGosub, p->addrGosub);
}
