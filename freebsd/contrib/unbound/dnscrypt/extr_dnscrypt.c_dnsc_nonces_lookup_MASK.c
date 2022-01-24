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
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct nonce_cache_key {int /*<<< orphan*/  client_publickey; int /*<<< orphan*/  magic_query; int /*<<< orphan*/  nonce; TYPE_1__ entry; } ;
struct lruhash_entry {int dummy; } ;
typedef  int /*<<< orphan*/  k ;

/* Variables and functions */
 int /*<<< orphan*/  DNSCRYPT_MAGIC_HEADER_LEN ; 
 int /*<<< orphan*/  crypto_box_HALF_NONCEBYTES ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nonce_cache_key*,int /*<<< orphan*/ ,int) ; 
 struct lruhash_entry* FUNC2 (struct slabhash*,int /*<<< orphan*/ ,struct nonce_cache_key*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lruhash_entry*
FUNC3(struct slabhash* cache,
                   const uint8_t nonce[crypto_box_HALF_NONCEBYTES],
                   const uint8_t magic_query[DNSCRYPT_MAGIC_HEADER_LEN],
                   const uint8_t pk[crypto_box_PUBLICKEYBYTES],
                   uint32_t hash)
{
    struct nonce_cache_key k;
    FUNC1(&k, 0, sizeof(k));
    k.entry.hash = hash;
    FUNC0(k.nonce, nonce, crypto_box_HALF_NONCEBYTES);
    FUNC0(k.magic_query, magic_query, DNSCRYPT_MAGIC_HEADER_LEN);
    FUNC0(k.client_publickey, pk, crypto_box_PUBLICKEYBYTES);

    return FUNC2(cache, hash, &k, 0);
}