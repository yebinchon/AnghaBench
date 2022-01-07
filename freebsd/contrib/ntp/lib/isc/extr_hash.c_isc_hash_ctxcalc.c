
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int limit; } ;
typedef TYPE_1__ isc_hash_t ;
typedef int isc_boolean_t ;


 int REQUIRE (int) ;
 scalar_t__ VALID_HASH (TYPE_1__*) ;
 unsigned int hash_calc (TYPE_1__*,unsigned char const*,unsigned int,int ) ;

unsigned int
isc_hash_ctxcalc(isc_hash_t *hctx, const unsigned char *key,
   unsigned int keylen, isc_boolean_t case_sensitive)
{
 REQUIRE(hctx != ((void*)0) && VALID_HASH(hctx));
 REQUIRE(keylen <= hctx->limit);

 return (hash_calc(hctx, key, keylen, case_sensitive));
}
