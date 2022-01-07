
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int engine; } ;
typedef TYPE_1__ EC_KEY ;


 int * EC_KEY_copy (TYPE_1__*,TYPE_1__ const*) ;
 int EC_KEY_free (TYPE_1__*) ;
 TYPE_1__* EC_KEY_new_method (int ) ;

EC_KEY *EC_KEY_dup(const EC_KEY *ec_key)
{
    EC_KEY *ret = EC_KEY_new_method(ec_key->engine);

    if (ret == ((void*)0))
        return ((void*)0);

    if (EC_KEY_copy(ret, ec_key) == ((void*)0)) {
        EC_KEY_free(ret);
        return ((void*)0);
    }
    return ret;
}
