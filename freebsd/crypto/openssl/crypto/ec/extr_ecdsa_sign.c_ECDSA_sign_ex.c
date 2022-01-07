
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int (* sign ) (int,unsigned char const*,int,unsigned char*,unsigned int*,int const*,int const*,TYPE_2__*) ;} ;
typedef TYPE_2__ EC_KEY ;
typedef int BIGNUM ;


 int EC_F_ECDSA_SIGN_EX ;
 int EC_R_OPERATION_NOT_SUPPORTED ;
 int ECerr (int ,int ) ;
 int stub1 (int,unsigned char const*,int,unsigned char*,unsigned int*,int const*,int const*,TYPE_2__*) ;

int ECDSA_sign_ex(int type, const unsigned char *dgst, int dlen,
                  unsigned char *sig, unsigned int *siglen, const BIGNUM *kinv,
                  const BIGNUM *r, EC_KEY *eckey)
{
    if (eckey->meth->sign != ((void*)0))
        return eckey->meth->sign(type, dgst, dlen, sig, siglen, kinv, r, eckey);
    ECerr(EC_F_ECDSA_SIGN_EX, EC_R_OPERATION_NOT_SUPPORTED);
    return 0;
}
