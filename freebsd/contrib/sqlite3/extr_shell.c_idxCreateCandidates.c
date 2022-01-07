
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pScan; } ;
typedef TYPE_1__ sqlite3expert ;
struct TYPE_7__ {scalar_t__ pOrder; struct TYPE_7__* pNextScan; } ;
typedef TYPE_2__ IdxScan ;


 int SQLITE_OK ;
 int idxCreateFromWhere (TYPE_1__*,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int idxCreateCandidates(sqlite3expert *p){
  int rc = SQLITE_OK;
  IdxScan *pIter;

  for(pIter=p->pScan; pIter && rc==SQLITE_OK; pIter=pIter->pNextScan){
    rc = idxCreateFromWhere(p, pIter, 0);
    if( rc==SQLITE_OK && pIter->pOrder ){
      rc = idxCreateFromWhere(p, pIter, pIter->pOrder);
    }
  }

  return rc;
}
