
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_4__ {unsigned int limit; } ;


 int INSIST (int) ;
 int REQUIRE (int) ;
 scalar_t__ VALID_HASH (TYPE_1__*) ;
 TYPE_1__* hash ;
 unsigned int hash_calc (TYPE_1__*,unsigned char const*,unsigned int,int ) ;

unsigned int
isc_hash_calc(const unsigned char *key, unsigned int keylen,
       isc_boolean_t case_sensitive)
{
 INSIST(hash != ((void*)0) && VALID_HASH(hash));
 REQUIRE(keylen <= hash->limit);

 return (hash_calc(hash, key, keylen, case_sensitive));
}
