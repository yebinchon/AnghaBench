
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jobIDMask; int * jobs; int cMem; } ;
typedef TYPE_1__ ZSTDMT_CCtx ;
typedef int U32 ;


 size_t ERROR (int ) ;
 int * ZSTDMT_createJobsTable (int*,int ) ;
 int ZSTDMT_freeJobsTable (int *,int,int ) ;
 int assert (int) ;
 int memory_allocation ;

__attribute__((used)) static size_t ZSTDMT_expandJobsTable (ZSTDMT_CCtx* mtctx, U32 nbWorkers) {
    U32 nbJobs = nbWorkers + 2;
    if (nbJobs > mtctx->jobIDMask+1) {
        ZSTDMT_freeJobsTable(mtctx->jobs, mtctx->jobIDMask+1, mtctx->cMem);
        mtctx->jobIDMask = 0;
        mtctx->jobs = ZSTDMT_createJobsTable(&nbJobs, mtctx->cMem);
        if (mtctx->jobs==((void*)0)) return ERROR(memory_allocation);
        assert((nbJobs != 0) && ((nbJobs & (nbJobs - 1)) == 0));
        mtctx->jobIDMask = nbJobs - 1;
    }
    return 0;
}
