
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int refcnt; } ;
typedef TYPE_1__ isc_entropy_t ;


 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_1__*) ;

void
isc_entropy_attach(isc_entropy_t *ent, isc_entropy_t **entp) {
 REQUIRE(VALID_ENTROPY(ent));
 REQUIRE(entp != ((void*)0) && *entp == ((void*)0));

 LOCK(&ent->lock);

 ent->refcnt++;
 *entp = ent;

 UNLOCK(&ent->lock);
}
