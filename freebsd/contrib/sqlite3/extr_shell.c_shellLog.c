
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pLog; } ;
typedef TYPE_1__ ShellState ;


 int fflush (scalar_t__) ;
 int utf8_printf (scalar_t__,char*,int,char const*) ;

__attribute__((used)) static void shellLog(void *pArg, int iErrCode, const char *zMsg){
  ShellState *p = (ShellState*)pArg;
  if( p->pLog==0 ) return;
  utf8_printf(p->pLog, "(%d) %s\n", iErrCode, zMsg);
  fflush(p->pLog);
}
