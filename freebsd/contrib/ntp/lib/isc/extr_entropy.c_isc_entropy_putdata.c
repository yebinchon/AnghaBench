
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_uint32_t ;
struct TYPE_5__ {scalar_t__ initialized; int lock; } ;
typedef TYPE_1__ isc_entropy_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 scalar_t__ THRESHOLD_BITS ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_1__*) ;
 int entropypool_adddata (TYPE_1__*,void*,unsigned int,int ) ;

void
isc_entropy_putdata(isc_entropy_t *ent, void *data, unsigned int length,
      isc_uint32_t entropy)
{
 REQUIRE(VALID_ENTROPY(ent));

 LOCK(&ent->lock);

 entropypool_adddata(ent, data, length, entropy);

 if (ent->initialized < THRESHOLD_BITS)
  ent->initialized = THRESHOLD_BITS;

 UNLOCK(&ent->lock);
}
