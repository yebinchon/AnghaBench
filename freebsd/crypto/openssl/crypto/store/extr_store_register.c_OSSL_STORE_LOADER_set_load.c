
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load; } ;
typedef int OSSL_STORE_load_fn ;
typedef TYPE_1__ OSSL_STORE_LOADER ;



int OSSL_STORE_LOADER_set_load(OSSL_STORE_LOADER *loader,
                               OSSL_STORE_load_fn load_function)
{
    loader->load = load_function;
    return 1;
}
