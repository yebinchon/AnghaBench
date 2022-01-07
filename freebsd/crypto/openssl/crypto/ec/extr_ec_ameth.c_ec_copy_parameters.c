
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_GROUP ;


 int * EC_GROUP_dup (int ) ;
 int EC_GROUP_free (int *) ;
 int EC_KEY_get0_group (int *) ;
 int * EC_KEY_new () ;
 scalar_t__ EC_KEY_set_group (int *,int *) ;

__attribute__((used)) static int ec_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from)
{
    EC_GROUP *group = EC_GROUP_dup(EC_KEY_get0_group(from->pkey.ec));

    if (group == ((void*)0))
        return 0;
    if (to->pkey.ec == ((void*)0)) {
        to->pkey.ec = EC_KEY_new();
        if (to->pkey.ec == ((void*)0))
            goto err;
    }
    if (EC_KEY_set_group(to->pkey.ec, group) == 0)
        goto err;
    EC_GROUP_free(group);
    return 1;
 err:
    EC_GROUP_free(group);
    return 0;
}
