
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_15__ {scalar_t__ pExpert; } ;
struct TYPE_16__ {scalar_t__ autoEQP; scalar_t__ cMode; scalar_t__ mode; int * pStmt; scalar_t__ scanstatsOn; scalar_t__ statsOn; scalar_t__ autoExplain; int out; scalar_t__ cnt; TYPE_1__ expert; int * db; } ;
typedef TYPE_2__ ShellState ;


 scalar_t__ AUTOEQP_full ;
 scalar_t__ AUTOEQP_trigger ;
 scalar_t__ IsSpace (char const) ;
 scalar_t__ MODE_EQP ;
 scalar_t__ MODE_Explain ;
 int SHFLG_Echo ;
 int SQLITE_DBCONFIG_TRIGGER_EQP ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ ShellHasFlag (TYPE_2__*,int ) ;
 int bind_prepared_stmt (TYPE_2__*,int *) ;
 int disable_debug_trace_modes () ;
 int display_scanstats (int *,TYPE_2__*) ;
 int display_stats (int *,TYPE_2__*,int ) ;
 int eqp_append (TYPE_2__*,int,int,char const*) ;
 int eqp_render (TYPE_2__*) ;
 int exec_prepared_stmt (TYPE_2__*,int *) ;
 int expertFinish (TYPE_2__*,int,char**) ;
 int expertHandleSQL (TYPE_2__*,char const*,char**) ;
 int explain_data_delete (TYPE_2__*) ;
 int explain_data_prepare (TYPE_2__*,int *) ;
 int restore_debug_trace_modes () ;
 char* save_err_msg (int *) ;
 int sqlite3_column_int (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_db_config (int *,int ,int,int*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,char const**) ;
 char* sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_stmt_isexplain (int *) ;
 int utf8_printf (int ,char*,char const*) ;

__attribute__((used)) static int shell_exec(
  ShellState *pArg,
  const char *zSql,
  char **pzErrMsg
){
  sqlite3_stmt *pStmt = ((void*)0);
  int rc = SQLITE_OK;
  int rc2;
  const char *zLeftover;
  sqlite3 *db = pArg->db;

  if( pzErrMsg ){
    *pzErrMsg = ((void*)0);
  }


  if( pArg->expert.pExpert ){
    rc = expertHandleSQL(pArg, zSql, pzErrMsg);
    return expertFinish(pArg, (rc!=SQLITE_OK), pzErrMsg);
  }


  while( zSql[0] && (SQLITE_OK == rc) ){
    static const char *zStmtSql;
    rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, &zLeftover);
    if( SQLITE_OK != rc ){
      if( pzErrMsg ){
        *pzErrMsg = save_err_msg(db);
      }
    }else{
      if( !pStmt ){

        zSql = zLeftover;
        while( IsSpace(zSql[0]) ) zSql++;
        continue;
      }
      zStmtSql = sqlite3_sql(pStmt);
      if( zStmtSql==0 ) zStmtSql = "";
      while( IsSpace(zStmtSql[0]) ) zStmtSql++;


      if( pArg ){
        pArg->pStmt = pStmt;
        pArg->cnt = 0;
      }


      if( pArg && ShellHasFlag(pArg, SHFLG_Echo) ){
        utf8_printf(pArg->out, "%s\n", zStmtSql ? zStmtSql : zSql);
      }


      if( pArg && pArg->autoEQP && sqlite3_stmt_isexplain(pStmt)==0 ){
        sqlite3_stmt *pExplain;
        char *zEQP;
        int triggerEQP = 0;
        disable_debug_trace_modes();
        sqlite3_db_config(db, SQLITE_DBCONFIG_TRIGGER_EQP, -1, &triggerEQP);
        if( pArg->autoEQP>=AUTOEQP_trigger ){
          sqlite3_db_config(db, SQLITE_DBCONFIG_TRIGGER_EQP, 1, 0);
        }
        zEQP = sqlite3_mprintf("EXPLAIN QUERY PLAN %s", zStmtSql);
        rc = sqlite3_prepare_v2(db, zEQP, -1, &pExplain, 0);
        if( rc==SQLITE_OK ){
          while( sqlite3_step(pExplain)==SQLITE_ROW ){
            const char *zEQPLine = (const char*)sqlite3_column_text(pExplain,3);
            int iEqpId = sqlite3_column_int(pExplain, 0);
            int iParentId = sqlite3_column_int(pExplain, 1);
            if( zEQPLine[0]=='-' ) eqp_render(pArg);
            eqp_append(pArg, iEqpId, iParentId, zEQPLine);
          }
          eqp_render(pArg);
        }
        sqlite3_finalize(pExplain);
        sqlite3_free(zEQP);
        if( pArg->autoEQP>=AUTOEQP_full ){

          zEQP = sqlite3_mprintf("EXPLAIN %s", zStmtSql);
          rc = sqlite3_prepare_v2(db, zEQP, -1, &pExplain, 0);
          if( rc==SQLITE_OK ){
            pArg->cMode = MODE_Explain;
            explain_data_prepare(pArg, pExplain);
            exec_prepared_stmt(pArg, pExplain);
            explain_data_delete(pArg);
          }
          sqlite3_finalize(pExplain);
          sqlite3_free(zEQP);
        }
        if( pArg->autoEQP>=AUTOEQP_trigger && triggerEQP==0 ){
          sqlite3_db_config(db, SQLITE_DBCONFIG_TRIGGER_EQP, 0, 0);

          sqlite3_finalize(pStmt);
          sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
          if( pArg ) pArg->pStmt = pStmt;
        }
        restore_debug_trace_modes();
      }

      if( pArg ){
        pArg->cMode = pArg->mode;
        if( pArg->autoExplain ){
          if( sqlite3_stmt_isexplain(pStmt)==1 ){
            pArg->cMode = MODE_Explain;
          }
          if( sqlite3_stmt_isexplain(pStmt)==2 ){
            pArg->cMode = MODE_EQP;
          }
        }



        if( pArg->cMode==MODE_Explain ){
          explain_data_prepare(pArg, pStmt);
        }
      }

      bind_prepared_stmt(pArg, pStmt);
      exec_prepared_stmt(pArg, pStmt);
      explain_data_delete(pArg);
      eqp_render(pArg);


      if( pArg && pArg->statsOn ){
        display_stats(db, pArg, 0);
      }


      if( pArg && pArg->scanstatsOn ){
        display_scanstats(db, pArg);
      }




      rc2 = sqlite3_finalize(pStmt);
      if( rc!=SQLITE_NOMEM ) rc = rc2;
      if( rc==SQLITE_OK ){
        zSql = zLeftover;
        while( IsSpace(zSql[0]) ) zSql++;
      }else if( pzErrMsg ){
        *pzErrMsg = save_err_msg(db);
      }


      if( pArg ){
        pArg->pStmt = ((void*)0);
      }
    }
  }

  return rc;
}
