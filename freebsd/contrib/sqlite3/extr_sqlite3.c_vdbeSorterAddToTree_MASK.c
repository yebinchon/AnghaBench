#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* pMerger; } ;
struct TYPE_11__ {TYPE_1__* aReadr; } ;
struct TYPE_10__ {TYPE_3__* pIncr; } ;
typedef  int /*<<< orphan*/  SortSubtask ;
typedef  TYPE_1__ PmaReader ;
typedef  TYPE_2__ MergeEngine ;
typedef  TYPE_3__ IncrMerger ;

/* Variables and functions */
 int SORTER_MAX_MERGE_COUNT ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__**) ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(
  SortSubtask *pTask,             /* Task context */
  int nDepth,                     /* Depth of tree according to TreeDepth() */
  int iSeq,                       /* Sequence number of leaf within tree */
  MergeEngine *pRoot,             /* Root of tree */
  MergeEngine *pLeaf              /* Leaf to add to tree */
){
  int rc = SQLITE_OK;
  int nDiv = 1;
  int i;
  MergeEngine *p = pRoot;
  IncrMerger *pIncr;

  rc = FUNC1(pTask, pLeaf, &pIncr);

  for(i=1; i<nDepth; i++){
    nDiv = nDiv * SORTER_MAX_MERGE_COUNT;
  }

  for(i=1; i<nDepth && rc==SQLITE_OK; i++){
    int iIter = (iSeq / nDiv) % SORTER_MAX_MERGE_COUNT;
    PmaReader *pReadr = &p->aReadr[iIter];

    if( pReadr->pIncr==0 ){
      MergeEngine *pNew = FUNC2(SORTER_MAX_MERGE_COUNT);
      if( pNew==0 ){
        rc = SQLITE_NOMEM_BKPT;
      }else{
        rc = FUNC1(pTask, pNew, &pReadr->pIncr);
      }
    }
    if( rc==SQLITE_OK ){
      p = pReadr->pIncr->pMerger;
      nDiv = nDiv / SORTER_MAX_MERGE_COUNT;
    }
  }

  if( rc==SQLITE_OK ){
    p->aReadr[iSeq % SORTER_MAX_MERGE_COUNT].pIncr = pIncr;
  }else{
    FUNC0(pIncr);
  }
  return rc;
}