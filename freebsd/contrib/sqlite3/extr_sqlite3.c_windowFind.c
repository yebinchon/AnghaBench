
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zName; struct TYPE_4__* pNextWin; } ;
typedef TYPE_1__ Window ;
typedef int Parse ;


 int sqlite3ErrorMsg (int *,char*,char const*) ;
 scalar_t__ sqlite3StrICmp (int ,char const*) ;

__attribute__((used)) static Window *windowFind(Parse *pParse, Window *pList, const char *zName){
  Window *p;
  for(p=pList; p; p=p->pNextWin){
    if( sqlite3StrICmp(p->zName, zName)==0 ) break;
  }
  if( p==0 ){
    sqlite3ErrorMsg(pParse, "no such window: %s", zName);
  }
  return p;
}
