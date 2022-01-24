#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3expert ;
struct TYPE_4__ {int bVerbose; int /*<<< orphan*/ * pExpert; } ;
struct TYPE_5__ {TYPE_1__ expert; int /*<<< orphan*/ * out; } ;
typedef  TYPE_2__ ShellState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXPERT_REPORT_CANDIDATES ; 
 int /*<<< orphan*/  EXPERT_REPORT_INDEXES ; 
 int /*<<< orphan*/  EXPERT_REPORT_PLAN ; 
 int /*<<< orphan*/  EXPERT_REPORT_SQL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
  ShellState *pState,
  int bCancel,
  char **pzErr
){
  int rc = SQLITE_OK;
  sqlite3expert *p = pState->expert.pExpert;
  FUNC0( *p );
  FUNC0( bCancel || pzErr==0 || *pzErr==0 );
  if( bCancel==0 ){
    FILE *out = pState->out;
    int bVerbose = pState->expert.bVerbose;

    rc = FUNC2(p, pzErr);
    if( rc==SQLITE_OK ){
      int nQuery = FUNC3(p);
      int i;

      if( bVerbose ){
        const char *zCand = FUNC5(p,0,EXPERT_REPORT_CANDIDATES);
        FUNC1(out, "-- Candidates -----------------------------\n");
        FUNC1(out, "%s\n", zCand);
      }
      for(i=0; i<nQuery; i++){
        const char *zSql = FUNC5(p, i, EXPERT_REPORT_SQL);
        const char *zIdx = FUNC5(p, i, EXPERT_REPORT_INDEXES);
        const char *zEQP = FUNC5(p, i, EXPERT_REPORT_PLAN);
        if( zIdx==0 ) zIdx = "(no new indexes)\n";
        if( bVerbose ){
          FUNC1(out, "-- Query %d --------------------------------\n",i+1);
          FUNC1(out, "%s\n\n", zSql);
        }
        FUNC1(out, "%s\n", zIdx);
        FUNC1(out, "%s\n", zEQP);
      }
    }
  }
  FUNC4(p);
  pState->expert.pExpert = 0;
  return rc;
}