
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Window ;
typedef int Walker ;
struct TYPE_5__ {int * pWin; } ;
struct TYPE_6__ {TYPE_1__ y; } ;
typedef TYPE_2__ Expr ;


 int EP_WinFunc ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 int UNUSED_PARAMETER (int *) ;
 int WRC_Continue ;
 int sqlite3WindowUnlinkFromSelect (int *) ;

__attribute__((used)) static int resolveRemoveWindowsCb(Walker *pWalker, Expr *pExpr){
  UNUSED_PARAMETER(pWalker);
  if( ExprHasProperty(pExpr, EP_WinFunc) ){
    Window *pWin = pExpr->y.pWin;
    sqlite3WindowUnlinkFromSelect(pWin);
  }
  return WRC_Continue;
}
