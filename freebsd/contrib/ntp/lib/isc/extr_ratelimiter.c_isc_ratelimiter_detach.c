
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refs; int lock; } ;
typedef TYPE_1__ isc_ratelimiter_t ;
typedef scalar_t__ isc_boolean_t ;


 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int ratelimiter_free (TYPE_1__*) ;

void
isc_ratelimiter_detach(isc_ratelimiter_t **rlp) {
 isc_ratelimiter_t *rl = *rlp;
 isc_boolean_t free_now = ISC_FALSE;

 LOCK(&rl->lock);
 REQUIRE(rl->refs > 0);
 rl->refs--;
 if (rl->refs == 0)
  free_now = ISC_TRUE;
 UNLOCK(&rl->lock);

 if (free_now)
  ratelimiter_free(rl);

 *rlp = ((void*)0);
}
