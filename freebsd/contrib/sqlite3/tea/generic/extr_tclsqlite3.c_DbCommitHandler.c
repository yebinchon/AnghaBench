
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interp; int zCommit; } ;
typedef TYPE_1__ SqliteDb ;


 int TCL_OK ;
 int Tcl_Eval (int ,int ) ;
 int Tcl_GetStringResult (int ) ;
 scalar_t__ atoi (int ) ;

__attribute__((used)) static int DbCommitHandler(void *cd){
  SqliteDb *pDb = (SqliteDb*)cd;
  int rc;

  rc = Tcl_Eval(pDb->interp, pDb->zCommit);
  if( rc!=TCL_OK || atoi(Tcl_GetStringResult(pDb->interp)) ){
    return 1;
  }
  return 0;
}
