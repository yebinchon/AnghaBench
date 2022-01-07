
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* ec_meth; } ;
typedef TYPE_1__ ENGINE ;
typedef int EC_KEY_METHOD ;



const EC_KEY_METHOD *ENGINE_get_EC(const ENGINE *e)
{
    return e->ec_meth;
}
