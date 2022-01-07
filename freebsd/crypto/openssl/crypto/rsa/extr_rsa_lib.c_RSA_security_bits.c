
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; int prime_infos; int n; } ;
typedef TYPE_1__ RSA ;


 int BN_num_bits (int ) ;
 int BN_security_bits (int,int) ;
 scalar_t__ RSA_ASN1_VERSION_MULTI ;
 int rsa_multip_cap (int) ;
 int sk_RSA_PRIME_INFO_num (int ) ;

int RSA_security_bits(const RSA *rsa)
{
    int bits = BN_num_bits(rsa->n);

    if (rsa->version == RSA_ASN1_VERSION_MULTI) {

        int ex_primes = sk_RSA_PRIME_INFO_num(rsa->prime_infos);

        if (ex_primes <= 0 || (ex_primes + 2) > rsa_multip_cap(bits))
            return 0;
    }
    return BN_security_bits(bits, -1);
}
