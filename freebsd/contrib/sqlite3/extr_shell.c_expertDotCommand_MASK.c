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
struct TYPE_5__ {int bVerbose; int /*<<< orphan*/  pExpert; } ;
struct TYPE_4__ {TYPE_2__ expert; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ ShellState ;
typedef  int /*<<< orphan*/  ExpertInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EXPERT_CONFIG_SAMPLE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(
  ShellState *pState,             /* Current shell tool state */
  char **azArg,                   /* Array of arguments passed to dot command */
  int nArg                        /* Number of entries in azArg[] */
){
  int rc = SQLITE_OK;
  char *zErr = 0;
  int i;
  int iSample = 0;

  FUNC0( pState->expert.pExpert==0 );
  FUNC2(&pState->expert, 0, sizeof(ExpertInfo));

  for(i=1; rc==SQLITE_OK && i<nArg; i++){
    char *z = azArg[i];
    int n;
    if( z[0]=='-' && z[1]=='-' ) z++;
    n = FUNC6(z);
    if( n>=2 && 0==FUNC7(z, "-verbose", n) ){
      pState->expert.bVerbose = 1;
    }
    else if( n>=2 && 0==FUNC7(z, "-sample", n) ){
      if( i==(nArg-1) ){
        FUNC3(stderr, "option requires an argument: %s\n", z);
        rc = SQLITE_ERROR;
      }else{
        iSample = (int)FUNC1(azArg[++i]);
        if( iSample<0 || iSample>100 ){
          FUNC3(stderr, "value out of range: %s\n", azArg[i]);
          rc = SQLITE_ERROR;
        }
      }
    }
    else{
      FUNC3(stderr, "unknown option: %s\n", z);
      rc = SQLITE_ERROR;
    }
  }

  if( rc==SQLITE_OK ){
    pState->expert.pExpert = FUNC5(pState->db, &zErr);
    if( pState->expert.pExpert==0 ){
      FUNC3(stderr, "sqlite3_expert_new: %s\n", zErr);
      rc = SQLITE_ERROR;
    }else{
      FUNC4(
          pState->expert.pExpert, EXPERT_CONFIG_SAMPLE, iSample
      );
    }
  }

  return rc;
}