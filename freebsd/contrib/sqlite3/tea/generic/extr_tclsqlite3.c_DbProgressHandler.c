
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interp; int zProgress; } ;
typedef TYPE_1__ SqliteDb ;


 int TCL_OK ;
 int Tcl_Eval (int ,int ) ;
 int Tcl_GetStringResult (int ) ;
 int assert (int ) ;
 scalar_t__ atoi (int ) ;

__attribute__((used)) static int DbProgressHandler(void *cd){
  SqliteDb *pDb = (SqliteDb*)cd;
  int rc;

  assert( pDb->zProgress );
  rc = Tcl_Eval(pDb->interp, pDb->zProgress);
  if( rc!=TCL_OK || atoi(Tcl_GetStringResult(pDb->interp)) ){
    return 1;
  }
  return 0;
}
