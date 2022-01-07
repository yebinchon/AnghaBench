
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* meth; } ;
typedef int EC_KEY_METHOD ;
typedef TYPE_1__ EC_KEY ;



const EC_KEY_METHOD *EC_KEY_get_method(const EC_KEY *key)
{
    return key->meth;
}
