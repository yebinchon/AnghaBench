
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {scalar_t__ pWin; int pWith; int pWinDefn; int pLimit; int pOrderBy; int pHaving; int pGroupBy; int pWhere; int pSrc; int pEList; struct TYPE_4__* pPrior; } ;
typedef TYPE_1__ Select ;


 scalar_t__ OK_IF_ALWAYS_TRUE (int ) ;
 int assert (int) ;
 int sqlite3DbFreeNN (int *,TYPE_1__*) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3ExprListDelete (int *,int ) ;
 int sqlite3SrcListDelete (int *,int ) ;
 int sqlite3WindowListDelete (int *,int ) ;
 int sqlite3WithDelete (int *,int ) ;

__attribute__((used)) static void clearSelect(sqlite3 *db, Select *p, int bFree){
  while( p ){
    Select *pPrior = p->pPrior;
    sqlite3ExprListDelete(db, p->pEList);
    sqlite3SrcListDelete(db, p->pSrc);
    sqlite3ExprDelete(db, p->pWhere);
    sqlite3ExprListDelete(db, p->pGroupBy);
    sqlite3ExprDelete(db, p->pHaving);
    sqlite3ExprListDelete(db, p->pOrderBy);
    sqlite3ExprDelete(db, p->pLimit);

    if( OK_IF_ALWAYS_TRUE(p->pWinDefn) ){
      sqlite3WindowListDelete(db, p->pWinDefn);
    }
    assert( p->pWin==0 );

    if( OK_IF_ALWAYS_TRUE(p->pWith) ) sqlite3WithDelete(db, p->pWith);
    if( bFree ) sqlite3DbFreeNN(db, p);
    p = pPrior;
    bFree = 1;
  }
}
