
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_8__ {int iColumn; } ;
struct TYPE_7__ {int pReprepare; int pVdbe; int db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int SQLITE_AFF_BLOB ;
 scalar_t__ SQLITE_TEXT ;
 int SQLITE_UTF8 ;
 scalar_t__ sqlite3MemCompare (int *,int *,int ) ;
 int sqlite3ValueFree (int *) ;
 int sqlite3ValueFromExpr (int ,TYPE_2__*,int ,int ,int **) ;
 int * sqlite3VdbeGetBoundValue (int ,int,int ) ;
 int sqlite3VdbeSetVarmask (int ,int) ;
 int sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int exprCompareVariable(Parse *pParse, Expr *pVar, Expr *pExpr){
  int res = 0;
  int iVar;
  sqlite3_value *pL, *pR = 0;

  sqlite3ValueFromExpr(pParse->db, pExpr, SQLITE_UTF8, SQLITE_AFF_BLOB, &pR);
  if( pR ){
    iVar = pVar->iColumn;
    sqlite3VdbeSetVarmask(pParse->pVdbe, iVar);
    pL = sqlite3VdbeGetBoundValue(pParse->pReprepare, iVar, SQLITE_AFF_BLOB);
    if( pL ){
      if( sqlite3_value_type(pL)==SQLITE_TEXT ){
        sqlite3_value_text(pL);
      }
      res = 0==sqlite3MemCompare(pL, pR, 0);
    }
    sqlite3ValueFree(pR);
    sqlite3ValueFree(pL);
  }

  return res;
}
