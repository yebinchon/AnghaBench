
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* pFirst; } ;
struct TYPE_10__ {int bRun; int zCandidates; TYPE_1__ hIdx; } ;
typedef TYPE_2__ sqlite3expert ;
struct TYPE_11__ {scalar_t__ zVal2; int zVal; struct TYPE_11__* pNext; } ;
typedef TYPE_3__ IdxHashEntry ;


 int SQLITE_OK ;
 int idxAppendText (int*,int ,char*,int ,char*,scalar_t__) ;
 int idxCreateCandidates (TYPE_2__*) ;
 int idxFindIndexes (TYPE_2__*,char**) ;
 int idxPopulateStat1 (TYPE_2__*,char**) ;
 int idxProcessTriggers (TYPE_2__*,char**) ;

int sqlite3_expert_analyze(sqlite3expert *p, char **pzErr){
  int rc;
  IdxHashEntry *pEntry;


  rc = idxProcessTriggers(p, pzErr);


  if( rc==SQLITE_OK ){
    rc = idxCreateCandidates(p);
  }


  if( rc==SQLITE_OK ){
    rc = idxPopulateStat1(p, pzErr);
  }


  for(pEntry=p->hIdx.pFirst; pEntry; pEntry=pEntry->pNext){
    p->zCandidates = idxAppendText(&rc, p->zCandidates,
        "%s;%s%s\n", pEntry->zVal,
        pEntry->zVal2 ? " -- stat1: " : "", pEntry->zVal2
    );
  }



  if( rc==SQLITE_OK ){
    rc = idxFindIndexes(p, pzErr);
  }

  if( rc==SQLITE_OK ){
    p->bRun = 1;
  }
  return rc;
}
