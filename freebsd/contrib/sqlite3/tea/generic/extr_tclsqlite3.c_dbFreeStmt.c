
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStmt; scalar_t__ zSql; } ;
typedef TYPE_1__ SqlPreparedStmt ;


 int Tcl_Free (char*) ;
 int sqlite3_finalize (int ) ;
 scalar_t__ sqlite3_sql (int ) ;

__attribute__((used)) static void dbFreeStmt(SqlPreparedStmt *pStmt){





  sqlite3_finalize(pStmt->pStmt);
  Tcl_Free((char *)pStmt);
}
