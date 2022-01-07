
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * priv_key; TYPE_2__* meth; TYPE_3__* group; } ;
struct TYPE_10__ {TYPE_1__* meth; } ;
struct TYPE_9__ {scalar_t__ (* set_private ) (TYPE_4__*,int const*) ;} ;
struct TYPE_8__ {scalar_t__ (* set_private ) (TYPE_4__*,int const*) ;} ;
typedef TYPE_4__ EC_KEY ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int * BN_dup (int const*) ;
 scalar_t__ stub1 (TYPE_4__*,int const*) ;
 scalar_t__ stub2 (TYPE_4__*,int const*) ;

int EC_KEY_set_private_key(EC_KEY *key, const BIGNUM *priv_key)
{
    if (key->group == ((void*)0) || key->group->meth == ((void*)0))
        return 0;
    if (key->group->meth->set_private != ((void*)0)
        && key->group->meth->set_private(key, priv_key) == 0)
        return 0;
    if (key->meth->set_private != ((void*)0)
        && key->meth->set_private(key, priv_key) == 0)
        return 0;
    BN_clear_free(key->priv_key);
    key->priv_key = BN_dup(priv_key);
    return (key->priv_key == ((void*)0)) ? 0 : 1;
}
