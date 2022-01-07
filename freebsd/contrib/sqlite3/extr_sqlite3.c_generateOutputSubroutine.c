
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_17__ {int nErr; TYPE_1__* db; int * pVdbe; } ;
struct TYPE_16__ {int iLimit; int iOffset; } ;
struct TYPE_15__ {int iSdst; int nSdst; int eDest; int iSDParm; char* zAffSdst; } ;
struct TYPE_14__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ SelectDest ;
typedef TYPE_3__ Select ;
typedef TYPE_4__ Parse ;
typedef int KeyInfo ;


 int OPFLAG_APPEND ;
 int OP_Compare ;
 int OP_Copy ;
 int OP_DecrJumpZero ;
 int OP_IdxInsert ;
 int OP_IfNot ;
 int OP_Insert ;
 int OP_Integer ;
 int OP_Jump ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_ResultRow ;
 int OP_Return ;
 int OP_Yield ;
 int P4_KEYINFO ;


 int SRT_Exists ;

 int SRT_Output ;

 int SRT_Table ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int codeOffset (int *,int ,int) ;
 int sqlite3ExprCodeMove (TYPE_4__*,int,int,int) ;
 int sqlite3GetTempRange (TYPE_4__*,int) ;
 int sqlite3GetTempReg (TYPE_4__*) ;
 scalar_t__ sqlite3KeyInfoRef (int *) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_4__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static int generateOutputSubroutine(
  Parse *pParse,
  Select *p,
  SelectDest *pIn,
  SelectDest *pDest,
  int regReturn,
  int regPrev,
  KeyInfo *pKeyInfo,
  int iBreak
){
  Vdbe *v = pParse->pVdbe;
  int iContinue;
  int addr;

  addr = sqlite3VdbeCurrentAddr(v);
  iContinue = sqlite3VdbeMakeLabel(pParse);



  if( regPrev ){
    int addr1, addr2;
    addr1 = sqlite3VdbeAddOp1(v, OP_IfNot, regPrev); VdbeCoverage(v);
    addr2 = sqlite3VdbeAddOp4(v, OP_Compare, pIn->iSdst, regPrev+1, pIn->nSdst,
                              (char*)sqlite3KeyInfoRef(pKeyInfo), P4_KEYINFO);
    sqlite3VdbeAddOp3(v, OP_Jump, addr2+2, iContinue, addr2+2); VdbeCoverage(v);
    sqlite3VdbeJumpHere(v, addr1);
    sqlite3VdbeAddOp3(v, OP_Copy, pIn->iSdst, regPrev+1, pIn->nSdst-1);
    sqlite3VdbeAddOp2(v, OP_Integer, 1, regPrev);
  }
  if( pParse->db->mallocFailed ) return 0;



  codeOffset(v, p->iOffset, iContinue);

  assert( pDest->eDest!=SRT_Exists );
  assert( pDest->eDest!=SRT_Table );
  switch( pDest->eDest ){


    case 130: {
      int r1 = sqlite3GetTempReg(pParse);
      int r2 = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp3(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst, r1);
      sqlite3VdbeAddOp2(v, OP_NewRowid, pDest->iSDParm, r2);
      sqlite3VdbeAddOp3(v, OP_Insert, pDest->iSDParm, r1, r2);
      sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
      sqlite3ReleaseTempReg(pParse, r2);
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }




    case 128: {
      int r1;
      testcase( pIn->nSdst>1 );
      r1 = sqlite3GetTempReg(pParse);
      sqlite3VdbeAddOp4(v, OP_MakeRecord, pIn->iSdst, pIn->nSdst,
          r1, pDest->zAffSdst, pIn->nSdst);
      sqlite3VdbeAddOp4Int(v, OP_IdxInsert, pDest->iSDParm, r1,
                           pIn->iSdst, pIn->nSdst);
      sqlite3ReleaseTempReg(pParse, r1);
      break;
    }






    case 129: {
      if( pParse->nErr==0 ){
        testcase( pIn->nSdst>1 );
        sqlite3ExprCodeMove(pParse, pIn->iSdst, pDest->iSDParm, pIn->nSdst);
      }

      break;
    }





    case 131: {
      if( pDest->iSdst==0 ){
        pDest->iSdst = sqlite3GetTempRange(pParse, pIn->nSdst);
        pDest->nSdst = pIn->nSdst;
      }
      sqlite3ExprCodeMove(pParse, pIn->iSdst, pDest->iSdst, pIn->nSdst);
      sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      break;
    }
    default: {
      assert( pDest->eDest==SRT_Output );
      sqlite3VdbeAddOp2(v, OP_ResultRow, pIn->iSdst, pIn->nSdst);
      break;
    }
  }



  if( p->iLimit ){
    sqlite3VdbeAddOp2(v, OP_DecrJumpZero, p->iLimit, iBreak); VdbeCoverage(v);
  }



  sqlite3VdbeResolveLabel(v, iContinue);
  sqlite3VdbeAddOp1(v, OP_Return, regReturn);

  return addr;
}
