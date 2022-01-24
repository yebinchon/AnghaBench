#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int csr; int reg; } ;
struct TYPE_15__ {int csr; int reg; } ;
struct TYPE_14__ {int csr; int reg; } ;
struct TYPE_17__ {int eDelete; int /*<<< orphan*/  regArg; TYPE_3__ end; TYPE_2__ start; TYPE_1__ current; int /*<<< orphan*/ * pVdbe; TYPE_5__* pMWin; int /*<<< orphan*/ * pParse; } ;
typedef  TYPE_4__ WindowCodeArg ;
struct TYPE_18__ {scalar_t__ eFrmType; scalar_t__ eStart; scalar_t__ regStartRowid; scalar_t__ eEnd; int regEndRowid; TYPE_8__* pOrderBy; } ;
typedef  TYPE_5__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_19__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OPFLAG_SAVEPOSITION ; 
 int /*<<< orphan*/  OP_AddImm ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_Ge ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_Gt ; 
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  OP_Le ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_Rowid ; 
 scalar_t__ TK_FOLLOWING ; 
 scalar_t__ TK_PRECEDING ; 
 scalar_t__ TK_RANGE ; 
 scalar_t__ TK_ROWS ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  WINDOW_AGGINVERSE 129 
 int WINDOW_AGGSTEP ; 
#define  WINDOW_RETURN_ROW 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_8__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC20(
 WindowCodeArg *p,                /* Context object */
 int op,                          /* WINDOW_RETURN_ROW, AGGSTEP or AGGINVERSE */
 int regCountdown,                /* Register for OP_IfPos countdown */
 int jumpOnEof                    /* Jump here if stepped cursor reaches EOF */
){
  int csr, reg;
  Parse *pParse = p->pParse;
  Window *pMWin = p->pMWin;
  int ret = 0;
  Vdbe *v = p->pVdbe;
  int addrContinue = 0;
  int bPeer = (pMWin->eFrmType!=TK_ROWS);

  int lblDone = FUNC12(pParse);
  int addrNextRange = 0;

  /* Special case - WINDOW_AGGINVERSE is always a no-op if the frame
  ** starts with UNBOUNDED PRECEDING. */
  if( op==WINDOW_AGGINVERSE && pMWin->eStart==TK_UNBOUNDED ){
    FUNC1( regCountdown==0 && jumpOnEof==0 );
    return 0;
  }

  if( regCountdown>0 ){
    if( pMWin->eFrmType==TK_RANGE ){
      addrNextRange = FUNC11(v);
      FUNC1( op==WINDOW_AGGINVERSE || op==WINDOW_AGGSTEP );
      if( op==WINDOW_AGGINVERSE ){
        if( pMWin->eStart==TK_FOLLOWING ){
          FUNC16(
              p, OP_Le, p->current.csr, regCountdown, p->start.csr, lblDone
          );
        }else{
          FUNC16(
              p, OP_Ge, p->start.csr, regCountdown, p->current.csr, lblDone
          );
        }
      }else{
        FUNC16(
            p, OP_Gt, p->end.csr, regCountdown, p->current.csr, lblDone
        );
      }
    }else{
      FUNC9(v, OP_IfPos, regCountdown, lblDone, 1);
      FUNC0(v);
    }
  }

  if( op==WINDOW_RETURN_ROW && pMWin->regStartRowid==0 ){
    FUNC14(p, 0);
  }
  addrContinue = FUNC11(v);

  /* If this is a (RANGE BETWEEN a FOLLOWING AND b FOLLOWING) or
  ** (RANGE BETWEEN b PRECEDING AND a PRECEDING) frame, ensure the 
  ** start cursor does not advance past the end cursor within the 
  ** temporary table. It otherwise might, if (a>b).  */
  if( pMWin->eStart==pMWin->eEnd && regCountdown
   && pMWin->eFrmType==TK_RANGE && op==WINDOW_AGGINVERSE
  ){
    int regRowid1 = FUNC3(pParse);
    int regRowid2 = FUNC3(pParse);
    FUNC8(v, OP_Rowid, p->start.csr, regRowid1);
    FUNC8(v, OP_Rowid, p->end.csr, regRowid2);
    FUNC9(v, OP_Ge, regRowid2, lblDone, regRowid1);
    FUNC0(v);
    FUNC5(pParse, regRowid1);
    FUNC5(pParse, regRowid2);
    FUNC1( pMWin->eStart==TK_PRECEDING || pMWin->eStart==TK_FOLLOWING );
  }

  switch( op ){
    case WINDOW_RETURN_ROW:
      csr = p->current.csr;
      reg = p->current.reg;
      FUNC19(p);
      break;

    case WINDOW_AGGINVERSE:
      csr = p->start.csr;
      reg = p->start.reg;
      if( pMWin->regStartRowid ){
        FUNC1( pMWin->regEndRowid );
        FUNC8(v, OP_AddImm, pMWin->regStartRowid, 1);
      }else{
        FUNC15(p, pMWin, csr, 1, p->regArg);
      }
      break;

    default:
      FUNC1( op==WINDOW_AGGSTEP );
      csr = p->end.csr;
      reg = p->end.reg;
      if( pMWin->regStartRowid ){
        FUNC1( pMWin->regEndRowid );
        FUNC8(v, OP_AddImm, pMWin->regEndRowid, 1);
      }else{
        FUNC15(p, pMWin, csr, 0, p->regArg);
      }
      break;
  }

  if( op==p->eDelete ){
    FUNC7(v, OP_Delete, csr);
    FUNC10(v, OPFLAG_SAVEPOSITION);
  }

  if( jumpOnEof ){
    FUNC8(v, OP_Next, csr, FUNC11(v)+2);
    FUNC0(v);
    ret = FUNC6(v, OP_Goto);
  }else{
    FUNC8(v, OP_Next, csr, FUNC11(v)+1+bPeer);
    FUNC0(v);
    if( bPeer ){
      FUNC8(v, OP_Goto, 0, lblDone);
    }
  }

  if( bPeer ){
    int nReg = (pMWin->pOrderBy ? pMWin->pOrderBy->nExpr : 0);
    int regTmp = (nReg ? FUNC2(pParse, nReg) : 0);
    FUNC18(p, csr, regTmp);
    FUNC17(pParse, pMWin->pOrderBy, regTmp, reg, addrContinue);
    FUNC4(pParse, regTmp, nReg);
  }

  if( addrNextRange ){
    FUNC8(v, OP_Goto, 0, addrNextRange);
  }
  FUNC13(v, lblDone);
  return ret;
}