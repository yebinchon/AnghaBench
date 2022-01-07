
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pub_key; int group; TYPE_1__* meth; } ;
struct TYPE_5__ {scalar_t__ (* set_public ) (TYPE_2__*,int const*) ;} ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_KEY ;


 int * EC_POINT_dup (int const*,int ) ;
 int EC_POINT_free (int *) ;
 scalar_t__ stub1 (TYPE_2__*,int const*) ;

int EC_KEY_set_public_key(EC_KEY *key, const EC_POINT *pub_key)
{
    if (key->meth->set_public != ((void*)0)
        && key->meth->set_public(key, pub_key) == 0)
        return 0;
    EC_POINT_free(key->pub_key);
    key->pub_key = EC_POINT_dup(pub_key, key->group);
    return (key->pub_key == ((void*)0)) ? 0 : 1;
}
