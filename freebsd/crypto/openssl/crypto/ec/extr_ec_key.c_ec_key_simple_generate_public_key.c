
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv_key; int pub_key; int group; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_POINT_mul (int ,int ,int ,int *,int *,int *) ;

int ec_key_simple_generate_public_key(EC_KEY *eckey)
{
    return EC_POINT_mul(eckey->group, eckey->pub_key, eckey->priv_key, ((void*)0),
                        ((void*)0), ((void*)0));
}
