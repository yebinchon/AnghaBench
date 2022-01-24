#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_4__ {int /*<<< orphan*/  job_cond; int /*<<< orphan*/  job_mutex; } ;
typedef  TYPE_1__ ZSTDMT_jobDescription ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ZSTDMT_jobDescription* FUNC5(U32* nbJobsPtr, ZSTD_customMem cMem)
{
    U32 const nbJobsLog2 = FUNC2(*nbJobsPtr) + 1;
    U32 const nbJobs = 1 << nbJobsLog2;
    U32 jobNb;
    ZSTDMT_jobDescription* const jobTable = (ZSTDMT_jobDescription*)
                FUNC1(nbJobs * sizeof(ZSTDMT_jobDescription), cMem);
    int initError = 0;
    if (jobTable==NULL) return NULL;
    *nbJobsPtr = nbJobs;
    for (jobNb=0; jobNb<nbJobs; jobNb++) {
        initError |= FUNC4(&jobTable[jobNb].job_mutex, NULL);
        initError |= FUNC3(&jobTable[jobNb].job_cond, NULL);
    }
    if (initError != 0) {
        FUNC0(jobTable, nbJobs, cMem);
        return NULL;
    }
    return jobTable;
}