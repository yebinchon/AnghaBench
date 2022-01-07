
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct shared_secret_cache_key* data; struct shared_secret_cache_key* key; int hash; int lock; } ;
struct shared_secret_cache_key {TYPE_1__ entry; struct shared_secret_cache_key* key; } ;
typedef struct shared_secret_cache_key uint8_t ;
typedef int uint32_t ;
struct slabhash {int dummy; } ;


 int DNSCRYPT_SHARED_SECRET_KEY_LENGTH ;
 scalar_t__ calloc (int,int) ;
 int crypto_box_BEFORENMBYTES ;
 int free (struct shared_secret_cache_key*) ;
 int lock_rw_init (int *) ;
 struct shared_secret_cache_key* malloc (int ) ;
 int memcpy (struct shared_secret_cache_key*,struct shared_secret_cache_key*,int ) ;
 int slabhash_insert (struct slabhash*,int ,TYPE_1__*,struct shared_secret_cache_key*,int *) ;

__attribute__((used)) static void
dnsc_shared_secret_cache_insert(struct slabhash *cache,
                                uint8_t key[DNSCRYPT_SHARED_SECRET_KEY_LENGTH],
                                uint32_t hash,
                                uint8_t nmkey[crypto_box_BEFORENMBYTES])
{
    struct shared_secret_cache_key* k =
        (struct shared_secret_cache_key*)calloc(1, sizeof(*k));
    uint8_t* d = malloc(crypto_box_BEFORENMBYTES);
    if(!k || !d) {
        free(k);
        free(d);
        return;
    }
    memcpy(d, nmkey, crypto_box_BEFORENMBYTES);
    lock_rw_init(&k->entry.lock);
    memcpy(k->key, key, DNSCRYPT_SHARED_SECRET_KEY_LENGTH);
    k->entry.hash = hash;
    k->entry.key = k;
    k->entry.data = d;
    slabhash_insert(cache,
                    hash, &k->entry,
                    d,
                    ((void*)0));
}
