
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* s3; } ;
struct TYPE_6__ {int * handshake_buffer; int * handshake_dgst; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_MD ;


 int BIO_free (int *) ;
 long BIO_get_mem_data (int *,void**) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,void*,long) ;
 int * EVP_MD_CTX_new () ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_DIGEST_CACHED_RECORDS ;
 int SSL_R_BAD_HANDSHAKE_LENGTH ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int * ssl_handshake_md (TYPE_2__*) ;

int ssl3_digest_cached_records(SSL *s, int keep)
{
    const EVP_MD *md;
    long hdatalen;
    void *hdata;

    if (s->s3->handshake_dgst == ((void*)0)) {
        hdatalen = BIO_get_mem_data(s->s3->handshake_buffer, &hdata);
        if (hdatalen <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     SSL_R_BAD_HANDSHAKE_LENGTH);
            return 0;
        }

        s->s3->handshake_dgst = EVP_MD_CTX_new();
        if (s->s3->handshake_dgst == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     ERR_R_MALLOC_FAILURE);
            return 0;
        }

        md = ssl_handshake_md(s);
        if (md == ((void*)0) || !EVP_DigestInit_ex(s->s3->handshake_dgst, md, ((void*)0))
            || !EVP_DigestUpdate(s->s3->handshake_dgst, hdata, hdatalen)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_DIGEST_CACHED_RECORDS,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    if (keep == 0) {
        BIO_free(s->s3->handshake_buffer);
        s->s3->handshake_buffer = ((void*)0);
    }

    return 1;
}
