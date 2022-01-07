
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refs; int lock; } ;
typedef TYPE_1__ isc_ratelimiter_t ;


 int INSIST (int) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;

void
isc_ratelimiter_attach(isc_ratelimiter_t *source, isc_ratelimiter_t **target) {
 REQUIRE(source != ((void*)0));
 REQUIRE(target != ((void*)0) && *target == ((void*)0));

 LOCK(&source->lock);
 REQUIRE(source->refs > 0);
 source->refs++;
 INSIST(source->refs > 0);
 UNLOCK(&source->lock);
 *target = source;
}
