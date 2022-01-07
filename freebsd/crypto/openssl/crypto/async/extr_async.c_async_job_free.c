
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fibrectx; struct TYPE_4__* funcargs; } ;
typedef TYPE_1__ ASYNC_JOB ;


 int OPENSSL_free (TYPE_1__*) ;
 int async_fibre_free (int *) ;

__attribute__((used)) static void async_job_free(ASYNC_JOB *job)
{
    if (job != ((void*)0)) {
        OPENSSL_free(job->funcargs);
        async_fibre_free(&job->fibrectx);
        OPENSSL_free(job);
    }
}
