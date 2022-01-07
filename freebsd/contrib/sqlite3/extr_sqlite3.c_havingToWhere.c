
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sWalker ;
struct TYPE_9__ {TYPE_3__* pSelect; } ;
struct TYPE_10__ {scalar_t__ eCode; TYPE_1__ u; int xExprCallback; int * pParse; } ;
typedef TYPE_2__ Walker ;
struct TYPE_11__ {int pHaving; } ;
typedef TYPE_3__ Select ;
typedef int Parse ;


 int SELECTTRACE (int,int *,TYPE_3__*,char*) ;
 int havingToWhereExprCb ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3SelectTrace ;
 int sqlite3TreeViewSelect (int ,TYPE_3__*,int ) ;
 int sqlite3WalkExpr (TYPE_2__*,int ) ;

__attribute__((used)) static void havingToWhere(Parse *pParse, Select *p){
  Walker sWalker;
  memset(&sWalker, 0, sizeof(sWalker));
  sWalker.pParse = pParse;
  sWalker.xExprCallback = havingToWhereExprCb;
  sWalker.u.pSelect = p;
  sqlite3WalkExpr(&sWalker, p->pHaving);






}
