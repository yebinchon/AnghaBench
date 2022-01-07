
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int Sqlite3_Init (int *) ;

int Sqlite_Init(Tcl_Interp *interp){ return Sqlite3_Init(interp); }
