
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Tcl_Obj ;
struct TYPE_2__ {void const* zScript; int interp; } ;
typedef TYPE_1__ SqlCollate ;


 int TCL_EVAL_DIRECT ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_EvalObjEx (int ,int *,int ) ;
 int Tcl_GetStringResult (int ) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int *) ;
 int * Tcl_NewStringObj (void const*,int) ;
 int atoi (int ) ;

__attribute__((used)) static int tclSqlCollate(
  void *pCtx,
  int nA,
  const void *zA,
  int nB,
  const void *zB
){
  SqlCollate *p = (SqlCollate *)pCtx;
  Tcl_Obj *pCmd;

  pCmd = Tcl_NewStringObj(p->zScript, -1);
  Tcl_IncrRefCount(pCmd);
  Tcl_ListObjAppendElement(p->interp, pCmd, Tcl_NewStringObj(zA, nA));
  Tcl_ListObjAppendElement(p->interp, pCmd, Tcl_NewStringObj(zB, nB));
  Tcl_EvalObjEx(p->interp, pCmd, TCL_EVAL_DIRECT);
  Tcl_DecrRefCount(pCmd);
  return (atoi(Tcl_GetStringResult(p->interp)));
}
