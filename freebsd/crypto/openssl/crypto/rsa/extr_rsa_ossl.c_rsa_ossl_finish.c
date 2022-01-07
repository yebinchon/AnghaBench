
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int prime_infos; int _method_mod_q; int _method_mod_p; int _method_mod_n; } ;
struct TYPE_5__ {int m; } ;
typedef TYPE_1__ RSA_PRIME_INFO ;
typedef TYPE_2__ RSA ;


 int BN_MONT_CTX_free (int ) ;
 int sk_RSA_PRIME_INFO_num (int ) ;
 TYPE_1__* sk_RSA_PRIME_INFO_value (int ,int) ;

__attribute__((used)) static int rsa_ossl_finish(RSA *rsa)
{
    int i;
    RSA_PRIME_INFO *pinfo;

    BN_MONT_CTX_free(rsa->_method_mod_n);
    BN_MONT_CTX_free(rsa->_method_mod_p);
    BN_MONT_CTX_free(rsa->_method_mod_q);
    for (i = 0; i < sk_RSA_PRIME_INFO_num(rsa->prime_infos); i++) {
        pinfo = sk_RSA_PRIME_INFO_value(rsa->prime_infos, i);
        BN_MONT_CTX_free(pinfo->m);
    }
    return 1;
}
