
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ sig; int curve; } ;
struct TYPE_7__ {TYPE_1__* cert; } ;
struct TYPE_6__ {size_t conf_sigalgslen; int * conf_sigalgs; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ SIGALG_LOOKUP ;


 scalar_t__ EVP_PKEY_EC ;
 int NID_undef ;
 size_t OSSL_NELEM (int *) ;
 int * tls12_sigalgs ;
 TYPE_3__* tls1_lookup_sigalg (int const) ;

int tls_check_sigalg_curve(const SSL *s, int curve)
{
   const uint16_t *sigs;
   size_t siglen, i;

    if (s->cert->conf_sigalgs) {
        sigs = s->cert->conf_sigalgs;
        siglen = s->cert->conf_sigalgslen;
    } else {
        sigs = tls12_sigalgs;
        siglen = OSSL_NELEM(tls12_sigalgs);
    }

    for (i = 0; i < siglen; i++) {
        const SIGALG_LOOKUP *lu = tls1_lookup_sigalg(sigs[i]);

        if (lu == ((void*)0))
            continue;
        if (lu->sig == EVP_PKEY_EC
                && lu->curve != NID_undef
                && curve == lu->curve)
            return 1;
    }

    return 0;
}
