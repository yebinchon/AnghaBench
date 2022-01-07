
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ SSL_CIPHER ;


 TYPE_1__ const* OBJ_bsearch_ssl_cipher_id (TYPE_1__*,int ,int ) ;
 int SSL3_NUM_CIPHERS ;
 int SSL3_NUM_SCSVS ;
 int TLS13_NUM_CIPHERS ;
 int ssl3_ciphers ;
 int ssl3_scsvs ;
 int tls13_ciphers ;

const SSL_CIPHER *ssl3_get_cipher_by_id(uint32_t id)
{
    SSL_CIPHER c;
    const SSL_CIPHER *cp;

    c.id = id;
    cp = OBJ_bsearch_ssl_cipher_id(&c, tls13_ciphers, TLS13_NUM_CIPHERS);
    if (cp != ((void*)0))
        return cp;
    cp = OBJ_bsearch_ssl_cipher_id(&c, ssl3_ciphers, SSL3_NUM_CIPHERS);
    if (cp != ((void*)0))
        return cp;
    return OBJ_bsearch_ssl_cipher_id(&c, ssl3_scsvs, SSL3_NUM_SCSVS);
}
