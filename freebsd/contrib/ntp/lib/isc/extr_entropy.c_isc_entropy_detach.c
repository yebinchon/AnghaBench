
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ refcnt; int lock; } ;
typedef TYPE_1__ isc_entropy_t ;
typedef scalar_t__ isc_boolean_t ;


 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 scalar_t__ VALID_ENTROPY (TYPE_1__*) ;
 int destroy (TYPE_1__**) ;
 scalar_t__ destroy_check (TYPE_1__*) ;

void
isc_entropy_detach(isc_entropy_t **entp) {
 isc_entropy_t *ent;
 isc_boolean_t killit;

 REQUIRE(entp != ((void*)0) && VALID_ENTROPY(*entp));
 ent = *entp;
 *entp = ((void*)0);

 LOCK(&ent->lock);

 REQUIRE(ent->refcnt > 0);
 ent->refcnt--;

 killit = destroy_check(ent);

 UNLOCK(&ent->lock);

 if (killit)
  destroy(&ent);
}
