#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* pMWin; TYPE_4__* pParse; } ;
typedef  TYPE_3__ WindowCodeArg ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_15__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_14__ {int nMem; } ;
struct TYPE_12__ {int sortFlags; } ;
struct TYPE_11__ {TYPE_5__* pOrderBy; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;

/* Variables and functions */
 int KEYINFO_ORDER_BIGNULL ; 
 int KEYINFO_ORDER_DESC ; 
 int OP_Add ; 
#define  OP_Ge 130 
 int /*<<< orphan*/  OP_Goto ; 
#define  OP_Gt 129 
 int /*<<< orphan*/  OP_IsNull ; 
#define  OP_Le 128 
 int OP_Lt ; 
 int /*<<< orphan*/  OP_NotNull ; 
 int /*<<< orphan*/  OP_String8 ; 
 int OP_Subtract ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int /*<<< orphan*/  SQLITE_NULLEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int,int) ; 

__attribute__((used)) static void FUNC17(
  WindowCodeArg *p, 
  int op,                         /* OP_Ge, OP_Gt, or OP_Le */
  int csr1,                       /* Cursor number for cursor 1 */
  int regVal,                     /* Register containing non-negative number */
  int csr2,                       /* Cursor number for cursor 2 */
  int lbl                         /* Jump destination if condition is true */
){
  Parse *pParse = p->pParse;
  Vdbe *v = FUNC5(pParse);
  ExprList *pOrderBy = p->pMWin->pOrderBy;  /* ORDER BY clause for window */
  int reg1 = FUNC4(pParse);     /* Reg. for csr1.peerVal+regVal */
  int reg2 = FUNC4(pParse);     /* Reg. for csr2.peerVal */
  int regString = ++pParse->nMem;           /* Reg. for constant value '' */
  int arith = OP_Add;                       /* OP_Add or OP_Subtract */
  int addrGe;                               /* Jump destination */

  FUNC3( op==OP_Ge || op==OP_Gt || op==OP_Le );
  FUNC3( pOrderBy && pOrderBy->nExpr==1 );
  if( pOrderBy->a[0].sortFlags & KEYINFO_ORDER_DESC ){
    switch( op ){
      case OP_Ge: op = OP_Le; break;
      case OP_Gt: op = OP_Lt; break;
      default: FUNC3( op==OP_Le ); op = OP_Ge; break;
    }
    arith = OP_Subtract;
  }

  /* Read the peer-value from each cursor into a register */
  FUNC16(p, csr1, reg1);
  FUNC16(p, csr2, reg2);

  FUNC2((v, "CodeRangeTest: if( R%d %s R%d %s R%d ) goto lbl",
      reg1, (arith==OP_Add ? "+" : "-"), regVal,
      ((op==OP_Ge) ? ">=" : (op==OP_Le) ? "<=" : (op==OP_Gt) ? ">" : "<"), reg2
  ));

  /* Register reg1 currently contains csr1.peerVal (the peer-value from csr1).
  ** This block adds (or subtracts for DESC) the numeric value in regVal
  ** from it. Or, if reg1 is not numeric (it is a NULL, a text value or a blob),
  ** then leave reg1 as it is. In pseudo-code, this is implemented as:
  **
  **   if( reg1>='' ) goto addrGe;
  **   reg1 = reg1 +/- regVal
  **   addrGe:
  **
  ** Since all strings and blobs are greater-than-or-equal-to an empty string,
  ** the add/subtract is skipped for these, as required. If reg1 is a NULL,
  ** then the arithmetic is performed, but since adding or subtracting from
  ** NULL is always NULL anyway, this case is handled as required too.  */
  FUNC10(v, OP_String8, 0, regString, 0, "", P4_STATIC);
  addrGe = FUNC9(v, OP_Ge, regString, 0, reg1);
  FUNC0(v);
  FUNC9(v, arith, regVal, reg1, reg1);
  FUNC14(v, addrGe);

  /* If the BIGNULL flag is set for the ORDER BY, then it is required to 
  ** consider NULL values to be larger than all other values, instead of 
  ** the usual smaller. The VDBE opcodes OP_Ge and so on do not handle this
  ** (and adding that capability causes a performance regression), so
  ** instead if the BIGNULL flag is set then cases where either reg1 or
  ** reg2 are NULL are handled separately in the following block. The code
  ** generated is equivalent to:
  **
  **   if( reg1 IS NULL ){
  **     if( op==OP_Ge ) goto lbl;
  **     if( op==OP_Gt && reg2 IS NOT NULL ) goto lbl;
  **     if( op==OP_Le && reg2 IS NULL ) goto lbl;
  **   }else if( reg2 IS NULL ){
  **     if( op==OP_Le ) goto lbl;
  **   }
  **
  ** Additionally, if either reg1 or reg2 are NULL but the jump to lbl is 
  ** not taken, control jumps over the comparison operator coded below this
  ** block.  */
  if( pOrderBy->a[0].sortFlags & KEYINFO_ORDER_BIGNULL ){
    /* This block runs if reg1 contains a NULL. */
    int addr = FUNC7(v, OP_NotNull, reg1); FUNC0(v);
    switch( op ){
      case OP_Ge: 
        FUNC8(v, OP_Goto, 0, lbl); 
        break;
      case OP_Gt: 
        FUNC8(v, OP_NotNull, reg2, lbl); 
        FUNC0(v); 
        break;
      case OP_Le: 
        FUNC8(v, OP_IsNull, reg2, lbl); 
        FUNC0(v); 
        break;
      default: FUNC3( op==OP_Lt ); /* no-op */ break;
    }
    FUNC8(v, OP_Goto, 0, FUNC13(v)+3);

    /* This block runs if reg1 is not NULL, but reg2 is. */
    FUNC14(v, addr);
    FUNC8(v, OP_IsNull, reg2, lbl); FUNC0(v);
    if( op==OP_Gt || op==OP_Ge ){
      FUNC11(v, -1, FUNC13(v)+1);
    }
  }

  /* Compare registers reg2 and reg1, taking the jump if required. Note that
  ** control skips over this test if the BIGNULL flag is set and either
  ** reg1 or reg2 contain a NULL value.  */
  FUNC9(v, op, reg2, lbl, reg1); FUNC0(v);
  FUNC12(v, SQLITE_NULLEQ);

  FUNC3( op==OP_Ge || op==OP_Gt || op==OP_Lt || op==OP_Le );
  FUNC15(op==OP_Ge); FUNC1(v, op==OP_Ge);
  FUNC15(op==OP_Lt); FUNC1(v, op==OP_Lt);
  FUNC15(op==OP_Le); FUNC1(v, op==OP_Le);
  FUNC15(op==OP_Gt); FUNC1(v, op==OP_Gt);
  FUNC6(pParse, reg1);
  FUNC6(pParse, reg2);

  FUNC2((v, "CodeRangeTest: end"));
}