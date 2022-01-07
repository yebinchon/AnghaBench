
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_entropy_t ;


 int INSIST (int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;
 int createlock ;
 int * hash ;
 int initialize_lock ;
 scalar_t__ isc_hash_ctxcreate (int *,int *,size_t,int **) ;
 scalar_t__ isc_once_do (int *,int ) ;
 int once ;

isc_result_t
isc_hash_create(isc_mem_t *mctx, isc_entropy_t *entropy, size_t limit) {
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(mctx != ((void*)0));
 INSIST(hash == ((void*)0));

 RUNTIME_CHECK(isc_once_do(&once, initialize_lock) == ISC_R_SUCCESS);

 LOCK(&createlock);

 if (hash == ((void*)0))
  result = isc_hash_ctxcreate(mctx, entropy, limit, &hash);

 UNLOCK(&createlock);

 return (result);
}
