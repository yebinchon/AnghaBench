
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ isc_entropy_t ;
typedef int FILE ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_1__*) ;
 int dumpstats (TYPE_1__*,int *) ;

void
isc_entropy_stats(isc_entropy_t *ent, FILE *out) {
 REQUIRE(VALID_ENTROPY(ent));

 LOCK(&ent->lock);
 dumpstats(ent, out);
 UNLOCK(&ent->lock);
}
