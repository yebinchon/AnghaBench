
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct slabhash {int dummy; } ;
struct TYPE_2__ {int * data; struct nonce_cache_key* key; int hash; int lock; } ;
struct nonce_cache_key {TYPE_1__ entry; int client_publickey; int magic_query; int nonce; } ;


 int DNSCRYPT_MAGIC_HEADER_LEN ;
 scalar_t__ calloc (int,int) ;
 int crypto_box_HALF_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int free (struct nonce_cache_key*) ;
 int lock_rw_init (int *) ;
 int memcpy (int ,int const*,int ) ;
 int slabhash_insert (struct slabhash*,int ,TYPE_1__*,int *,int *) ;

__attribute__((used)) static void
dnsc_nonce_cache_insert(struct slabhash *cache,
                        const uint8_t nonce[crypto_box_HALF_NONCEBYTES],
                        const uint8_t magic_query[DNSCRYPT_MAGIC_HEADER_LEN],
                        const uint8_t pk[crypto_box_PUBLICKEYBYTES],
                        uint32_t hash)
{
    struct nonce_cache_key* k =
        (struct nonce_cache_key*)calloc(1, sizeof(*k));
    if(!k) {
        free(k);
        return;
    }
    lock_rw_init(&k->entry.lock);
    memcpy(k->nonce, nonce, crypto_box_HALF_NONCEBYTES);
    memcpy(k->magic_query, magic_query, DNSCRYPT_MAGIC_HEADER_LEN);
    memcpy(k->client_publickey, pk, crypto_box_PUBLICKEYBYTES);
    k->entry.hash = hash;
    k->entry.key = k;
    k->entry.data = ((void*)0);
    slabhash_insert(cache,
                    hash, &k->entry,
                    ((void*)0),
                    ((void*)0));
}
