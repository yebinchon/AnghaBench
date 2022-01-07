
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* ent; } ;
typedef TYPE_1__ isc_entropysource_t ;
struct TYPE_10__ {int lock; } ;
typedef TYPE_2__ isc_entropy_t ;
typedef scalar_t__ isc_boolean_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_2__*) ;
 int VALID_SOURCE (TYPE_1__*) ;
 int destroy (TYPE_2__**) ;
 scalar_t__ destroy_check (TYPE_2__*) ;
 int destroysource (TYPE_1__**) ;

void
isc_entropy_destroysource(isc_entropysource_t **sourcep) {
 isc_entropysource_t *source;
 isc_entropy_t *ent;
 isc_boolean_t killit;

 REQUIRE(sourcep != ((void*)0));
 REQUIRE(VALID_SOURCE(*sourcep));

 source = *sourcep;
 *sourcep = ((void*)0);

 ent = source->ent;
 REQUIRE(VALID_ENTROPY(ent));

 LOCK(&ent->lock);

 destroysource(&source);

 killit = destroy_check(ent);

 UNLOCK(&ent->lock);

 if (killit)
  destroy(&ent);
}
