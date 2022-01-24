#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_15__ {scalar_t__ pExpert; } ;
struct TYPE_16__ {scalar_t__ autoEQP; scalar_t__ cMode; scalar_t__ mode; int /*<<< orphan*/ * pStmt; scalar_t__ scanstatsOn; scalar_t__ statsOn; scalar_t__ autoExplain; int /*<<< orphan*/  out; scalar_t__ cnt; TYPE_1__ expert; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ ShellState ;

/* Variables and functions */
 scalar_t__ AUTOEQP_full ; 
 scalar_t__ AUTOEQP_trigger ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ MODE_EQP ; 
 scalar_t__ MODE_Explain ; 
 int /*<<< orphan*/  SHFLG_Echo ; 
 int /*<<< orphan*/  SQLITE_DBCONFIG_TRIGGER_EQP ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,int,char**) ; 
 int FUNC10 (TYPE_2__*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*,char const*) ; 
 int FUNC21 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,char const**) ; 
 char* FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC26(
  ShellState *pArg,                         /* Pointer to ShellState */
  const char *zSql,                         /* SQL to be evaluated */
  char **pzErrMsg                           /* Error msg written here */
){
  sqlite3_stmt *pStmt = NULL;     /* Statement to execute. */
  int rc = SQLITE_OK;             /* Return Code */
  int rc2;
  const char *zLeftover;          /* Tail of unprocessed SQL */
  sqlite3 *db = pArg->db;

  if( pzErrMsg ){
    *pzErrMsg = NULL;
  }

#ifndef SQLITE_OMIT_VIRTUALTABLE
  if( pArg->expert.pExpert ){
    rc = FUNC10(pArg, zSql, pzErrMsg);
    return FUNC9(pArg, (rc!=SQLITE_OK), pzErrMsg);
  }
#endif

  while( zSql[0] && (SQLITE_OK == rc) ){
    static const char *zStmtSql;
    rc = FUNC21(db, zSql, -1, &pStmt, &zLeftover);
    if( SQLITE_OK != rc ){
      if( pzErrMsg ){
        *pzErrMsg = FUNC14(db);
      }
    }else{
      if( !pStmt ){
        /* this happens for a comment or white-space */
        zSql = zLeftover;
        while( FUNC0(zSql[0]) ) zSql++;
        continue;
      }
      zStmtSql = FUNC22(pStmt);
      if( zStmtSql==0 ) zStmtSql = "";
      while( FUNC0(zStmtSql[0]) ) zStmtSql++;

      /* save off the prepared statment handle and reset row count */
      if( pArg ){
        pArg->pStmt = pStmt;
        pArg->cnt = 0;
      }

      /* echo the sql statement if echo on */
      if( pArg && FUNC1(pArg, SHFLG_Echo) ){
        FUNC25(pArg->out, "%s\n", zStmtSql ? zStmtSql : zSql);
      }

      /* Show the EXPLAIN QUERY PLAN if .eqp is on */
      if( pArg && pArg->autoEQP && FUNC24(pStmt)==0 ){
        sqlite3_stmt *pExplain;
        char *zEQP;
        int triggerEQP = 0;
        FUNC3();
        FUNC17(db, SQLITE_DBCONFIG_TRIGGER_EQP, -1, &triggerEQP);
        if( pArg->autoEQP>=AUTOEQP_trigger ){
          FUNC17(db, SQLITE_DBCONFIG_TRIGGER_EQP, 1, 0);
        }
        zEQP = FUNC20("EXPLAIN QUERY PLAN %s", zStmtSql);
        rc = FUNC21(db, zEQP, -1, &pExplain, 0);
        if( rc==SQLITE_OK ){
          while( FUNC23(pExplain)==SQLITE_ROW ){
            const char *zEQPLine = (const char*)FUNC16(pExplain,3);
            int iEqpId = FUNC15(pExplain, 0);
            int iParentId = FUNC15(pExplain, 1);
            if( zEQPLine[0]=='-' ) FUNC7(pArg);
            FUNC6(pArg, iEqpId, iParentId, zEQPLine);
          }
          FUNC7(pArg);
        }
        FUNC18(pExplain);
        FUNC19(zEQP);
        if( pArg->autoEQP>=AUTOEQP_full ){
          /* Also do an EXPLAIN for ".eqp full" mode */
          zEQP = FUNC20("EXPLAIN %s", zStmtSql);
          rc = FUNC21(db, zEQP, -1, &pExplain, 0);
          if( rc==SQLITE_OK ){
            pArg->cMode = MODE_Explain;
            FUNC12(pArg, pExplain);
            FUNC8(pArg, pExplain);
            FUNC11(pArg);
          }
          FUNC18(pExplain);
          FUNC19(zEQP);
        }
        if( pArg->autoEQP>=AUTOEQP_trigger && triggerEQP==0 ){
          FUNC17(db, SQLITE_DBCONFIG_TRIGGER_EQP, 0, 0);
          /* Reprepare pStmt before reactiving trace modes */
          FUNC18(pStmt);
          FUNC21(db, zSql, -1, &pStmt, 0);
          if( pArg ) pArg->pStmt = pStmt;
        }
        FUNC13();
      }

      if( pArg ){
        pArg->cMode = pArg->mode;
        if( pArg->autoExplain ){
          if( FUNC24(pStmt)==1 ){
            pArg->cMode = MODE_Explain;
          }
          if( FUNC24(pStmt)==2 ){
            pArg->cMode = MODE_EQP;
          }
        }

        /* If the shell is currently in ".explain" mode, gather the extra
        ** data required to add indents to the output.*/
        if( pArg->cMode==MODE_Explain ){
          FUNC12(pArg, pStmt);
        }
      }

      FUNC2(pArg, pStmt);
      FUNC8(pArg, pStmt);
      FUNC11(pArg);
      FUNC7(pArg);

      /* print usage stats if stats on */
      if( pArg && pArg->statsOn ){
        FUNC5(db, pArg, 0);
      }

      /* print loop-counters if required */
      if( pArg && pArg->scanstatsOn ){
        FUNC4(db, pArg);
      }

      /* Finalize the statement just executed. If this fails, save a
      ** copy of the error message. Otherwise, set zSql to point to the
      ** next statement to execute. */
      rc2 = FUNC18(pStmt);
      if( rc!=SQLITE_NOMEM ) rc = rc2;
      if( rc==SQLITE_OK ){
        zSql = zLeftover;
        while( FUNC0(zSql[0]) ) zSql++;
      }else if( pzErrMsg ){
        *pzErrMsg = FUNC14(db);
      }

      /* clear saved stmt handle */
      if( pArg ){
        pArg->pStmt = NULL;
      }
    }
  } /* end while */

  return rc;
}