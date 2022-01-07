
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSIST (int) ;
 scalar_t__ VALID_HASH (int *) ;
 int * hash ;
 int isc_hash_ctxinit (int *) ;

void
isc_hash_init() {
 INSIST(hash != ((void*)0) && VALID_HASH(hash));

 isc_hash_ctxinit(hash);
}
