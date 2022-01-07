
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ pData; } ;
typedef TYPE_1__ ExpertCsr ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (scalar_t__) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static int expertNext(sqlite3_vtab_cursor *cur){
  ExpertCsr *pCsr = (ExpertCsr*)cur;
  int rc = SQLITE_OK;

  assert( pCsr->pData );
  rc = sqlite3_step(pCsr->pData);
  if( rc!=SQLITE_ROW ){
    rc = sqlite3_finalize(pCsr->pData);
    pCsr->pData = 0;
  }else{
    rc = SQLITE_OK;
  }

  return rc;
}
