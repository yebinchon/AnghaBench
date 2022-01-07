
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3expert ;
struct TYPE_4__ {int bVerbose; int * pExpert; } ;
struct TYPE_5__ {TYPE_1__ expert; int * out; } ;
typedef TYPE_2__ ShellState ;
typedef int FILE ;


 int EXPERT_REPORT_CANDIDATES ;
 int EXPERT_REPORT_INDEXES ;
 int EXPERT_REPORT_PLAN ;
 int EXPERT_REPORT_SQL ;
 int SQLITE_OK ;
 int assert (int) ;
 int raw_printf (int *,char*,...) ;
 int sqlite3_expert_analyze (int *,char**) ;
 int sqlite3_expert_count (int *) ;
 int sqlite3_expert_destroy (int *) ;
 char* sqlite3_expert_report (int *,int,int ) ;

__attribute__((used)) static int expertFinish(
  ShellState *pState,
  int bCancel,
  char **pzErr
){
  int rc = SQLITE_OK;
  sqlite3expert *p = pState->expert.pExpert;
  assert( p );
  assert( bCancel || pzErr==0 || *pzErr==0 );
  if( bCancel==0 ){
    FILE *out = pState->out;
    int bVerbose = pState->expert.bVerbose;

    rc = sqlite3_expert_analyze(p, pzErr);
    if( rc==SQLITE_OK ){
      int nQuery = sqlite3_expert_count(p);
      int i;

      if( bVerbose ){
        const char *zCand = sqlite3_expert_report(p,0,EXPERT_REPORT_CANDIDATES);
        raw_printf(out, "-- Candidates -----------------------------\n");
        raw_printf(out, "%s\n", zCand);
      }
      for(i=0; i<nQuery; i++){
        const char *zSql = sqlite3_expert_report(p, i, EXPERT_REPORT_SQL);
        const char *zIdx = sqlite3_expert_report(p, i, EXPERT_REPORT_INDEXES);
        const char *zEQP = sqlite3_expert_report(p, i, EXPERT_REPORT_PLAN);
        if( zIdx==0 ) zIdx = "(no new indexes)\n";
        if( bVerbose ){
          raw_printf(out, "-- Query %d --------------------------------\n",i+1);
          raw_printf(out, "%s\n\n", zSql);
        }
        raw_printf(out, "%s\n", zIdx);
        raw_printf(out, "%s\n", zEQP);
      }
    }
  }
  sqlite3_expert_destroy(p);
  pState->expert.pExpert = 0;
  return rc;
}
