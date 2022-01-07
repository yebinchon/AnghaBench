
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {scalar_t__ pList; int* aMemory; scalar_t__ szPMA; } ;
struct TYPE_8__ {int bUsePMA; int nTask; int iPrev; TYPE_4__ list; int nMemory; TYPE_2__* aTask; } ;
typedef TYPE_1__ VdbeSorter ;
struct TYPE_9__ {scalar_t__ bDone; scalar_t__ pThread; TYPE_4__ list; } ;
typedef TYPE_2__ SortSubtask ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int* sqlite3Malloc (int ) ;
 int sqlite3MallocSize (int*) ;
 int vdbeSorterCreateThread (TYPE_2__*,int ,void*) ;
 int vdbeSorterFlushThread ;
 int vdbeSorterJoinThread (TYPE_2__*) ;
 int vdbeSorterListToPMA (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static int vdbeSorterFlushPMA(VdbeSorter *pSorter){

  pSorter->bUsePMA = 1;
  return vdbeSorterListToPMA(&pSorter->aTask[0], &pSorter->list);
}
