
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zVal ;
struct TYPE_2__ {int interp; int zBusy; } ;
typedef TYPE_1__ SqliteDb ;


 int TCL_OK ;
 int Tcl_GetStringResult (int ) ;
 int Tcl_VarEval (int ,int ,char*,char*,char*) ;
 scalar_t__ atoi (int ) ;
 int sqlite3_snprintf (int,char*,char*,int) ;

__attribute__((used)) static int DbBusyHandler(void *cd, int nTries){
  SqliteDb *pDb = (SqliteDb*)cd;
  int rc;
  char zVal[30];

  sqlite3_snprintf(sizeof(zVal), zVal, "%d", nTries);
  rc = Tcl_VarEval(pDb->interp, pDb->zBusy, " ", zVal, (char*)0);
  if( rc!=TCL_OK || atoi(Tcl_GetStringResult(pDb->interp)) ){
    return 0;
  }
  return 1;
}
