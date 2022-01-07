
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int * server; int * client; } ;
typedef TYPE_1__ kcm_ccache_data ;


 int kcm_ccache_remove_creds_internal (int ,TYPE_1__*) ;
 int krb5_free_principal (int ,int *) ;

krb5_error_code
kcm_zero_ccache_data_internal(krb5_context context,
         kcm_ccache_data *cache)
{
    if (cache->client != ((void*)0)) {
 krb5_free_principal(context, cache->client);
 cache->client = ((void*)0);
    }

    if (cache->server != ((void*)0)) {
 krb5_free_principal(context, cache->server);
 cache->server = ((void*)0);
    }

    kcm_ccache_remove_creds_internal(context, cache);

    return 0;
}
