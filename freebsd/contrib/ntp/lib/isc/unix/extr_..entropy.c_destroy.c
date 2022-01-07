
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ isc_entropysource_t ;
struct TYPE_9__ {scalar_t__ refcnt; int lock; int pool; int * mctx; int sources; } ;
typedef TYPE_2__ isc_entropy_t ;


 int DESTROYLOCK (int *) ;


 int ISC_LIST_EMPTY (int ) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int destroysource (TYPE_1__**) ;
 int isc_entropypool_invalidate (int *) ;
 int isc_mem_detach (int **) ;
 int isc_mem_put (int *,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
destroy(isc_entropy_t **entp) {
 isc_entropy_t *ent;
 isc_entropysource_t *source;
 isc_mem_t *mctx;

 REQUIRE(entp != ((void*)0) && *entp != ((void*)0));
 ent = *entp;
 *entp = ((void*)0);

 LOCK(&ent->lock);

 REQUIRE(ent->refcnt == 0);




 source = ISC_LIST_HEAD(ent->sources);
 while (source != ((void*)0)) {
  switch(source->type) {
  case 129:
  case 128:
   destroysource(&source);
   break;
  }
  source = ISC_LIST_HEAD(ent->sources);
 }




 REQUIRE(ISC_LIST_EMPTY(ent->sources));

 mctx = ent->mctx;

 isc_entropypool_invalidate(&ent->pool);

 UNLOCK(&ent->lock);

 DESTROYLOCK(&ent->lock);

 memset(ent, 0, sizeof(isc_entropy_t));
 isc_mem_put(mctx, ent, sizeof(isc_entropy_t));
 isc_mem_detach(&mctx);
}
