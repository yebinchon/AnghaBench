
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcnt; } ;


 int INSIST (int) ;
 scalar_t__ VALID_HASH (TYPE_1__*) ;
 int destroy (TYPE_1__**) ;
 TYPE_1__* hash ;
 int isc_refcount_decrement (int *,unsigned int*) ;

void
isc_hash_destroy() {
 unsigned int refs;

 INSIST(hash != ((void*)0) && VALID_HASH(hash));

 isc_refcount_decrement(&hash->refcnt, &refs);
 INSIST(refs == 0);

 destroy(&hash);
}
