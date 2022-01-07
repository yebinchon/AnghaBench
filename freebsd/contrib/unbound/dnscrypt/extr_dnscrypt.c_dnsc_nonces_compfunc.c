
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nonce_cache_key {int client_publickey; int magic_query; int nonce; } ;


 int DNSCRYPT_MAGIC_HEADER_LEN ;
 int crypto_box_HALF_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ sodium_memcmp (int ,int ,int ) ;

int
dnsc_nonces_compfunc(void *m1, void *m2)
{
    struct nonce_cache_key *k1 = m1, *k2 = m2;
    return
        sodium_memcmp(
            k1->nonce,
            k2->nonce,
            crypto_box_HALF_NONCEBYTES) != 0 ||
        sodium_memcmp(
            k1->magic_query,
            k2->magic_query,
            DNSCRYPT_MAGIC_HEADER_LEN) != 0 ||
        sodium_memcmp(
            k1->client_publickey, k2->client_publickey,
            crypto_box_PUBLICKEYBYTES) != 0;
}
