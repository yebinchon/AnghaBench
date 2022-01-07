
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_stmt ;
struct TYPE_2__ {int ePhase; char const* zCurrentRow; scalar_t__ szRow; scalar_t__ pStmt; scalar_t__ nPrefix; int zPrefix; int db; int j; int iRowid; } ;
typedef TYPE_1__ completion_cursor ;




 int COMPLETION_EOF ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ sqlite3_column_bytes (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 int sqlite3_keyword_count () ;
 int sqlite3_keyword_name (int ,char const**,scalar_t__*) ;
 char* sqlite3_mprintf (char*,char*,char const*,char const*,...) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (int ,char const*,scalar_t__) ;

__attribute__((used)) static int completionNext(sqlite3_vtab_cursor *cur){
  completion_cursor *pCur = (completion_cursor*)cur;
  int eNextPhase = 0;
  int iCol = -1;
  pCur->iRowid++;
  while( pCur->ePhase!=COMPLETION_EOF ){
    switch( pCur->ePhase ){
      case 129: {
        if( pCur->j >= sqlite3_keyword_count() ){
          pCur->zCurrentRow = 0;
          pCur->ePhase = 130;
        }else{
          sqlite3_keyword_name(pCur->j++, &pCur->zCurrentRow, &pCur->szRow);
        }
        iCol = -1;
        break;
      }
      case 130: {
        if( pCur->pStmt==0 ){
          sqlite3_prepare_v2(pCur->db, "PRAGMA database_list", -1,
                             &pCur->pStmt, 0);
        }
        iCol = 1;
        eNextPhase = 128;
        break;
      }
      case 128: {
        if( pCur->pStmt==0 ){
          sqlite3_stmt *pS2;
          char *zSql = 0;
          const char *zSep = "";
          sqlite3_prepare_v2(pCur->db, "PRAGMA database_list", -1, &pS2, 0);
          while( sqlite3_step(pS2)==SQLITE_ROW ){
            const char *zDb = (const char*)sqlite3_column_text(pS2, 1);
            zSql = sqlite3_mprintf(
               "%z%s"
               "SELECT name FROM \"%w\".sqlite_master",
               zSql, zSep, zDb
            );
            if( zSql==0 ) return SQLITE_NOMEM;
            zSep = " UNION ";
          }
          sqlite3_finalize(pS2);
          sqlite3_prepare_v2(pCur->db, zSql, -1, &pCur->pStmt, 0);
          sqlite3_free(zSql);
        }
        iCol = 0;
        eNextPhase = 131;
        break;
      }
      case 131: {
        if( pCur->pStmt==0 ){
          sqlite3_stmt *pS2;
          char *zSql = 0;
          const char *zSep = "";
          sqlite3_prepare_v2(pCur->db, "PRAGMA database_list", -1, &pS2, 0);
          while( sqlite3_step(pS2)==SQLITE_ROW ){
            const char *zDb = (const char*)sqlite3_column_text(pS2, 1);
            zSql = sqlite3_mprintf(
               "%z%s"
               "SELECT pti.name FROM \"%w\".sqlite_master AS sm"
                       " JOIN pragma_table_info(sm.name,%Q) AS pti"
               " WHERE sm.type='table'",
               zSql, zSep, zDb, zDb
            );
            if( zSql==0 ) return SQLITE_NOMEM;
            zSep = " UNION ";
          }
          sqlite3_finalize(pS2);
          sqlite3_prepare_v2(pCur->db, zSql, -1, &pCur->pStmt, 0);
          sqlite3_free(zSql);
        }
        iCol = 0;
        eNextPhase = COMPLETION_EOF;
        break;
      }
    }
    if( iCol<0 ){

      if( pCur->zCurrentRow==0 ) continue;
    }else{
      if( sqlite3_step(pCur->pStmt)==SQLITE_ROW ){

        pCur->zCurrentRow = (const char*)sqlite3_column_text(pCur->pStmt, iCol);
        pCur->szRow = sqlite3_column_bytes(pCur->pStmt, iCol);
      }else{

        sqlite3_finalize(pCur->pStmt);
        pCur->pStmt = 0;
        pCur->ePhase = eNextPhase;
        continue;
      }
    }
    if( pCur->nPrefix==0 ) break;
    if( pCur->nPrefix<=pCur->szRow
     && sqlite3_strnicmp(pCur->zPrefix, pCur->zCurrentRow, pCur->nPrefix)==0
    ){
      break;
    }
  }

  return SQLITE_OK;
}
