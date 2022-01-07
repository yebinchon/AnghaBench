
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {TYPE_3__* pMethods; } ;
typedef TYPE_4__ sqlite3_file ;
typedef scalar_t__ i64 ;
struct TYPE_15__ {TYPE_2__* pSorter; } ;
struct TYPE_14__ {scalar_t__ iEof; TYPE_4__* pFd; } ;
struct TYPE_12__ {int iVersion; } ;
struct TYPE_11__ {TYPE_1__* db; } ;
struct TYPE_10__ {scalar_t__ nMaxSorterMmap; } ;
typedef TYPE_5__ SorterFile ;
typedef TYPE_6__ SortSubtask ;


 int SQLITE_OK ;
 int sqlite3OsFetch (TYPE_4__*,int ,int,void**) ;
 int testcase (int) ;

__attribute__((used)) static int vdbeSorterMapFile(SortSubtask *pTask, SorterFile *pFile, u8 **pp){
  int rc = SQLITE_OK;
  if( pFile->iEof<=(i64)(pTask->pSorter->db->nMaxSorterMmap) ){
    sqlite3_file *pFd = pFile->pFd;
    if( pFd->pMethods->iVersion>=3 ){
      rc = sqlite3OsFetch(pFd, 0, (int)pFile->iEof, (void**)pp);
      testcase( rc!=SQLITE_OK );
    }
  }
  return rc;
}
