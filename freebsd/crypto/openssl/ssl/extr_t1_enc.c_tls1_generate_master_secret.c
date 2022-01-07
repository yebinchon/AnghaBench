
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash ;
struct TYPE_10__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_9__ {int flags; scalar_t__ master_key; } ;
struct TYPE_8__ {unsigned char* client_random; int * server_random; } ;
typedef TYPE_3__ SSL ;


 int BIO_dump_fp (int ,char*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 size_t SSL3_MASTER_SECRET_SIZE ;
 size_t SSL3_RANDOM_SIZE ;
 int SSL_SESS_FLAG_EXTMS ;
 int TLS_MD_EXTENDED_MASTER_SECRET_CONST ;
 int TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE ;
 int TLS_MD_MASTER_SECRET_CONST ;
 int TLS_MD_MASTER_SECRET_CONST_SIZE ;
 int fprintf (int ,char*) ;
 int ssl3_digest_cached_records (TYPE_3__*,int) ;
 int ssl_handshake_hash (TYPE_3__*,unsigned char*,int,size_t*) ;
 int stderr ;
 int tls1_PRF (TYPE_3__*,int ,int ,unsigned char*,size_t,int *,int ,int *,size_t,int *,int ,unsigned char*,size_t,unsigned char*,size_t,int) ;

int tls1_generate_master_secret(SSL *s, unsigned char *out, unsigned char *p,
                                size_t len, size_t *secret_size)
{
    if (s->session->flags & SSL_SESS_FLAG_EXTMS) {
        unsigned char hash[EVP_MAX_MD_SIZE * 2];
        size_t hashlen;





        if (!ssl3_digest_cached_records(s, 1)
                || !ssl_handshake_hash(s, hash, sizeof(hash), &hashlen)) {

            return 0;
        }




        if (!tls1_PRF(s,
                      TLS_MD_EXTENDED_MASTER_SECRET_CONST,
                      TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE,
                      hash, hashlen,
                      ((void*)0), 0,
                      ((void*)0), 0,
                      ((void*)0), 0, p, len, out,
                      SSL3_MASTER_SECRET_SIZE, 1)) {

            return 0;
        }
        OPENSSL_cleanse(hash, hashlen);
    } else {
        if (!tls1_PRF(s,
                      TLS_MD_MASTER_SECRET_CONST,
                      TLS_MD_MASTER_SECRET_CONST_SIZE,
                      s->s3->client_random, SSL3_RANDOM_SIZE,
                      ((void*)0), 0,
                      s->s3->server_random, SSL3_RANDOM_SIZE,
                      ((void*)0), 0, p, len, out,
                      SSL3_MASTER_SECRET_SIZE, 1)) {

            return 0;
        }
    }
    *secret_size = SSL3_MASTER_SECRET_SIZE;
    return 1;
}
