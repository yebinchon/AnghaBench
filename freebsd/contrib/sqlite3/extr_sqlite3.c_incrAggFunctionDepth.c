
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int w ;
struct TYPE_5__ {int n; } ;
struct TYPE_6__ {TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Expr ;


 int incrAggDepth ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static void incrAggFunctionDepth(Expr *pExpr, int N){
  if( N>0 ){
    Walker w;
    memset(&w, 0, sizeof(w));
    w.xExprCallback = incrAggDepth;
    w.u.n = N;
    sqlite3WalkExpr(&w, pExpr);
  }
}
