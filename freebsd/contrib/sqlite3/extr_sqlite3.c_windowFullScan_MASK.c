#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  regArg; int /*<<< orphan*/ * pVdbe; TYPE_2__* pMWin; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_1__ WindowCodeArg ;
struct TYPE_10__ {int csrApp; int iEphCsr; int regAccum; int regStartRowid; int regEndRowid; scalar_t__ eExclude; TYPE_8__* pOrderBy; struct TYPE_10__* pNextWin; } ;
typedef  TYPE_2__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_11__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Compare ; 
 int /*<<< orphan*/  OP_Eq ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Gt ; 
 int /*<<< orphan*/  OP_Jump ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int /*<<< orphan*/  OP_SeekGE ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 scalar_t__ TK_CURRENT ; 
 scalar_t__ TK_NO ; 
 scalar_t__ TK_TIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC20(WindowCodeArg *p){
  Window *pWin;
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  Vdbe *v = p->pVdbe;

  int regCRowid = 0;              /* Current rowid value */
  int regCPeer = 0;               /* Current peer values */
  int regRowid = 0;               /* AggStep rowid value */
  int regPeer = 0;                /* AggStep peer values */

  int nPeer;
  int lblNext;
  int lblBrk;
  int addrNext;
  int csr;

  FUNC3((v, "windowFullScan begin"));

  FUNC4( pMWin!=0 );
  csr = pMWin->csrApp;
  nPeer = (pMWin->pOrderBy ? pMWin->pOrderBy->nExpr : 0);

  lblNext = FUNC15(pParse);
  lblBrk = FUNC15(pParse);

  regCRowid = FUNC6(pParse);
  regRowid = FUNC6(pParse);
  if( nPeer ){
    regCPeer = FUNC5(pParse, nPeer);
    regPeer = FUNC5(pParse, nPeer);
  }

  FUNC10(v, OP_Rowid, pMWin->iEphCsr, regCRowid);
  FUNC19(p, pMWin->iEphCsr, regCPeer);

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FUNC10(v, OP_Null, 0, pWin->regAccum);
  }

  FUNC11(v, OP_SeekGE, csr, lblBrk, pMWin->regStartRowid);
  FUNC0(v);
  addrNext = FUNC13(v);
  FUNC10(v, OP_Rowid, csr, regRowid);
  FUNC11(v, OP_Gt, pMWin->regEndRowid, lblBrk, regRowid);
  FUNC2(v);

  if( pMWin->eExclude==TK_CURRENT ){
    FUNC11(v, OP_Eq, regCRowid, lblNext, regRowid);
    FUNC2(v);
  }else if( pMWin->eExclude!=TK_NO ){
    int addr;
    int addrEq = 0;
    KeyInfo *pKeyInfo = 0;

    if( pMWin->pOrderBy ){
      pKeyInfo = FUNC7(pParse, pMWin->pOrderBy, 0, 0);
    }
    if( pMWin->eExclude==TK_TIES ){
      addrEq = FUNC11(v, OP_Eq, regCRowid, 0, regRowid);
      FUNC2(v);
    }
    if( pKeyInfo ){
      FUNC19(p, csr, regPeer);
      FUNC11(v, OP_Compare, regPeer, regCPeer, nPeer);
      FUNC12(v, (void*)pKeyInfo, P4_KEYINFO);
      addr = FUNC13(v)+1;
      FUNC11(v, OP_Jump, addr, lblNext, addr);
      FUNC1(v);
    }else{
      FUNC10(v, OP_Goto, 0, lblNext);
    }
    if( addrEq ) FUNC14(v, addrEq);
  }

  FUNC18(p, pMWin, csr, 0, p->regArg);

  FUNC16(v, lblNext);
  FUNC10(v, OP_Next, csr, addrNext);
  FUNC0(v);
  FUNC14(v, addrNext-1);
  FUNC14(v, addrNext+1);
  FUNC9(pParse, regRowid);
  FUNC9(pParse, regCRowid);
  if( nPeer ){
    FUNC8(pParse, regPeer, nPeer);
    FUNC8(pParse, regCPeer, nPeer);
  }

  FUNC17(p, 1);
  FUNC3((v, "windowFullScan end"));
}