
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iCur; } ;
struct TYPE_5__ {int eCode; TYPE_1__ u; int xSelectCallback2; int xSelectCallback; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Expr ;


 int exprNodeIsConstant ;
 int sqlite3SelectWalkAssert2 ;
 int sqlite3SelectWalkFail ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static int exprIsConst(Expr *p, int initFlag, int iCur){
  Walker w;
  w.eCode = initFlag;
  w.xExprCallback = exprNodeIsConstant;
  w.xSelectCallback = sqlite3SelectWalkFail;



  w.u.iCur = iCur;
  sqlite3WalkExpr(&w, p);
  return w.eCode;
}
