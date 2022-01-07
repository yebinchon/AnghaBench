
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sample_queue_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_13__ {int samplequeue; } ;
struct TYPE_14__ {TYPE_1__ sample; } ;
struct TYPE_15__ {int name; scalar_t__ total; TYPE_4__* ent; int type; int magic; TYPE_2__ sources; } ;
typedef TYPE_3__ isc_entropysource_t ;
struct TYPE_16__ {int lock; int mctx; int nsources; int sources; } ;
typedef TYPE_4__ isc_entropy_t ;


 int ENTROPY_SOURCETYPE_SAMPLE ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_3__*,int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int SOURCE_MAGIC ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_4__*) ;
 TYPE_3__* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int link ;
 int memset (int ,int ,int) ;
 scalar_t__ samplesource_allocate (TYPE_4__*,int *) ;

isc_result_t
isc_entropy_createsamplesource(isc_entropy_t *ent,
          isc_entropysource_t **sourcep)
{
 isc_result_t result;
 isc_entropysource_t *source;
 sample_queue_t *sq;

 REQUIRE(VALID_ENTROPY(ent));
 REQUIRE(sourcep != ((void*)0) && *sourcep == ((void*)0));

 LOCK(&ent->lock);

 source = isc_mem_get(ent->mctx, sizeof(isc_entropysource_t));
 if (source == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto errout;
 }

 sq = &source->sources.sample.samplequeue;
 result = samplesource_allocate(ent, sq);
 if (result != ISC_R_SUCCESS)
  goto errout;




 source->magic = SOURCE_MAGIC;
 source->type = ENTROPY_SOURCETYPE_SAMPLE;
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
