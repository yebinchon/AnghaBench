#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sldns_buffer {int dummy; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/ * data; } ;
struct dnscrypt_query_header {int /*<<< orphan*/ * nonce; int /*<<< orphan*/  publickey; } ;
struct dnsc_env {int /*<<< orphan*/  shared_secrets_cache; int /*<<< orphan*/  shared_secrets_cache_lock; int /*<<< orphan*/  num_query_dnscrypt_secret_missed_cache; int /*<<< orphan*/  nonces_cache_lock; int /*<<< orphan*/  nonces_cache; int /*<<< orphan*/  num_query_dnscrypt_replay; } ;
struct TYPE_5__ {int* es_version; TYPE_1__* keypair; int /*<<< orphan*/  magic_query; } ;
typedef  TYPE_2__ dnsccert ;
struct TYPE_4__ {int /*<<< orphan*/  crypt_secretkey; } ;

/* Variables and functions */
 int DNSCRYPT_QUERY_BOX_OFFSET ; 
 size_t DNSCRYPT_QUERY_HEADER_SIZE ; 
 int DNSCRYPT_SHARED_SECRET_KEY_LENGTH ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_HALF_NONCEBYTES ; 
 int crypto_box_NONCEBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lruhash_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lruhash_entry* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int* FUNC15 (struct sldns_buffer*,size_t) ; 
 int /*<<< orphan*/ * FUNC16 (struct sldns_buffer*) ; 
 size_t FUNC17 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct sldns_buffer*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct sldns_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct dnsc_env* env,
                        const dnsccert *cert,
                        uint8_t client_nonce[crypto_box_HALF_NONCEBYTES],
                        uint8_t nmkey[crypto_box_BEFORENMBYTES],
                        struct sldns_buffer* buffer)
{
    size_t len = FUNC17(buffer);
    uint8_t *const buf = FUNC16(buffer);
    uint8_t nonce[crypto_box_NONCEBYTES];
    struct dnscrypt_query_header *query_header;
    // shared secret cache
    uint8_t key[DNSCRYPT_SHARED_SECRET_KEY_LENGTH];
    struct lruhash_entry* entry;
    uint32_t hash;

    uint32_t nonce_hash;

    if (len <= DNSCRYPT_QUERY_HEADER_SIZE) {
        return -1;
    }

    query_header = (struct dnscrypt_query_header *)buf;

    /* Detect replay attacks */
    nonce_hash = FUNC5(
        query_header->nonce,
        cert->magic_query,
        query_header->publickey);

    FUNC10(&env->nonces_cache_lock);
    entry = FUNC6(
        env->nonces_cache,
        query_header->nonce,
        cert->magic_query,
        query_header->publickey,
        nonce_hash);

    if(entry) {
        FUNC12(&entry->lock);
        env->num_query_dnscrypt_replay++;
        FUNC11(&env->nonces_cache_lock);
        return -1;
    }

    FUNC4(
        env->nonces_cache,
        query_header->nonce,
        cert->magic_query,
        query_header->publickey,
        nonce_hash);
    FUNC11(&env->nonces_cache_lock);

    /* Find existing shared secret */
    hash = FUNC8(key,
                                         cert->es_version[1],
                                         query_header->publickey,
                                         cert->keypair->crypt_secretkey);
    entry = FUNC9(env->shared_secrets_cache,
                                       key,
                                       hash);

    if(!entry) {
        FUNC10(&env->shared_secrets_cache_lock);
        env->num_query_dnscrypt_secret_missed_cache++;
        FUNC11(&env->shared_secrets_cache_lock);
        if(cert->es_version[1] == 2) {
#ifdef USE_DNSCRYPT_XCHACHA20
            if (crypto_box_curve25519xchacha20poly1305_beforenm(
                        nmkey, query_header->publickey,
                        cert->keypair->crypt_secretkey) != 0) {
                return -1;
            }
#else
            return -1;
#endif
    } else {
        if (FUNC0(nmkey,
                                query_header->publickey,
                                cert->keypair->crypt_secretkey) != 0) {
            return -1;
        }
    }
    // Cache the shared secret we just computed.
    FUNC7(env->shared_secrets_cache,
                                    key,
                                    hash,
                                    nmkey);
    } else {
        /* copy shared secret and unlock entry */
        FUNC13(nmkey, entry->data, crypto_box_BEFORENMBYTES);
        FUNC12(&entry->lock);
    }

    FUNC13(nonce, query_header->nonce, crypto_box_HALF_NONCEBYTES);
    FUNC14(nonce + crypto_box_HALF_NONCEBYTES, 0, crypto_box_HALF_NONCEBYTES);

    if(cert->es_version[1] == 2) {
#ifdef USE_DNSCRYPT_XCHACHA20
        if (crypto_box_curve25519xchacha20poly1305_open_easy_afternm
                (buf,
                buf + DNSCRYPT_QUERY_BOX_OFFSET,
                len - DNSCRYPT_QUERY_BOX_OFFSET, nonce,
                nmkey) != 0) {
            return -1;
        }
#else
        return -1;
#endif
    } else {
        if (FUNC3
            (buf,
             buf + DNSCRYPT_QUERY_BOX_OFFSET,
             len - DNSCRYPT_QUERY_BOX_OFFSET, nonce,
             nmkey) != 0) {
            return -1;
        }
    }

    len -= DNSCRYPT_QUERY_HEADER_SIZE;

    while (*FUNC15(buffer, --len) == 0)
        ;

    if (*FUNC15(buffer, len) != 0x80) {
        return -1;
    }

    FUNC13(client_nonce, nonce, crypto_box_HALF_NONCEBYTES);

    FUNC19(buffer, 0);
    FUNC18(buffer, len);

    return 0;
}