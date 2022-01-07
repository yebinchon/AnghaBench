
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hash ;
struct TYPE_8__ {TYPE_1__* session; } ;
struct TYPE_7__ {int master_key_length; int master_key; } ;
typedef TYPE_2__ SSL ;


 int EVP_MAX_MD_SIZE ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 size_t TLS1_FINISH_MAC_LENGTH ;
 int ssl3_digest_cached_records (TYPE_2__*,int ) ;
 int ssl_handshake_hash (TYPE_2__*,unsigned char*,int,size_t*) ;
 int tls1_PRF (TYPE_2__*,char const*,size_t,unsigned char*,size_t,int *,int ,int *,int ,int *,int ,int ,int ,unsigned char*,size_t,int) ;

size_t tls1_final_finish_mac(SSL *s, const char *str, size_t slen,
                             unsigned char *out)
{
    size_t hashlen;
    unsigned char hash[EVP_MAX_MD_SIZE];

    if (!ssl3_digest_cached_records(s, 0)) {

        return 0;
    }

    if (!ssl_handshake_hash(s, hash, sizeof(hash), &hashlen)) {

        return 0;
    }

    if (!tls1_PRF(s, str, slen, hash, hashlen, ((void*)0), 0, ((void*)0), 0, ((void*)0), 0,
                  s->session->master_key, s->session->master_key_length,
                  out, TLS1_FINISH_MAC_LENGTH, 1)) {

        return 0;
    }
    OPENSSL_cleanse(hash, hashlen);
    return TLS1_FINISH_MAC_LENGTH;
}
