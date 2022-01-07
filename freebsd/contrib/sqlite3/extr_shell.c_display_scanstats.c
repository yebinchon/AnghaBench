
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_6__ {int out; int * pStmt; } ;
typedef TYPE_1__ sqlite3 ;
typedef TYPE_1__ ShellState ;


 int SQLITE_SCANSTAT_EST ;
 int SQLITE_SCANSTAT_EXPLAIN ;
 int SQLITE_SCANSTAT_NLOOP ;
 int SQLITE_SCANSTAT_NVISIT ;
 int SQLITE_SCANSTAT_SELECTID ;
 int UNUSED_PARAMETER (TYPE_1__*) ;
 int raw_printf (int ,char*,...) ;
 scalar_t__ sqlite3_stmt_scanstatus (int *,int,int ,void*) ;
 int utf8_printf (int ,char*,int,char const*) ;

__attribute__((used)) static void display_scanstats(
  sqlite3 *db,
  ShellState *pArg
){

  UNUSED_PARAMETER(db);
  UNUSED_PARAMETER(pArg);
}
