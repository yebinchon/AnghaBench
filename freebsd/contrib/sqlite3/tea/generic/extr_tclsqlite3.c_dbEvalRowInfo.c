
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_7__ {int nCol; int ** apColName; scalar_t__ pArray; TYPE_2__* pDb; TYPE_1__* pPreStmt; } ;
struct TYPE_6__ {int * interp; } ;
struct TYPE_5__ {int * pStmt; } ;
typedef TYPE_3__ DbEvalContext ;


 scalar_t__ Tcl_Alloc (int) ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int * Tcl_NewObj () ;
 int * Tcl_NewStringObj (char*,int) ;
 int Tcl_ObjSetVar2 (int *,scalar_t__,int *,int *,int ) ;
 int sqlite3_column_count (int *) ;
 char* sqlite3_column_name (int *,int) ;

__attribute__((used)) static void dbEvalRowInfo(
  DbEvalContext *p,
  int *pnCol,
  Tcl_Obj ***papColName
){

  if( 0==p->apColName ){
    sqlite3_stmt *pStmt = p->pPreStmt->pStmt;
    int i;
    int nCol;
    Tcl_Obj **apColName = 0;

    p->nCol = nCol = sqlite3_column_count(pStmt);
    if( nCol>0 && (papColName || p->pArray) ){
      apColName = (Tcl_Obj**)Tcl_Alloc( sizeof(Tcl_Obj*)*nCol );
      for(i=0; i<nCol; i++){
        apColName[i] = Tcl_NewStringObj(sqlite3_column_name(pStmt,i), -1);
        Tcl_IncrRefCount(apColName[i]);
      }
      p->apColName = apColName;
    }




    if( p->pArray ){
      Tcl_Interp *interp = p->pDb->interp;
      Tcl_Obj *pColList = Tcl_NewObj();
      Tcl_Obj *pStar = Tcl_NewStringObj("*", -1);

      for(i=0; i<nCol; i++){
        Tcl_ListObjAppendElement(interp, pColList, apColName[i]);
      }
      Tcl_IncrRefCount(pStar);
      Tcl_ObjSetVar2(interp, p->pArray, pStar, pColList, 0);
      Tcl_DecrRefCount(pStar);
    }
  }

  if( papColName ){
    *papColName = p->apColName;
  }
  if( pnCol ){
    *pnCol = p->nCol;
  }
}
