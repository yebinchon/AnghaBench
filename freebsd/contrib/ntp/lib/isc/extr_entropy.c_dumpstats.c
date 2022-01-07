
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pseudo; int entropy; int rotate; int cursor; } ;
struct TYPE_6__ {int initcount; int initialized; int nextsource; int nsources; TYPE_1__ pool; int refcnt; } ;
typedef TYPE_2__ isc_entropy_t ;
typedef int FILE ;


 int ISC_MSGSET_ENTROPY ;
 int ISC_MSG_ENTROPYSTATS ;
 int fprintf (int *,char*,TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int isc_msgcat ;
 char* isc_msgcat_get (int ,int ,int ,char*) ;

__attribute__((used)) static void
dumpstats(isc_entropy_t *ent, FILE *out) {
 fprintf(out,
  isc_msgcat_get(isc_msgcat, ISC_MSGSET_ENTROPY,
          ISC_MSG_ENTROPYSTATS,
          "Entropy pool %p:  refcnt %u cursor %u,"
          " rotate %u entropy %u pseudo %u nsources %u"
          " nextsource %p initialized %u initcount %u\n"),
  ent, ent->refcnt,
  ent->pool.cursor, ent->pool.rotate,
  ent->pool.entropy, ent->pool.pseudo,
  ent->nsources, ent->nextsource, ent->initialized,
  ent->initcount);
}
