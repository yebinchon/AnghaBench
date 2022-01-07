
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* group; } ;
typedef TYPE_1__ EC_KEY ;
typedef int EC_GROUP ;



const EC_GROUP *EC_KEY_get0_group(const EC_KEY *key)
{
    return key->group;
}
