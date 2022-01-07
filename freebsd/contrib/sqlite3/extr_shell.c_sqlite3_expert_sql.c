
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pStatement; int * pScan; int dbv; scalar_t__ bRun; } ;
typedef TYPE_1__ sqlite3expert ;
typedef int sqlite3_stmt ;
struct TYPE_7__ {char* zSql; scalar_t__ iId; struct TYPE_7__* pNext; } ;
typedef TYPE_2__ IdxStatement ;
typedef int IdxScan ;


 int SQLITE_MISUSE ;
 int SQLITE_OK ;
 int STRLEN (char const*) ;
 int idxDatabaseError (int ,char**) ;
 scalar_t__ idxMalloc (int*,int) ;
 int idxScanFree (int *,int *) ;
 int idxStatementFree (TYPE_2__*,TYPE_2__*) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int **,char const**) ;
 char* sqlite3_sql (int *) ;

int sqlite3_expert_sql(
  sqlite3expert *p,
  const char *zSql,
  char **pzErr
){
  IdxScan *pScanOrig = p->pScan;
  IdxStatement *pStmtOrig = p->pStatement;
  int rc = SQLITE_OK;
  const char *zStmt = zSql;

  if( p->bRun ) return SQLITE_MISUSE;

  while( rc==SQLITE_OK && zStmt && zStmt[0] ){
    sqlite3_stmt *pStmt = 0;
    rc = sqlite3_prepare_v2(p->dbv, zStmt, -1, &pStmt, &zStmt);
    if( rc==SQLITE_OK ){
      if( pStmt ){
        IdxStatement *pNew;
        const char *z = sqlite3_sql(pStmt);
        int n = STRLEN(z);
        pNew = (IdxStatement*)idxMalloc(&rc, sizeof(IdxStatement) + n+1);
        if( rc==SQLITE_OK ){
          pNew->zSql = (char*)&pNew[1];
          memcpy(pNew->zSql, z, n+1);
          pNew->pNext = p->pStatement;
          if( p->pStatement ) pNew->iId = p->pStatement->iId+1;
          p->pStatement = pNew;
        }
        sqlite3_finalize(pStmt);
      }
    }else{
      idxDatabaseError(p->dbv, pzErr);
    }
  }

  if( rc!=SQLITE_OK ){
    idxScanFree(p->pScan, pScanOrig);
    idxStatementFree(p->pStatement, pStmtOrig);
    p->pScan = pScanOrig;
    p->pStatement = pStmtOrig;
  }

  return rc;
}
