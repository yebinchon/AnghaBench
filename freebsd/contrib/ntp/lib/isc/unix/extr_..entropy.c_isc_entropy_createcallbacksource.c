
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_entropystop_t ;
typedef int isc_entropystart_t ;
struct TYPE_16__ {void* arg; int stopfunc; int * getfunc; int startfunc; void* start_called; int samplequeue; } ;
struct TYPE_13__ {TYPE_4__ callback; } ;
struct TYPE_14__ {int name; scalar_t__ total; TYPE_3__* ent; int type; int magic; TYPE_1__ sources; void* bad; } ;
typedef TYPE_2__ isc_entropysource_t ;
typedef int * isc_entropyget_t ;
struct TYPE_15__ {int lock; int mctx; int nsources; int sources; } ;
typedef TYPE_3__ isc_entropy_t ;
typedef TYPE_4__ isc_cbsource_t ;


 int ENTROPY_SOURCETYPE_CALLBACK ;
 void* ISC_FALSE ;
 int ISC_LINK_INIT (TYPE_2__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_2__*,int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int SOURCE_MAGIC ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_3__*) ;
 TYPE_2__* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;
 int link ;
 int memset (int ,int ,int) ;
 scalar_t__ samplesource_allocate (TYPE_3__*,int *) ;

isc_result_t
isc_entropy_createcallbacksource(isc_entropy_t *ent,
     isc_entropystart_t start,
     isc_entropyget_t get,
     isc_entropystop_t stop,
     void *arg,
     isc_entropysource_t **sourcep)
{
 isc_result_t result;
 isc_entropysource_t *source;
 isc_cbsource_t *cbs;

 REQUIRE(VALID_ENTROPY(ent));
 REQUIRE(get != ((void*)0));
 REQUIRE(sourcep != ((void*)0) && *sourcep == ((void*)0));

 LOCK(&ent->lock);

 source = isc_mem_get(ent->mctx, sizeof(isc_entropysource_t));
 if (source == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto errout;
 }
 source->bad = ISC_FALSE;

 cbs = &source->sources.callback;

 result = samplesource_allocate(ent, &cbs->samplequeue);
 if (result != ISC_R_SUCCESS)
  goto errout;

 cbs->start_called = ISC_FALSE;
 cbs->startfunc = start;
 cbs->getfunc = get;
 cbs->stopfunc = stop;
 cbs->arg = arg;




 source->magic = SOURCE_MAGIC;
 source->type = ENTROPY_SOURCETYPE_CALLBACK;
 source->ent = ent;
 source->total = 0;
 memset(source->name, 0, sizeof(source->name));
 ISC_LINK_INIT(source, link);




 ISC_LIST_APPEND(ent->sources, source, link);
 ent->nsources++;

 *sourcep = source;

 UNLOCK(&ent->lock);
 return (ISC_R_SUCCESS);

 errout:
 if (source != ((void*)0))
  isc_mem_put(ent->mctx, source, sizeof(isc_entropysource_t));

 UNLOCK(&ent->lock);

 return (result);
}
