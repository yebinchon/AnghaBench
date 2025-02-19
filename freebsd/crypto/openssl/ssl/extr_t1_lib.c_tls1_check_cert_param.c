
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int X509 ;
struct TYPE_8__ {size_t shared_sigalgslen; TYPE_1__** shared_sigalgs; int server; } ;
struct TYPE_7__ {int sigandhash; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_PKEY ;


 scalar_t__ EVP_PKEY_EC ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int NID_ecdsa_with_SHA256 ;
 int NID_ecdsa_with_SHA384 ;
 scalar_t__ TLSEXT_curve_P_256 ;
 scalar_t__ TLSEXT_curve_P_384 ;
 int * X509_get0_pubkey (int *) ;
 int tls1_check_group_id (TYPE_2__*,scalar_t__,int) ;
 int tls1_check_pkey_comp (TYPE_2__*,int *) ;
 scalar_t__ tls1_get_group_id (int *) ;
 scalar_t__ tls1_suiteb (TYPE_2__*) ;

__attribute__((used)) static int tls1_check_cert_param(SSL *s, X509 *x, int check_ee_md)
{
    uint16_t group_id;
    EVP_PKEY *pkey;
    pkey = X509_get0_pubkey(x);
    if (pkey == ((void*)0))
        return 0;

    if (EVP_PKEY_id(pkey) != EVP_PKEY_EC)
        return 1;

    if (!tls1_check_pkey_comp(s, pkey))
        return 0;
    group_id = tls1_get_group_id(pkey);




    if (!tls1_check_group_id(s, group_id, !s->server))
        return 0;




    if (check_ee_md && tls1_suiteb(s)) {
        int check_md;
        size_t i;


        if (group_id == TLSEXT_curve_P_256)
            check_md = NID_ecdsa_with_SHA256;
        else if (group_id == TLSEXT_curve_P_384)
            check_md = NID_ecdsa_with_SHA384;
        else
            return 0;
        for (i = 0; i < s->shared_sigalgslen; i++) {
            if (check_md == s->shared_sigalgs[i]->sigandhash)
                return 1;;
        }
        return 0;
    }
    return 1;
}
