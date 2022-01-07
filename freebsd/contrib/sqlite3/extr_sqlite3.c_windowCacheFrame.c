
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pFunc; struct TYPE_4__* pNextWin; scalar_t__ regStartRowid; } ;
typedef TYPE_1__ Window ;
struct TYPE_5__ {scalar_t__ zName; } ;
typedef TYPE_2__ FuncDef ;


 scalar_t__ first_valueName ;
 scalar_t__ lagName ;
 scalar_t__ leadName ;
 scalar_t__ nth_valueName ;

__attribute__((used)) static int windowCacheFrame(Window *pMWin){
  Window *pWin;
  if( pMWin->regStartRowid ) return 1;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *pFunc = pWin->pFunc;
    if( (pFunc->zName==nth_valueName)
     || (pFunc->zName==first_valueName)
     || (pFunc->zName==leadName)
     || (pFunc->zName==lagName)
    ){
      return 1;
    }
  }
  return 0;
}
