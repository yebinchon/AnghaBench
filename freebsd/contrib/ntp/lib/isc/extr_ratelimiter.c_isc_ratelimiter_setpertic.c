
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_3__ {int pertic; } ;
typedef TYPE_1__ isc_ratelimiter_t ;



void
isc_ratelimiter_setpertic(isc_ratelimiter_t *rl, isc_uint32_t pertic) {
 if (pertic == 0)
  pertic = 1;
 rl->pertic = pertic;
}
