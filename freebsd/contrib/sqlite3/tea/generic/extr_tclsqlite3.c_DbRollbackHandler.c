
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interp; int pRollbackHook; } ;
typedef TYPE_1__ SqliteDb ;


 scalar_t__ TCL_OK ;
 int Tcl_BackgroundError (int ) ;
 scalar_t__ Tcl_EvalObjEx (int ,int ,int ) ;
 int assert (int ) ;

__attribute__((used)) static void DbRollbackHandler(void *clientData){
  SqliteDb *pDb = (SqliteDb*)clientData;
  assert(pDb->pRollbackHook);
  if( TCL_OK!=Tcl_EvalObjEx(pDb->interp, pDb->pRollbackHook, 0) ){
    Tcl_BackgroundError(pDb->interp);
  }
}
