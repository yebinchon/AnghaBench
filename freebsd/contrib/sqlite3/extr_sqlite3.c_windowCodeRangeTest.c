
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* pMWin; TYPE_4__* pParse; } ;
typedef TYPE_3__ WindowCodeArg ;
typedef int Vdbe ;
struct TYPE_15__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_14__ {int nMem; } ;
struct TYPE_12__ {int sortFlags; } ;
struct TYPE_11__ {TYPE_5__* pOrderBy; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ ExprList ;


 int KEYINFO_ORDER_BIGNULL ;
 int KEYINFO_ORDER_DESC ;
 int OP_Add ;

 int OP_Goto ;

 int OP_IsNull ;

 int OP_Lt ;
 int OP_NotNull ;
 int OP_String8 ;
 int OP_Subtract ;
 int P4_STATIC ;
 int SQLITE_NULLEQ ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeModuleComment (int *) ;
 int assert (int) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 int * sqlite3GetVdbe (TYPE_4__*) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int ,int,int ,char*,int ) ;
 int sqlite3VdbeChangeP2 (int *,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int testcase (int) ;
 int windowReadPeerValues (TYPE_3__*,int,int) ;

__attribute__((used)) static void windowCodeRangeTest(
  WindowCodeArg *p,
  int op,
  int csr1,
  int regVal,
  int csr2,
  int lbl
){
  Parse *pParse = p->pParse;
  Vdbe *v = sqlite3GetVdbe(pParse);
  ExprList *pOrderBy = p->pMWin->pOrderBy;
  int reg1 = sqlite3GetTempReg(pParse);
  int reg2 = sqlite3GetTempReg(pParse);
  int regString = ++pParse->nMem;
  int arith = OP_Add;
  int addrGe;

  assert( op==130 || op==129 || op==128 );
  assert( pOrderBy && pOrderBy->nExpr==1 );
  if( pOrderBy->a[0].sortFlags & KEYINFO_ORDER_DESC ){
    switch( op ){
      case 130: op = 128; break;
      case 129: op = OP_Lt; break;
      default: assert( op==128 ); op = 130; break;
    }
    arith = OP_Subtract;
  }


  windowReadPeerValues(p, csr1, reg1);
  windowReadPeerValues(p, csr2, reg2);

  VdbeModuleComment((v, "CodeRangeTest: if( R%d %s R%d %s R%d ) goto lbl",
      reg1, (arith==OP_Add ? "+" : "-"), regVal,
      ((op==130) ? ">=" : (op==128) ? "<=" : (op==129) ? ">" : "<"), reg2
  ));
  sqlite3VdbeAddOp4(v, OP_String8, 0, regString, 0, "", P4_STATIC);
  addrGe = sqlite3VdbeAddOp3(v, 130, regString, 0, reg1);
  VdbeCoverage(v);
  sqlite3VdbeAddOp3(v, arith, regVal, reg1, reg1);
  sqlite3VdbeJumpHere(v, addrGe);
  if( pOrderBy->a[0].sortFlags & KEYINFO_ORDER_BIGNULL ){

    int addr = sqlite3VdbeAddOp1(v, OP_NotNull, reg1); VdbeCoverage(v);
    switch( op ){
      case 130:
        sqlite3VdbeAddOp2(v, OP_Goto, 0, lbl);
        break;
      case 129:
        sqlite3VdbeAddOp2(v, OP_NotNull, reg2, lbl);
        VdbeCoverage(v);
        break;
      case 128:
        sqlite3VdbeAddOp2(v, OP_IsNull, reg2, lbl);
        VdbeCoverage(v);
        break;
      default: assert( op==OP_Lt ); break;
    }
    sqlite3VdbeAddOp2(v, OP_Goto, 0, sqlite3VdbeCurrentAddr(v)+3);


    sqlite3VdbeJumpHere(v, addr);
    sqlite3VdbeAddOp2(v, OP_IsNull, reg2, lbl); VdbeCoverage(v);
    if( op==129 || op==130 ){
      sqlite3VdbeChangeP2(v, -1, sqlite3VdbeCurrentAddr(v)+1);
    }
  }




  sqlite3VdbeAddOp3(v, op, reg2, lbl, reg1); VdbeCoverage(v);
  sqlite3VdbeChangeP5(v, SQLITE_NULLEQ);

  assert( op==130 || op==129 || op==OP_Lt || op==128 );
  testcase(op==130); VdbeCoverageIf(v, op==130);
  testcase(op==OP_Lt); VdbeCoverageIf(v, op==OP_Lt);
  testcase(op==128); VdbeCoverageIf(v, op==128);
  testcase(op==129); VdbeCoverageIf(v, op==129);
  sqlite3ReleaseTempReg(pParse, reg1);
  sqlite3ReleaseTempReg(pParse, reg2);

  VdbeModuleComment((v, "CodeRangeTest: end"));
}
