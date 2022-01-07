
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_14__ {scalar_t__ const sigalg; } ;
struct TYPE_13__ {int * shared_sigalgs; TYPE_2__* s3; scalar_t__ shared_sigalgslen; } ;
struct TYPE_11__ {scalar_t__* valid_flags; int * peer_sigalgs; int * peer_cert_sigalgs; } ;
struct TYPE_12__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ SIGALG_LOOKUP ;


 scalar_t__ CERT_PKEY_SIGN ;
 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS1_SET_SERVER_SIGALGS ;
 size_t SSL_PKEY_NUM ;
 int SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 size_t tls12_get_psigalgs (TYPE_3__*,int,scalar_t__ const**) ;
 TYPE_4__* tls1_get_legacy_sigalg (TYPE_3__*,size_t) ;
 int tls1_process_sigalgs (TYPE_3__*) ;

int tls1_set_server_sigalgs(SSL *s)
{
    size_t i;


    OPENSSL_free(s->shared_sigalgs);
    s->shared_sigalgs = ((void*)0);
    s->shared_sigalgslen = 0;

    for (i = 0; i < SSL_PKEY_NUM; i++)
        s->s3->tmp.valid_flags[i] = 0;




    if (s->s3->tmp.peer_cert_sigalgs == ((void*)0)
            && s->s3->tmp.peer_sigalgs == ((void*)0)) {
        const uint16_t *sent_sigs;
        size_t sent_sigslen = tls12_get_psigalgs(s, 1, &sent_sigs);

        for (i = 0; i < SSL_PKEY_NUM; i++) {
            const SIGALG_LOOKUP *lu = tls1_get_legacy_sigalg(s, i);
            size_t j;

            if (lu == ((void*)0))
                continue;

            for (j = 0; j < sent_sigslen; j++) {
                if (lu->sigalg == sent_sigs[j]) {
                        s->s3->tmp.valid_flags[i] = CERT_PKEY_SIGN;
                        break;
                }
            }
        }
        return 1;
    }

    if (!tls1_process_sigalgs(s)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS1_SET_SERVER_SIGALGS, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (s->shared_sigalgs != ((void*)0))
        return 1;


    SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS1_SET_SERVER_SIGALGS,
             SSL_R_NO_SHARED_SIGNATURE_ALGORITHMS);
    return 0;
}
