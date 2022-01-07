
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; } ;
typedef TYPE_1__ EC_KEY ;


 int * BN_bin2bn (unsigned char const*,size_t,int *) ;
 int * BN_secure_new () ;
 int EC_F_EC_KEY_SIMPLE_OCT2PRIV ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_MALLOC_FAILURE ;

int ec_key_simple_oct2priv(EC_KEY *eckey, const unsigned char *buf, size_t len)
{
    if (eckey->priv_key == ((void*)0))
        eckey->priv_key = BN_secure_new();
    if (eckey->priv_key == ((void*)0)) {
        ECerr(EC_F_EC_KEY_SIMPLE_OCT2PRIV, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    eckey->priv_key = BN_bin2bn(buf, len, eckey->priv_key);
    if (eckey->priv_key == ((void*)0)) {
        ECerr(EC_F_EC_KEY_SIMPLE_OCT2PRIV, ERR_R_BN_LIB);
        return 0;
    }
    return 1;
}
