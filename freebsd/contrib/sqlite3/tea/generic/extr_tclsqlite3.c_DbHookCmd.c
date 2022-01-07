
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_7__ {scalar_t__ pWalHook; scalar_t__ pRollbackHook; scalar_t__ pUpdateHook; scalar_t__ pPreUpdateHook; int * db; } ;
typedef TYPE_1__ SqliteDb ;


 int DbPreUpdateHandler ;
 int DbRollbackHandler ;
 int DbUpdateHandler ;
 int DbWalHandler ;
 int Tcl_DecrRefCount (int *) ;
 scalar_t__ Tcl_GetCharLength (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_SetObjResult (int *,int *) ;
 int assert (int) ;
 int sqlite3_preupdate_hook (int *,int ,TYPE_1__*) ;
 int sqlite3_rollback_hook (int *,int ,TYPE_1__*) ;
 int sqlite3_update_hook (int *,int ,TYPE_1__*) ;
 int sqlite3_wal_hook (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void DbHookCmd(
  Tcl_Interp *interp,
  SqliteDb *pDb,
  Tcl_Obj *pArg,
  Tcl_Obj **ppHook
){
  sqlite3 *db = pDb->db;

  if( *ppHook ){
    Tcl_SetObjResult(interp, *ppHook);
    if( pArg ){
      Tcl_DecrRefCount(*ppHook);
      *ppHook = 0;
    }
  }
  if( pArg ){
    assert( !(*ppHook) );
    if( Tcl_GetCharLength(pArg)>0 ){
      *ppHook = pArg;
      Tcl_IncrRefCount(*ppHook);
    }
  }




  sqlite3_update_hook(db, (pDb->pUpdateHook?DbUpdateHandler:0), pDb);
  sqlite3_rollback_hook(db, (pDb->pRollbackHook?DbRollbackHandler:0), pDb);
  sqlite3_wal_hook(db, (pDb->pWalHook?DbWalHandler:0), pDb);
}
