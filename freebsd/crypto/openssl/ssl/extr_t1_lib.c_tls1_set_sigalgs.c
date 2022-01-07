
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {size_t client_sigalgslen; size_t conf_sigalgslen; int * conf_sigalgs; int * client_sigalgs; } ;
struct TYPE_6__ {int hash; int sig; int sigalg; } ;
typedef TYPE_1__ SIGALG_LOOKUP ;
typedef TYPE_2__ CERT ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (size_t) ;
 size_t OSSL_NELEM (TYPE_1__*) ;
 int SSL_F_TLS1_SET_SIGALGS ;
 int SSLerr (int ,int ) ;
 TYPE_1__* sigalg_lookup_tbl ;

int tls1_set_sigalgs(CERT *c, const int *psig_nids, size_t salglen, int client)
{
    uint16_t *sigalgs, *sptr;
    size_t i;

    if (salglen & 1)
        return 0;
    if ((sigalgs = OPENSSL_malloc((salglen / 2) * sizeof(*sigalgs))) == ((void*)0)) {
        SSLerr(SSL_F_TLS1_SET_SIGALGS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0, sptr = sigalgs; i < salglen; i += 2) {
        size_t j;
        const SIGALG_LOOKUP *curr;
        int md_id = *psig_nids++;
        int sig_id = *psig_nids++;

        for (j = 0, curr = sigalg_lookup_tbl; j < OSSL_NELEM(sigalg_lookup_tbl);
             j++, curr++) {
            if (curr->hash == md_id && curr->sig == sig_id) {
                *sptr++ = curr->sigalg;
                break;
            }
        }

        if (j == OSSL_NELEM(sigalg_lookup_tbl))
            goto err;
    }

    if (client) {
        OPENSSL_free(c->client_sigalgs);
        c->client_sigalgs = sigalgs;
        c->client_sigalgslen = salglen / 2;
    } else {
        OPENSSL_free(c->conf_sigalgs);
        c->conf_sigalgs = sigalgs;
        c->conf_sigalgslen = salglen / 2;
    }

    return 1;

 err:
    OPENSSL_free(sigalgs);
    return 0;
}
