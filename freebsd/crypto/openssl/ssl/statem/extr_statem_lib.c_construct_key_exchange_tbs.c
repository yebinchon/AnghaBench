
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* s3; } ;
struct TYPE_5__ {void const* client_random; void const* server_random; } ;
typedef TYPE_2__ SSL ;


 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_CONSTRUCT_KEY_EXCHANGE_TBS ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int memcpy (unsigned char*,void const*,size_t) ;

size_t construct_key_exchange_tbs(SSL *s, unsigned char **ptbs,
                                  const void *param, size_t paramlen)
{
    size_t tbslen = 2 * SSL3_RANDOM_SIZE + paramlen;
    unsigned char *tbs = OPENSSL_malloc(tbslen);

    if (tbs == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_CONSTRUCT_KEY_EXCHANGE_TBS,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    memcpy(tbs, s->s3->client_random, SSL3_RANDOM_SIZE);
    memcpy(tbs + SSL3_RANDOM_SIZE, s->s3->server_random, SSL3_RANDOM_SIZE);

    memcpy(tbs + SSL3_RANDOM_SIZE * 2, param, paramlen);

    *ptbs = tbs;
    return tbslen;
}
