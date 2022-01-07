
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
struct TYPE_5__ {int refcnt; int pool; int magic; scalar_t__ initcount; scalar_t__ initialized; int * mctx; scalar_t__ nsources; int * nextsource; int sources; int lock; } ;
typedef TYPE_1__ isc_entropy_t ;


 int ENTROPY_MAGIC ;
 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int isc_entropypool_init (int *) ;
 int isc_mem_attach (int *,int **) ;
 TYPE_1__* isc_mem_get (int *,int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 scalar_t__ isc_mutex_init (int *) ;

isc_result_t
isc_entropy_create(isc_mem_t *mctx, isc_entropy_t **entp) {
 isc_result_t result;
 isc_entropy_t *ent;

 REQUIRE(mctx != ((void*)0));
 REQUIRE(entp != ((void*)0) && *entp == ((void*)0));

 ent = isc_mem_get(mctx, sizeof(isc_entropy_t));
 if (ent == ((void*)0))
  return (ISC_R_NOMEMORY);




 result = isc_mutex_init(&ent->lock);
 if (result != ISC_R_SUCCESS)
  goto errout;




 ISC_LIST_INIT(ent->sources);
 ent->nextsource = ((void*)0);
 ent->nsources = 0;
 ent->mctx = ((void*)0);
 isc_mem_attach(mctx, &ent->mctx);
 ent->refcnt = 1;
 ent->initialized = 0;
 ent->initcount = 0;
 ent->magic = ENTROPY_MAGIC;

 isc_entropypool_init(&ent->pool);

 *entp = ent;
 return (ISC_R_SUCCESS);

 errout:
 isc_mem_put(mctx, ent, sizeof(isc_entropy_t));

 return (result);
}
