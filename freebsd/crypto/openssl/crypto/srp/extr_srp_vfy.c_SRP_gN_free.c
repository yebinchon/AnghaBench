
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bn; struct TYPE_4__* b64_bn; } ;
typedef TYPE_1__ SRP_gN_cache ;


 int BN_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void SRP_gN_free(SRP_gN_cache *gN_cache)
{
    if (gN_cache == ((void*)0))
        return;
    OPENSSL_free(gN_cache->b64_bn);
    BN_free(gN_cache->bn);
    OPENSSL_free(gN_cache);
}
