
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bRun; char* zCandidates; TYPE_2__* pStatement; } ;
typedef TYPE_1__ sqlite3expert ;
struct TYPE_5__ {int iId; char* zSql; char* zIdx; char* zEQP; struct TYPE_5__* pNext; } ;
typedef TYPE_2__ IdxStatement ;







const char *sqlite3_expert_report(sqlite3expert *p, int iStmt, int eReport){
  const char *zRet = 0;
  IdxStatement *pStmt;

  if( p->bRun==0 ) return 0;
  for(pStmt=p->pStatement; pStmt && pStmt->iId!=iStmt; pStmt=pStmt->pNext);
  switch( eReport ){
    case 128:
      if( pStmt ) zRet = pStmt->zSql;
      break;
    case 130:
      if( pStmt ) zRet = pStmt->zIdx;
      break;
    case 129:
      if( pStmt ) zRet = pStmt->zEQP;
      break;
    case 131:
      zRet = p->zCandidates;
      break;
  }
  return zRet;
}
