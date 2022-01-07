
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int pRename; int zErrMsg; int pNewTrigger; TYPE_2__* pNewIndex; int pNewTable; scalar_t__ pVdbe; int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Index ;


 int renameTokenFree (int *,int ) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3DeleteTable (int *,int ) ;
 int sqlite3DeleteTrigger (int *,int ) ;
 int sqlite3FreeIndex (int *,TYPE_2__*) ;
 int sqlite3ParserReset (TYPE_1__*) ;
 int sqlite3VdbeFinalize (scalar_t__) ;

__attribute__((used)) static void renameParseCleanup(Parse *pParse){
  sqlite3 *db = pParse->db;
  Index *pIdx;
  if( pParse->pVdbe ){
    sqlite3VdbeFinalize(pParse->pVdbe);
  }
  sqlite3DeleteTable(db, pParse->pNewTable);
  while( (pIdx = pParse->pNewIndex)!=0 ){
    pParse->pNewIndex = pIdx->pNext;
    sqlite3FreeIndex(db, pIdx);
  }
  sqlite3DeleteTrigger(db, pParse->pNewTrigger);
  sqlite3DbFree(db, pParse->zErrMsg);
  renameTokenFree(db, pParse->pRename);
  sqlite3ParserReset(pParse);
}
