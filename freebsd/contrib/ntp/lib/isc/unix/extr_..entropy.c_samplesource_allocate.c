
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nsamples; int * samples; int * extra; } ;
typedef TYPE_1__ sample_queue_t ;
typedef int isc_result_t ;
struct TYPE_6__ {int mctx; } ;
typedef TYPE_2__ isc_entropy_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int RND_EVENTQSIZE ;
 void* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,int *,int) ;

__attribute__((used)) static isc_result_t
samplesource_allocate(isc_entropy_t *ent, sample_queue_t *sq) {
 sq->samples = isc_mem_get(ent->mctx, RND_EVENTQSIZE * 4);
 if (sq->samples == ((void*)0))
  return (ISC_R_NOMEMORY);

 sq->extra = isc_mem_get(ent->mctx, RND_EVENTQSIZE * 4);
 if (sq->extra == ((void*)0)) {
  isc_mem_put(ent->mctx, sq->samples, RND_EVENTQSIZE * 4);
  sq->samples = ((void*)0);
  return (ISC_R_NOMEMORY);
 }

 sq->nsamples = 0;

 return (ISC_R_SUCCESS);
}
