#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct slabhash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; struct nonce_cache_key* key; int /*<<< orphan*/  hash; int /*<<< orphan*/  lock; } ;
struct nonce_cache_key {TYPE_1__ entry; int /*<<< orphan*/  client_publickey; int /*<<< orphan*/  magic_query; int /*<<< orphan*/  nonce; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNSCRYPT_MAGIC_HEADER_LEN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  crypto_box_HALF_NONCEBYTES ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct nonce_cache_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slabhash*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct slabhash *cache,
                        const uint8_t nonce[crypto_box_HALF_NONCEBYTES],
                        const uint8_t magic_query[DNSCRYPT_MAGIC_HEADER_LEN],
                        const uint8_t pk[crypto_box_PUBLICKEYBYTES],
                        uint32_t hash)
{
    struct nonce_cache_key* k =
        (struct nonce_cache_key*)FUNC0(1, sizeof(*k));
    if(!k) {
        FUNC1(k);
        return;
    }
    FUNC2(&k->entry.lock);
    FUNC3(k->nonce, nonce, crypto_box_HALF_NONCEBYTES);
    FUNC3(k->magic_query, magic_query, DNSCRYPT_MAGIC_HEADER_LEN);
    FUNC3(k->client_publickey, pk, crypto_box_PUBLICKEYBYTES);
    k->entry.hash = hash;
    k->entry.key = k;
    k->entry.data = NULL;
    FUNC4(cache,
                    hash, &k->entry,
                    NULL,
                    NULL);
}