
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_2__ {int pWalHook; int * db; int * interp; } ;
typedef TYPE_1__ SqliteDb ;


 int SQLITE_OK ;
 scalar_t__ TCL_OK ;
 int Tcl_BackgroundError (int *) ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int) ;
 scalar_t__ Tcl_EvalObjEx (int *,int *,int ) ;
 scalar_t__ Tcl_GetIntFromObj (int *,int ,int*) ;
 int Tcl_GetObjResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int ) ;
 int Tcl_NewIntObj (int) ;
 int Tcl_NewStringObj (char const*,int) ;
 int assert (int) ;

__attribute__((used)) static int DbWalHandler(
  void *clientData,
  sqlite3 *db,
  const char *zDb,
  int nEntry
){
  int ret = SQLITE_OK;
  Tcl_Obj *p;
  SqliteDb *pDb = (SqliteDb*)clientData;
  Tcl_Interp *interp = pDb->interp;
  assert(pDb->pWalHook);

  assert( db==pDb->db );
  p = Tcl_DuplicateObj(pDb->pWalHook);
  Tcl_IncrRefCount(p);
  Tcl_ListObjAppendElement(interp, p, Tcl_NewStringObj(zDb, -1));
  Tcl_ListObjAppendElement(interp, p, Tcl_NewIntObj(nEntry));
  if( TCL_OK!=Tcl_EvalObjEx(interp, p, 0)
   || TCL_OK!=Tcl_GetIntFromObj(interp, Tcl_GetObjResult(interp), &ret)
  ){
    Tcl_BackgroundError(interp);
  }
  Tcl_DecrRefCount(p);

  return ret;
}
