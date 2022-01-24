#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* pFirst; } ;
struct TYPE_10__ {int bRun; int /*<<< orphan*/  zCandidates; TYPE_1__ hIdx; } ;
typedef  TYPE_2__ sqlite3expert ;
struct TYPE_11__ {scalar_t__ zVal2; int /*<<< orphan*/  zVal; struct TYPE_11__* pNext; } ;
typedef  TYPE_3__ IdxHashEntry ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,char**) ; 
 int FUNC3 (TYPE_2__*,char**) ; 
 int FUNC4 (TYPE_2__*,char**) ; 

int FUNC5(sqlite3expert *p, char **pzErr){
  int rc;
  IdxHashEntry *pEntry;

  /* Do trigger processing to collect any extra IdxScan structures */
  rc = FUNC4(p, pzErr);

  /* Create candidate indexes within the in-memory database file */
  if( rc==SQLITE_OK ){
    rc = FUNC1(p);
  }

  /* Generate the stat1 data */
  if( rc==SQLITE_OK ){
    rc = FUNC3(p, pzErr);
  }

  /* Formulate the EXPERT_REPORT_CANDIDATES text */
  for(pEntry=p->hIdx.pFirst; pEntry; pEntry=pEntry->pNext){
    p->zCandidates = FUNC0(&rc, p->zCandidates, 
        "%s;%s%s\n", pEntry->zVal, 
        pEntry->zVal2 ? " -- stat1: " : "", pEntry->zVal2
    );
  }

  /* Figure out which of the candidate indexes are preferred by the query
  ** planner and report the results to the user.  */
  if( rc==SQLITE_OK ){
    rc = FUNC2(p, pzErr);
  }

  if( rc==SQLITE_OK ){
    p->bRun = 1;
  }
  return rc;
}