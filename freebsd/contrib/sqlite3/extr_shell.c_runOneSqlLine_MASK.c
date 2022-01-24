#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zPrefix ;
struct TYPE_6__ {int flgProgress; int /*<<< orphan*/  db; int /*<<< orphan*/  out; scalar_t__ nProgress; } ;
typedef  TYPE_1__ ShellState ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BEGIN_TIMER ; 
 int /*<<< orphan*/  END_TIMER ; 
 int SHELL_PROGRESS_RESET ; 
 int /*<<< orphan*/  SHFLG_Backslash ; 
 int /*<<< orphan*/  SHFLG_CountChanges ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin_is_interactive ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static int FUNC11(ShellState *p, char *zSql, FILE *in, int startline){
  int rc;
  char *zErrMsg = 0;

  FUNC1(p, 0);
  if( FUNC0(p,SHFLG_Backslash) ) FUNC3(zSql);
  if( p->flgProgress & SHELL_PROGRESS_RESET ) p->nProgress = 0;
  BEGIN_TIMER;
  rc = FUNC4(p, zSql, &zErrMsg);
  END_TIMER;
  if( rc || zErrMsg ){
    char zPrefix[100];
    if( in!=0 || !stdin_is_interactive ){
      FUNC8(sizeof(zPrefix), zPrefix,
                       "Error: near line %d:", startline);
    }else{
      FUNC8(sizeof(zPrefix), zPrefix, "Error:");
    }
    if( zErrMsg!=0 ){
      FUNC10(stderr, "%s %s\n", zPrefix, zErrMsg);
      FUNC7(zErrMsg);
      zErrMsg = 0;
    }else{
      FUNC10(stderr, "%s %s\n", zPrefix, FUNC6(p->db));
    }
    return 1;
  }else if( FUNC0(p, SHFLG_CountChanges) ){
    FUNC2(p->out, "changes: %3d   total_changes: %d\n",
            FUNC5(p->db), FUNC9(p->db));
  }
  return 0;
}