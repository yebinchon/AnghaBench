
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scheme; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;


 unsigned long OPENSSL_LH_strhash (int ) ;

__attribute__((used)) static unsigned long store_loader_hash(const OSSL_STORE_LOADER *v)
{
    return OPENSSL_LH_strhash(v->scheme);
}
