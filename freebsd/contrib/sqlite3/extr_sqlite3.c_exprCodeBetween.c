
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_35__ {scalar_t__ mallocFailed; } ;
typedef TYPE_6__ sqlite3 ;
struct TYPE_32__ {TYPE_2__* pList; } ;
struct TYPE_34__ {int flags; TYPE_3__ x; struct TYPE_34__* pRight; struct TYPE_34__* pLeft; int op; } ;
struct TYPE_33__ {TYPE_6__* db; } ;
struct TYPE_31__ {TYPE_1__* a; } ;
struct TYPE_30__ {TYPE_5__* pExpr; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Expr ;


 int EP_FromJoin ;
 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_5__*,int ) ;
 int TK_AND ;
 int TK_GE ;
 int TK_LE ;
 int assert (int) ;
 int exprCodeVector (TYPE_4__*,TYPE_5__*,int*) ;
 int exprToRegister (TYPE_5__*,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int sqlite3ExprCodeTarget (TYPE_4__*,TYPE_5__*,int) ;
 int sqlite3ExprDelete (TYPE_6__*,TYPE_5__*) ;
 TYPE_5__* sqlite3ExprDup (TYPE_6__*,TYPE_5__*,int ) ;
 void sqlite3ExprIfFalse (TYPE_4__*,TYPE_5__*,int,int) ;
 void sqlite3ExprIfTrue (TYPE_4__*,TYPE_5__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_4__*,int) ;
 int testcase (int) ;

__attribute__((used)) static void exprCodeBetween(
  Parse *pParse,
  Expr *pExpr,
  int dest,
  void (*xJump)(Parse*,Expr*,int,int),
  int jumpIfNull
){
  Expr exprAnd;
  Expr compLeft;
  Expr compRight;
  int regFree1 = 0;
  Expr *pDel = 0;
  sqlite3 *db = pParse->db;

  memset(&compLeft, 0, sizeof(Expr));
  memset(&compRight, 0, sizeof(Expr));
  memset(&exprAnd, 0, sizeof(Expr));

  assert( !ExprHasProperty(pExpr, EP_xIsSelect) );
  pDel = sqlite3ExprDup(db, pExpr->pLeft, 0);
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
    exprToRegister(pDel, exprCodeVector(pParse, pDel, &regFree1));
    if( xJump ){
      xJump(pParse, &exprAnd, dest, jumpIfNull);
    }else{





      pDel->flags |= EP_FromJoin;
      sqlite3ExprCodeTarget(pParse, &exprAnd, dest);
    }
    sqlite3ReleaseTempReg(pParse, regFree1);
  }
  sqlite3ExprDelete(db, pDel);


  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull==0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull==0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull!=0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfTrue && jumpIfNull!=0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull==0 && regFree1!=0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1==0 );
  testcase( xJump==sqlite3ExprIfFalse && jumpIfNull!=0 && regFree1!=0 );
  testcase( xJump==0 );
}
