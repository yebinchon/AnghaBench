
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pParse; } ;
typedef TYPE_1__ Walker ;
typedef int Parse ;
typedef int Expr ;


 int WRC_Continue ;
 int sqlite3RenameTokenRemap (int *,int ,void*) ;

__attribute__((used)) static int renameUnmapExprCb(Walker *pWalker, Expr *pExpr){
  Parse *pParse = pWalker->pParse;
  sqlite3RenameTokenRemap(pParse, 0, (void*)pExpr);
  return WRC_Continue;
}
