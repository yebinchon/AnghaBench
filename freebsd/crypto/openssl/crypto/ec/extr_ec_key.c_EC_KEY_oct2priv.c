
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* group; } ;
struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* oct2priv ) (TYPE_3__*,unsigned char const*,size_t) ;} ;
typedef TYPE_3__ EC_KEY ;


 int EC_F_EC_KEY_OCT2PRIV ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int stub1 (TYPE_3__*,unsigned char const*,size_t) ;

int EC_KEY_oct2priv(EC_KEY *eckey, const unsigned char *buf, size_t len)
{
    if (eckey->group == ((void*)0) || eckey->group->meth == ((void*)0))
        return 0;
    if (eckey->group->meth->oct2priv == ((void*)0)) {
        ECerr(EC_F_EC_KEY_OCT2PRIV, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    return eckey->group->meth->oct2priv(eckey, buf, len);
}
