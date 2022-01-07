
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* pSelect; } ;
struct TYPE_8__ {TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
struct TYPE_9__ {scalar_t__ pWin; } ;
typedef TYPE_3__ Select ;
typedef int Expr ;


 int memset (TYPE_2__*,int ,int) ;
 int resolveRemoveWindowsCb ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static void windowRemoveExprFromSelect(Select *pSelect, Expr *pExpr){
  if( pSelect->pWin ){
    Walker sWalker;
    memset(&sWalker, 0, sizeof(Walker));
    sWalker.xExprCallback = resolveRemoveWindowsCb;
    sWalker.u.pSelect = pSelect;
    sqlite3WalkExpr(&sWalker, pExpr);
  }
}
