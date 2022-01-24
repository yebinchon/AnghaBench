#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_2__ {int ePhase; char const* zCurrentRow; scalar_t__ szRow; scalar_t__ pStmt; scalar_t__ nPrefix; int /*<<< orphan*/  zPrefix; int /*<<< orphan*/  db; int /*<<< orphan*/  j; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_1__ completion_cursor ;

/* Variables and functions */
#define  COMPLETION_COLUMNS 131 
#define  COMPLETION_DATABASES 130 
 int COMPLETION_EOF ; 
#define  COMPLETION_KEYWORDS 129 
#define  COMPLETION_TABLES 128 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**,scalar_t__*) ; 
 char* FUNC6 (char*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(sqlite3_vtab_cursor *cur){
  completion_cursor *pCur = (completion_cursor*)cur;
  int eNextPhase = 0;  /* Next phase to try if current phase reaches end */
  int iCol = -1;       /* If >=0, step pCur->pStmt and use the i-th column */
  pCur->iRowid++;
  while( pCur->ePhase!=COMPLETION_EOF ){
    switch( pCur->ePhase ){
      case COMPLETION_KEYWORDS: {
        if( pCur->j >= FUNC4() ){
          pCur->zCurrentRow = 0;
          pCur->ePhase = COMPLETION_DATABASES;
        }else{
          FUNC5(pCur->j++, &pCur->zCurrentRow, &pCur->szRow);
        }
        iCol = -1;
        break;
      }
      case COMPLETION_DATABASES: {
        if( pCur->pStmt==0 ){
          FUNC7(pCur->db, "PRAGMA database_list", -1,
                             &pCur->pStmt, 0);
        }
        iCol = 1;
        eNextPhase = COMPLETION_TABLES;
        break;
      }
      case COMPLETION_TABLES: {
        if( pCur->pStmt==0 ){
          sqlite3_stmt *pS2;
          char *zSql = 0;
          const char *zSep = "";
          FUNC7(pCur->db, "PRAGMA database_list", -1, &pS2, 0);
          while( FUNC8(pS2)==SQLITE_ROW ){
            const char *zDb = (const char*)FUNC1(pS2, 1);
            zSql = FUNC6(
               "%z%s"
               "SELECT name FROM \"%w\".sqlite_master",
               zSql, zSep, zDb
            );
            if( zSql==0 ) return SQLITE_NOMEM;
            zSep = " UNION ";
          }
          FUNC2(pS2);
          FUNC7(pCur->db, zSql, -1, &pCur->pStmt, 0);
          FUNC3(zSql);
        }
        iCol = 0;
        eNextPhase = COMPLETION_COLUMNS;
        break;
      }
      case COMPLETION_COLUMNS: {
        if( pCur->pStmt==0 ){
          sqlite3_stmt *pS2;
          char *zSql = 0;
          const char *zSep = "";
          FUNC7(pCur->db, "PRAGMA database_list", -1, &pS2, 0);
          while( FUNC8(pS2)==SQLITE_ROW ){
            const char *zDb = (const char*)FUNC1(pS2, 1);
            zSql = FUNC6(
               "%z%s"
               "SELECT pti.name FROM \"%w\".sqlite_master AS sm"
                       " JOIN pragma_table_info(sm.name,%Q) AS pti"
               " WHERE sm.type='table'",
               zSql, zSep, zDb, zDb
            );
            if( zSql==0 ) return SQLITE_NOMEM;
            zSep = " UNION ";
          }
          FUNC2(pS2);
          FUNC7(pCur->db, zSql, -1, &pCur->pStmt, 0);
          FUNC3(zSql);
        }
        iCol = 0;
        eNextPhase = COMPLETION_EOF;
        break;
      }
    }
    if( iCol<0 ){
      /* This case is when the phase presets zCurrentRow */
      if( pCur->zCurrentRow==0 ) continue;
    }else{
      if( FUNC8(pCur->pStmt)==SQLITE_ROW ){
        /* Extract the next row of content */
        pCur->zCurrentRow = (const char*)FUNC1(pCur->pStmt, iCol);
        pCur->szRow = FUNC0(pCur->pStmt, iCol);
      }else{
        /* When all rows are finished, advance to the next phase */
        FUNC2(pCur->pStmt);
        pCur->pStmt = 0;
        pCur->ePhase = eNextPhase;
        continue;
      }
    }
    if( pCur->nPrefix==0 ) break;
    if( pCur->nPrefix<=pCur->szRow
     && FUNC9(pCur->zPrefix, pCur->zCurrentRow, pCur->nPrefix)==0
    ){
      break;
    }
  }

  return SQLITE_OK;
}