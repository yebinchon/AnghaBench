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
struct TYPE_2__ {struct shared_secret_cache_key* data; struct shared_secret_cache_key* key; int /*<<< orphan*/  hash; int /*<<< orphan*/  lock; } ;
struct shared_secret_cache_key {TYPE_1__ entry; struct shared_secret_cache_key* key; } ;
typedef  struct shared_secret_cache_key uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct slabhash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNSCRYPT_SHARED_SECRET_KEY_LENGTH ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  crypto_box_BEFORENMBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct shared_secret_cache_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct shared_secret_cache_key* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shared_secret_cache_key*,struct shared_secret_cache_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct slabhash*,int /*<<< orphan*/ ,TYPE_1__*,struct shared_secret_cache_key*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct slabhash *cache,
                                uint8_t key[DNSCRYPT_SHARED_SECRET_KEY_LENGTH],
                                uint32_t hash,
                                uint8_t nmkey[crypto_box_BEFORENMBYTES])
{
    struct shared_secret_cache_key* k =
        (struct shared_secret_cache_key*)FUNC0(1, sizeof(*k));
    uint8_t* d = FUNC3(crypto_box_BEFORENMBYTES);
    if(!k || !d) {
        FUNC1(k);
        FUNC1(d);
        return;
    }
    FUNC4(d, nmkey, crypto_box_BEFORENMBYTES);
    FUNC2(&k->entry.lock);
    FUNC4(k->key, key, DNSCRYPT_SHARED_SECRET_KEY_LENGTH);
    k->entry.hash = hash;
    k->entry.key = k;
    k->entry.data = d;
    FUNC5(cache,
                    hash, &k->entry,
                    d,
                    NULL);
}