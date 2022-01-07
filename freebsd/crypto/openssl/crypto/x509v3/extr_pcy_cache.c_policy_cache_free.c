
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int anyPolicy; } ;
typedef TYPE_1__ X509_POLICY_CACHE ;


 int OPENSSL_free (TYPE_1__*) ;
 int policy_data_free (int ) ;
 int sk_X509_POLICY_DATA_pop_free (int ,int (*) (int )) ;

void policy_cache_free(X509_POLICY_CACHE *cache)
{
    if (!cache)
        return;
    policy_data_free(cache->anyPolicy);
    sk_X509_POLICY_DATA_pop_free(cache->data, policy_data_free);
    OPENSSL_free(cache);
}
