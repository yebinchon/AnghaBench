
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {int job_cond; int job_mutex; } ;
typedef TYPE_1__ ZSTDMT_jobDescription ;
typedef int U32 ;


 int ZSTDMT_freeJobsTable (TYPE_1__* const,int const,int ) ;
 scalar_t__ ZSTD_calloc (int const,int ) ;
 int ZSTD_highbit32 (int) ;
 int ZSTD_pthread_cond_init (int *,int *) ;
 int ZSTD_pthread_mutex_init (int *,int *) ;

__attribute__((used)) static ZSTDMT_jobDescription* ZSTDMT_createJobsTable(U32* nbJobsPtr, ZSTD_customMem cMem)
{
    U32 const nbJobsLog2 = ZSTD_highbit32(*nbJobsPtr) + 1;
    U32 const nbJobs = 1 << nbJobsLog2;
    U32 jobNb;
    ZSTDMT_jobDescription* const jobTable = (ZSTDMT_jobDescription*)
                ZSTD_calloc(nbJobs * sizeof(ZSTDMT_jobDescription), cMem);
    int initError = 0;
    if (jobTable==((void*)0)) return ((void*)0);
    *nbJobsPtr = nbJobs;
    for (jobNb=0; jobNb<nbJobs; jobNb++) {
        initError |= ZSTD_pthread_mutex_init(&jobTable[jobNb].job_mutex, ((void*)0));
        initError |= ZSTD_pthread_cond_init(&jobTable[jobNb].job_cond, ((void*)0));
    }
    if (initError != 0) {
        ZSTDMT_freeJobsTable(jobTable, nbJobs, cMem);
        return ((void*)0);
    }
    return jobTable;
}
