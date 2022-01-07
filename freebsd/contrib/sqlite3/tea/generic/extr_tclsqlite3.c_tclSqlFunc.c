
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef int sqlite_int64 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Tcl_WideInt ;
struct TYPE_28__ {scalar_t__ bytes; TYPE_2__* typePtr; } ;
typedef TYPE_3__ Tcl_Obj ;
struct TYPE_29__ {int eType; int interp; int useEvalObjv; TYPE_1__* pDb; TYPE_3__* pScript; } ;
struct TYPE_27__ {char* name; } ;
struct TYPE_26__ {char* zNull; } ;
typedef TYPE_4__ SqlFunc ;






 int SQLITE_TEXT ;
 int SQLITE_TRANSIENT ;
 int TCL_EVAL_DIRECT ;
 int TCL_OK ;
 int TCL_RETURN ;
 int Tcl_DecrRefCount (TYPE_3__*) ;
 int Tcl_EvalObjEx (int ,TYPE_3__*,int ) ;
 unsigned char* Tcl_GetByteArrayFromObj (TYPE_3__*,int*) ;
 int Tcl_GetDoubleFromObj (int ,TYPE_3__*,double*) ;
 TYPE_3__* Tcl_GetObjResult (int ) ;
 int Tcl_GetString (TYPE_3__*) ;
 scalar_t__ Tcl_GetStringFromObj (TYPE_3__*,int*) ;
 int Tcl_GetStringResult (int ) ;
 int Tcl_GetWideIntFromObj (int ,TYPE_3__*,int *) ;
 int Tcl_IncrRefCount (TYPE_3__*) ;
 int Tcl_ListObjAppendElement (int ,TYPE_3__*,TYPE_3__*) ;
 scalar_t__ Tcl_ListObjGetElements (int ,TYPE_3__*,int*,TYPE_3__***) ;
 TYPE_3__* Tcl_NewByteArrayObj (int ,int) ;
 TYPE_3__* Tcl_NewDoubleObj (double) ;
 TYPE_3__* Tcl_NewIntObj (int) ;
 TYPE_3__* Tcl_NewListObj (int,TYPE_3__**) ;
 TYPE_3__* Tcl_NewStringObj (char*,int) ;
 TYPE_3__* Tcl_NewWideIntObj (int) ;
 int sqlite3_result_blob (int *,unsigned char*,int,int ) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_error (int *,int ,int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 TYPE_4__* sqlite3_user_data (int *) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 double sqlite3_value_double (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void tclSqlFunc(sqlite3_context *context, int argc, sqlite3_value**argv){
  SqlFunc *p = sqlite3_user_data(context);
  Tcl_Obj *pCmd;
  int i;
  int rc;

  if( argc==0 ){




    pCmd = p->pScript;
    Tcl_IncrRefCount(pCmd);
    rc = Tcl_EvalObjEx(p->interp, pCmd, 0);
    Tcl_DecrRefCount(pCmd);
  }else{
    Tcl_Obj **aArg;
    int nArg;
    if( Tcl_ListObjGetElements(p->interp, p->pScript, &nArg, &aArg) ){
      sqlite3_result_error(context, Tcl_GetStringResult(p->interp), -1);
      return;
    }
    pCmd = Tcl_NewListObj(nArg, aArg);
    Tcl_IncrRefCount(pCmd);
    for(i=0; i<argc; i++){
      sqlite3_value *pIn = argv[i];
      Tcl_Obj *pVal;


      switch( sqlite3_value_type(pIn) ){
        case 131: {
          int bytes = sqlite3_value_bytes(pIn);
          pVal = Tcl_NewByteArrayObj(sqlite3_value_blob(pIn), bytes);
          break;
        }
        case 129: {
          sqlite_int64 v = sqlite3_value_int64(pIn);
          if( v>=-2147483647 && v<=2147483647 ){
            pVal = Tcl_NewIntObj((int)v);
          }else{
            pVal = Tcl_NewWideIntObj(v);
          }
          break;
        }
        case 130: {
          double r = sqlite3_value_double(pIn);
          pVal = Tcl_NewDoubleObj(r);
          break;
        }
        case 128: {
          pVal = Tcl_NewStringObj(p->pDb->zNull, -1);
          break;
        }
        default: {
          int bytes = sqlite3_value_bytes(pIn);
          pVal = Tcl_NewStringObj((char *)sqlite3_value_text(pIn), bytes);
          break;
        }
      }
      rc = Tcl_ListObjAppendElement(p->interp, pCmd, pVal);
      if( rc ){
        Tcl_DecrRefCount(pCmd);
        sqlite3_result_error(context, Tcl_GetStringResult(p->interp), -1);
        return;
      }
    }
    if( !p->useEvalObjv ){



      Tcl_GetString(pCmd);
    }
    rc = Tcl_EvalObjEx(p->interp, pCmd, TCL_EVAL_DIRECT);
    Tcl_DecrRefCount(pCmd);
  }

  if( rc && rc!=TCL_RETURN ){
    sqlite3_result_error(context, Tcl_GetStringResult(p->interp), -1);
  }else{
    Tcl_Obj *pVar = Tcl_GetObjResult(p->interp);
    int n;
    u8 *data;
    const char *zType = (pVar->typePtr ? pVar->typePtr->name : "");
    char c = zType[0];
    int eType = p->eType;

    if( eType==128 ){
      if( c=='b' && strcmp(zType,"bytearray")==0 && pVar->bytes==0 ){


        eType = 131;
      }else if( (c=='b' && strcmp(zType,"boolean")==0)
             || (c=='w' && strcmp(zType,"wideInt")==0)
             || (c=='i' && strcmp(zType,"int")==0)
      ){
        eType = 129;
      }else if( c=='d' && strcmp(zType,"double")==0 ){
        eType = 130;
      }else{
        eType = SQLITE_TEXT;
      }
    }

    switch( eType ){
      case 131: {
        data = Tcl_GetByteArrayFromObj(pVar, &n);
        sqlite3_result_blob(context, data, n, SQLITE_TRANSIENT);
        break;
      }
      case 129: {
        Tcl_WideInt v;
        if( TCL_OK==Tcl_GetWideIntFromObj(0, pVar, &v) ){
          sqlite3_result_int64(context, v);
          break;
        }

      }
      case 130: {
        double r;
        if( TCL_OK==Tcl_GetDoubleFromObj(0, pVar, &r) ){
          sqlite3_result_double(context, r);
          break;
        }

      }
      default: {
        data = (unsigned char *)Tcl_GetStringFromObj(pVar, &n);
        sqlite3_result_text(context, (char *)data, n, SQLITE_TRANSIENT);
        break;
      }
    }

  }
}
