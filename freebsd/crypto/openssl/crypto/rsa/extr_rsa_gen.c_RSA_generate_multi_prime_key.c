
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {int (* rsa_multi_prime_keygen ) (TYPE_2__*,int,int,int *,int *) ;int (* rsa_keygen ) (TYPE_2__*,int,int *,int *) ;} ;
typedef TYPE_2__ RSA ;
typedef int BN_GENCB ;
typedef int BIGNUM ;


 int rsa_builtin_keygen (TYPE_2__*,int,int,int *,int *) ;
 int stub1 (TYPE_2__*,int,int,int *,int *) ;
 int stub2 (TYPE_2__*,int,int *,int *) ;

int RSA_generate_multi_prime_key(RSA *rsa, int bits, int primes,
                                 BIGNUM *e_value, BN_GENCB *cb)
{

    if (rsa->meth->rsa_multi_prime_keygen != ((void*)0)) {
        return rsa->meth->rsa_multi_prime_keygen(rsa, bits, primes,
                                                 e_value, cb);
    } else if (rsa->meth->rsa_keygen != ((void*)0)) {






        if (primes == 2)
            return rsa->meth->rsa_keygen(rsa, bits, e_value, cb);
        else
            return 0;
    }

    return rsa_builtin_keygen(rsa, bits, primes, e_value, cb);
}
