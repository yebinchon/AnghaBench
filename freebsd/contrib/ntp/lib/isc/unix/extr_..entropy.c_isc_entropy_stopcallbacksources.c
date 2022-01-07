
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ start_called; int arg; int (* stopfunc ) (TYPE_2__*,int ) ;} ;
struct TYPE_11__ {TYPE_4__ callback; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ sources; } ;
typedef TYPE_2__ isc_entropysource_t ;
struct TYPE_13__ {int lock; int sources; } ;
typedef TYPE_3__ isc_entropy_t ;
typedef TYPE_4__ isc_cbsource_t ;


 scalar_t__ ENTROPY_SOURCETYPE_CALLBACK ;
 scalar_t__ ISC_FALSE ;
 TYPE_2__* ISC_LIST_HEAD (int ) ;
 TYPE_2__* ISC_LIST_NEXT (TYPE_2__*,int ) ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_3__*) ;
 int link ;
 int stub1 (TYPE_2__*,int ) ;

void
isc_entropy_stopcallbacksources(isc_entropy_t *ent) {
 isc_entropysource_t *source;
 isc_cbsource_t *cbs;

 REQUIRE(VALID_ENTROPY(ent));

 LOCK(&ent->lock);

 source = ISC_LIST_HEAD(ent->sources);
 while (source != ((void*)0)) {
  if (source->type == ENTROPY_SOURCETYPE_CALLBACK) {
   cbs = &source->sources.callback;
   if (cbs->start_called && cbs->stopfunc != ((void*)0)) {
    cbs->stopfunc(source, cbs->arg);
    cbs->start_called = ISC_FALSE;
   }
  }

  source = ISC_LIST_NEXT(source, link);
 }

 UNLOCK(&ent->lock);
}
