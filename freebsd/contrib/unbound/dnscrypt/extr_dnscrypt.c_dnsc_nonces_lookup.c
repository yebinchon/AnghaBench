
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct slabhash {int dummy; } ;
struct TYPE_2__ {int hash; } ;
struct nonce_cache_key {int client_publickey; int magic_query; int nonce; TYPE_1__ entry; } ;
struct lruhash_entry {int dummy; } ;
typedef int k ;


 int DNSCRYPT_MAGIC_HEADER_LEN ;
 int crypto_box_HALF_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct nonce_cache_key*,int ,int) ;
 struct lruhash_entry* slabhash_lookup (struct slabhash*,int ,struct nonce_cache_key*,int ) ;

__attribute__((used)) static struct lruhash_entry*
dnsc_nonces_lookup(struct slabhash* cache,
                   const uint8_t nonce[crypto_box_HALF_NONCEBYTES],
                   const uint8_t magic_query[DNSCRYPT_MAGIC_HEADER_LEN],
                   const uint8_t pk[crypto_box_PUBLICKEYBYTES],
                   uint32_t hash)
{
    struct nonce_cache_key k;
    memset(&k, 0, sizeof(k));
    k.entry.hash = hash;
    memcpy(k.nonce, nonce, crypto_box_HALF_NONCEBYTES);
    memcpy(k.magic_query, magic_query, DNSCRYPT_MAGIC_HEADER_LEN);
    memcpy(k.client_publickey, pk, crypto_box_PUBLICKEYBYTES);

    return slabhash_lookup(cache, hash, &k, 0);
}
