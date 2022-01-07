
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int samplequeue; int start_called; int arg; int (* stopfunc ) (TYPE_3__*,int ) ;} ;
struct TYPE_12__ {int samplequeue; } ;
struct TYPE_13__ {TYPE_5__ callback; TYPE_1__ sample; int usocket; int file; } ;
struct TYPE_14__ {int type; TYPE_2__ sources; int bad; TYPE_4__* ent; } ;
typedef TYPE_3__ isc_entropysource_t ;
struct TYPE_15__ {scalar_t__ nsources; int mctx; int * nextsource; int sources; } ;
typedef TYPE_4__ isc_entropy_t ;
typedef TYPE_5__ isc_cbsource_t ;






 int ISC_FALSE ;
 int ISC_LIST_UNLINK (int ,TYPE_3__*,int ) ;
 int REQUIRE (int) ;
 int destroyfilesource (int *) ;
 int destroyusocketsource (int *) ;
 int isc_mem_put (int ,TYPE_3__*,int) ;
 int link ;
 int memset (TYPE_3__*,int ,int) ;
 int samplequeue_release (TYPE_4__*,int *) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void
destroysource(isc_entropysource_t **sourcep) {
 isc_entropysource_t *source;
 isc_entropy_t *ent;
 isc_cbsource_t *cbs;

 source = *sourcep;
 *sourcep = ((void*)0);
 ent = source->ent;

 ISC_LIST_UNLINK(ent->sources, source, link);
 ent->nextsource = ((void*)0);
 REQUIRE(ent->nsources > 0);
 ent->nsources--;

 switch (source->type) {
 case 130:
  if (! source->bad)
   destroyfilesource(&source->sources.file);
  break;
 case 128:
  if (! source->bad)
   destroyusocketsource(&source->sources.usocket);
  break;
 case 129:
  samplequeue_release(ent, &source->sources.sample.samplequeue);
  break;
 case 131:
  cbs = &source->sources.callback;
  if (cbs->start_called && cbs->stopfunc != ((void*)0)) {
   cbs->stopfunc(source, cbs->arg);
   cbs->start_called = ISC_FALSE;
  }
  samplequeue_release(ent, &cbs->samplequeue);
  break;
 }

 memset(source, 0, sizeof(isc_entropysource_t));

 isc_mem_put(ent->mctx, source, sizeof(isc_entropysource_t));
}
