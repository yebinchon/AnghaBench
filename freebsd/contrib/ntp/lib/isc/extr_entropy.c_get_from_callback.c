
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_9__ {scalar_t__ (* startfunc ) (TYPE_2__*,int ,int ) ;scalar_t__ (* getfunc ) (TYPE_2__*,int ,int ) ;int samplequeue; int arg; void* start_called; } ;
struct TYPE_7__ {TYPE_3__ callback; } ;
struct TYPE_8__ {void* bad; TYPE_1__ sources; int * ent; } ;
typedef TYPE_2__ isc_entropysource_t ;
typedef int isc_entropy_t ;
typedef TYPE_3__ isc_cbsource_t ;
typedef int isc_boolean_t ;


 scalar_t__ ISC_MIN (unsigned int,unsigned int) ;
 scalar_t__ ISC_R_NOTBLOCKING ;
 scalar_t__ ISC_R_QUEUEFULL ;
 scalar_t__ ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 unsigned int crunchsamples (int *,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static unsigned int
get_from_callback(isc_entropysource_t *source, unsigned int desired,
    isc_boolean_t blocking)
{
 isc_entropy_t *ent = source->ent;
 isc_cbsource_t *cbs = &source->sources.callback;
 unsigned int added;
 unsigned int got;
 isc_result_t result;

 if (desired == 0)
  return (0);

 if (source->bad)
  return (0);

 if (!cbs->start_called && cbs->startfunc != ((void*)0)) {
  result = cbs->startfunc(source, cbs->arg, blocking);
  if (result != ISC_R_SUCCESS)
   return (0);
  cbs->start_called = ISC_TRUE;
 }

 added = 0;
 result = ISC_R_SUCCESS;
 while (desired > 0 && result == ISC_R_SUCCESS) {
  result = cbs->getfunc(source, cbs->arg, blocking);
  if (result == ISC_R_QUEUEFULL) {
   got = crunchsamples(ent, &cbs->samplequeue);
   added += got;
   desired -= ISC_MIN(got, desired);
   result = ISC_R_SUCCESS;
  } else if (result != ISC_R_SUCCESS &&
      result != ISC_R_NOTBLOCKING)
   source->bad = ISC_TRUE;

 }

 return (added);
}
