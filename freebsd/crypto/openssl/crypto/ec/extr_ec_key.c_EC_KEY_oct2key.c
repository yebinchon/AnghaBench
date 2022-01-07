
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ point_conversion_form_t ;
struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {scalar_t__ conv_form; TYPE_3__* group; int * pub_key; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ EC_KEY ;
typedef int BN_CTX ;


 int EC_FLAGS_CUSTOM_CURVE ;
 int * EC_POINT_new (TYPE_3__*) ;
 scalar_t__ EC_POINT_oct2point (TYPE_3__*,int *,unsigned char const*,size_t,int *) ;

int EC_KEY_oct2key(EC_KEY *key, const unsigned char *buf, size_t len,
                   BN_CTX *ctx)
{
    if (key == ((void*)0) || key->group == ((void*)0))
        return 0;
    if (key->pub_key == ((void*)0))
        key->pub_key = EC_POINT_new(key->group);
    if (key->pub_key == ((void*)0))
        return 0;
    if (EC_POINT_oct2point(key->group, key->pub_key, buf, len, ctx) == 0)
        return 0;







    if ((key->group->meth->flags & EC_FLAGS_CUSTOM_CURVE) == 0)
        key->conv_form = (point_conversion_form_t)(buf[0] & ~0x01);
    return 1;
}
