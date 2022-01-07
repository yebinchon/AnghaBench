
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int point_conversion_form_t ;
struct TYPE_3__ {int * pub_key; int * group; } ;
typedef TYPE_1__ EC_KEY ;
typedef int BN_CTX ;


 size_t EC_POINT_point2buf (int *,int *,int ,unsigned char**,int *) ;

size_t EC_KEY_key2buf(const EC_KEY *key, point_conversion_form_t form,
                        unsigned char **pbuf, BN_CTX *ctx)
{
    if (key == ((void*)0) || key->pub_key == ((void*)0) || key->group == ((void*)0))
        return 0;
    return EC_POINT_point2buf(key->group, key->pub_key, form, pbuf, ctx);
}
