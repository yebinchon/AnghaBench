
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zTm ;
typedef int sqlite_uint64 ;
typedef int Tcl_DString ;
struct TYPE_2__ {int interp; int zProfile; } ;
typedef TYPE_1__ SqliteDb ;


 int Tcl_DStringAppend (int *,int ,int) ;
 int Tcl_DStringAppendElement (int *,char const*) ;
 int Tcl_DStringFree (int *) ;
 int Tcl_DStringInit (int *) ;
 int Tcl_DStringValue (int *) ;
 int Tcl_Eval (int ,int ) ;
 int Tcl_ResetResult (int ) ;
 int sqlite3_snprintf (int,char*,char*,int ) ;

__attribute__((used)) static void DbProfileHandler(void *cd, const char *zSql, sqlite_uint64 tm){
  SqliteDb *pDb = (SqliteDb*)cd;
  Tcl_DString str;
  char zTm[100];

  sqlite3_snprintf(sizeof(zTm)-1, zTm, "%lld", tm);
  Tcl_DStringInit(&str);
  Tcl_DStringAppend(&str, pDb->zProfile, -1);
  Tcl_DStringAppendElement(&str, zSql);
  Tcl_DStringAppendElement(&str, zTm);
  Tcl_Eval(pDb->interp, Tcl_DStringValue(&str));
  Tcl_DStringFree(&str);
  Tcl_ResetResult(pDb->interp);
}
