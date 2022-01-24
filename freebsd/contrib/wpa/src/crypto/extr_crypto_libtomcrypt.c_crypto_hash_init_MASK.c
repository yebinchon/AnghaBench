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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  hmac; int /*<<< orphan*/  md; } ;
struct crypto_hash {int alg; TYPE_1__ u; } ;
typedef  enum crypto_hash_alg { ____Placeholder_crypto_hash_alg } crypto_hash_alg ;

/* Variables and functions */
#define  CRYPTO_HASH_ALG_HMAC_MD5 131 
#define  CRYPTO_HASH_ALG_HMAC_SHA1 130 
#define  CRYPTO_HASH_ALG_MD5 129 
#define  CRYPTO_HASH_ALG_SHA1 128 
 int /*<<< orphan*/  CRYPT_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_hash*) ; 
 struct crypto_hash* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct crypto_hash * FUNC6(enum crypto_hash_alg alg, const u8 *key,
				      size_t key_len)
{
	struct crypto_hash *ctx;

	ctx = FUNC4(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;

	ctx->alg = alg;

	switch (alg) {
	case CRYPTO_HASH_ALG_MD5:
		if (FUNC2(&ctx->u.md) != CRYPT_OK)
			goto fail;
		break;
	case CRYPTO_HASH_ALG_SHA1:
		if (FUNC5(&ctx->u.md) != CRYPT_OK)
			goto fail;
		break;
	case CRYPTO_HASH_ALG_HMAC_MD5:
		if (FUNC1(&ctx->u.hmac, FUNC0("md5"), key, key_len) !=
		    CRYPT_OK)
			goto fail;
		break;
	case CRYPTO_HASH_ALG_HMAC_SHA1:
		if (FUNC1(&ctx->u.hmac, FUNC0("sha1"), key, key_len) !=
		    CRYPT_OK)
			goto fail;
		break;
	default:
		goto fail;
	}

	return ctx;

fail:
	FUNC3(ctx);
	return NULL;
}