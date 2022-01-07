
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pStmt; } ;
struct TYPE_5__ {scalar_t__ pSql; scalar_t__ pArray; TYPE_2__* pPreStmt; int pDb; } ;
typedef TYPE_1__ DbEvalContext ;


 int Tcl_DecrRefCount (scalar_t__) ;
 int dbReleaseColumnNames (TYPE_1__*) ;
 int dbReleaseStmt (int ,TYPE_2__*,int ) ;
 int sqlite3_reset (int ) ;

__attribute__((used)) static void dbEvalFinalize(DbEvalContext *p){
  if( p->pPreStmt ){
    sqlite3_reset(p->pPreStmt->pStmt);
    dbReleaseStmt(p->pDb, p->pPreStmt, 0);
    p->pPreStmt = 0;
  }
  if( p->pArray ){
    Tcl_DecrRefCount(p->pArray);
    p->pArray = 0;
  }
  Tcl_DecrRefCount(p->pSql);
  dbReleaseColumnNames(p);
}
