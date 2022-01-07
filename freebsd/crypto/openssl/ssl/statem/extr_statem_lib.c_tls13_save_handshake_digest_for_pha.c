
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* s3; int * pha_dgst; } ;
struct TYPE_6__ {int handshake_dgst; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_MD_CTX_copy_ex (int *,int ) ;
 int * EVP_MD_CTX_new () ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int ssl3_digest_cached_records (TYPE_2__*,int) ;

int tls13_save_handshake_digest_for_pha(SSL *s)
{
    if (s->pha_dgst == ((void*)0)) {
        if (!ssl3_digest_cached_records(s, 1))

            return 0;

        s->pha_dgst = EVP_MD_CTX_new();
        if (s->pha_dgst == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        if (!EVP_MD_CTX_copy_ex(s->pha_dgst,
                                s->s3->handshake_dgst)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    return 1;
}
