
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pEnd; int pStart; int pFilter; int pPartition; int pOrderBy; struct TYPE_3__* pNextWin; } ;
typedef TYPE_1__ Window ;
typedef int Walker ;


 scalar_t__ NEVER (int) ;
 int WRC_Abort ;
 int WRC_Continue ;
 int sqlite3WalkExpr (int *,int ) ;
 int sqlite3WalkExprList (int *,int ) ;

__attribute__((used)) static int walkWindowList(Walker *pWalker, Window *pList){
  Window *pWin;
  for(pWin=pList; pWin; pWin=pWin->pNextWin){
    int rc;
    rc = sqlite3WalkExprList(pWalker, pWin->pOrderBy);
    if( rc ) return WRC_Abort;
    rc = sqlite3WalkExprList(pWalker, pWin->pPartition);
    if( rc ) return WRC_Abort;
    rc = sqlite3WalkExpr(pWalker, pWin->pFilter);
    if( rc ) return WRC_Abort;





    rc = sqlite3WalkExpr(pWalker, pWin->pStart);
    if( NEVER(rc) ) return WRC_Abort;
    rc = sqlite3WalkExpr(pWalker, pWin->pEnd);
    if( NEVER(rc) ) return WRC_Abort;
  }
  return WRC_Continue;
}
