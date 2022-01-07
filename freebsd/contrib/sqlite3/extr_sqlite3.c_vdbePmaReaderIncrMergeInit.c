
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_16__ {int mxSz; int iStartOff; scalar_t__ bUseThread; TYPE_2__* aFile; int pMerger; TYPE_4__* pTask; } ;
struct TYPE_15__ {TYPE_6__* pIncr; } ;
struct TYPE_13__ {scalar_t__ pFd; int iEof; } ;
struct TYPE_14__ {TYPE_3__ file2; TYPE_1__* pSorter; } ;
struct TYPE_12__ {scalar_t__ pFd; } ;
struct TYPE_11__ {int * db; } ;
typedef TYPE_4__ SortSubtask ;
typedef TYPE_5__ PmaReader ;
typedef TYPE_6__ IncrMerger ;


 int INCRINIT_NORMAL ;
 int INCRINIT_ROOT ;
 int INCRINIT_TASK ;
 scalar_t__ SQLITE_MAX_WORKER_THREADS ;
 int SQLITE_OK ;
 int assert (int) ;
 int vdbeIncrPopulate (TYPE_6__*) ;
 int vdbeMergeEngineInit (TYPE_4__*,int ,int) ;
 int vdbePmaReaderNext (TYPE_5__*) ;
 int vdbeSorterOpenTempFile (int *,int,scalar_t__*) ;

__attribute__((used)) static int vdbePmaReaderIncrMergeInit(PmaReader *pReadr, int eMode){
  int rc = SQLITE_OK;
  IncrMerger *pIncr = pReadr->pIncr;
  SortSubtask *pTask = pIncr->pTask;
  sqlite3 *db = pTask->pSorter->db;


  assert( SQLITE_MAX_WORKER_THREADS>0 || eMode==INCRINIT_NORMAL );

  rc = vdbeMergeEngineInit(pTask, pIncr->pMerger, eMode);




  if( rc==SQLITE_OK ){
    int mxSz = pIncr->mxSz;
                                {
      if( pTask->file2.pFd==0 ){
        assert( pTask->file2.iEof>0 );
        rc = vdbeSorterOpenTempFile(db, pTask->file2.iEof, &pTask->file2.pFd);
        pTask->file2.iEof = 0;
      }
      if( rc==SQLITE_OK ){
        pIncr->aFile[1].pFd = pTask->file2.pFd;
        pIncr->iStartOff = pTask->file2.iEof;
        pTask->file2.iEof += mxSz;
      }
    }
  }
  if( rc==SQLITE_OK && (SQLITE_MAX_WORKER_THREADS==0 || eMode!=INCRINIT_TASK) ){
    rc = vdbePmaReaderNext(pReadr);
  }

  return rc;
}
