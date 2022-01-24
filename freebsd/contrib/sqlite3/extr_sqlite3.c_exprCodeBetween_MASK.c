#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_6__ sqlite3 ;
struct TYPE_32__ {TYPE_2__* pList; } ;
struct TYPE_34__ {int /*<<< orphan*/  flags; TYPE_3__ x; struct TYPE_34__* pRight; struct TYPE_34__* pLeft; int /*<<< orphan*/  op; } ;
struct TYPE_33__ {TYPE_6__* db; } ;
struct TYPE_31__ {TYPE_1__* a; } ;
struct TYPE_30__ {TYPE_5__* pExpr; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TK_AND ; 
 int /*<<< orphan*/  TK_GE ; 
 int /*<<< orphan*/  TK_LE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_5__* FUNC7 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 void FUNC8 (TYPE_4__*,TYPE_5__*,int,int) ; 
 void FUNC9 (TYPE_4__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(
  Parse *pParse,    /* Parsing and code generating context */
  Expr *pExpr,      /* The BETWEEN expression */
  int dest,         /* Jump destination or storage location */
  void (*xJump)(Parse*,Expr*,int,int), /* Action to take */
  int jumpIfNull    /* Take the jump if the BETWEEN is NULL */
){
  Expr exprAnd;     /* The AND operator in  x>=y AND x<=z  */
  Expr compLeft;    /* The  x>=y  term */
  Expr compRight;   /* The  x<=z  term */
  int regFree1 = 0; /* Temporary use register */
  Expr *pDel = 0;
  sqlite3 *db = pParse->db;

  FUNC4(&compLeft, 0, sizeof(Expr));
  FUNC4(&compRight, 0, sizeof(Expr));
  FUNC4(&exprAnd, 0, sizeof(Expr));

  FUNC1( !FUNC0(pExpr, EP_xIsSelect) );
  pDel = FUNC7(db, pExpr->pLeft, 0);
  if( db->mallocFailed==0 ){
    exprAnd.op = TK_AND;
    exprAnd.pLeft = &compLeft;
    exprAnd.pRight = &compRight;
    compLeft.op = TK_GE;
    compLeft.pLeft = pDel;
    compLeft.pRight = pExpr->x.pList->a[0].pExpr;
    compRight.op = TK_LE;
    compRight.pLeft = pDel;
    compRight.pRight = pExpr->x.pList->a[1].pExpr;
    FUNC3(pDel, FUNC2(pParse, pDel, &regFree1));
    if( xJump ){
      xJump(pParse, &exprAnd, dest, jumpIfNull);
    }else{
      /* Mark the expression is being from the ON or USING clause of a join
      ** so that the sqlite3ExprCodeTarget() routine will not attempt to move
      ** it into the Parse.pConstExpr list.  We should use a new bit for this,
      ** for clarity, but we are out of bits in the Expr.flags field so we
      ** have to reuse the EP_FromJoin bit.  Bummer. */
      pDel->flags |= EP_FromJoin;
      FUNC5(pParse, &exprAnd, dest);
    }
    FUNC10(pParse, regFree1);
  }
  FUNC6(db, pDel);

  /* Ensure adequate test coverage */
  FUNC11( xJump==sqlite3ExprIfTrue  && jumpIfNull==0 && regFree1==0 );
  FUNC11( xJump==sqlite3ExprIfTrue  && jumpIfNull==0 && regFree1!=0 );
  FUNC11( xJump==sqlite3ExprIfTrue  && jumpIfNull!=0 && regFree1==0 );
  FUNC11( xJump==sqlite3ExprIfTrue  && jumpIfNull!=0 && regFree1!=0 );
  FUNC11( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1==0 );
  FUNC11( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1!=0 );
  FUNC11( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1==0 );
  FUNC11( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1!=0 );
  FUNC11( xJump==0 );
}