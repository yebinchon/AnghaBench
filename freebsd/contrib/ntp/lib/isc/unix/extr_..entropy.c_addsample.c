
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nsamples; void** extra; void** samples; } ;
typedef TYPE_1__ sample_queue_t ;
typedef void* isc_uint32_t ;
typedef int isc_result_t ;


 int ISC_R_NOMORE ;
 int ISC_R_QUEUEFULL ;
 int ISC_R_SUCCESS ;
 size_t RND_EVENTQSIZE ;

__attribute__((used)) static isc_result_t
addsample(sample_queue_t *sq, isc_uint32_t sample, isc_uint32_t extra) {
 if (sq->nsamples >= RND_EVENTQSIZE)
  return (ISC_R_NOMORE);

 sq->samples[sq->nsamples] = sample;
 sq->extra[sq->nsamples] = extra;
 sq->nsamples++;

 if (sq->nsamples >= RND_EVENTQSIZE)
  return (ISC_R_QUEUEFULL);

 return (ISC_R_SUCCESS);
}
