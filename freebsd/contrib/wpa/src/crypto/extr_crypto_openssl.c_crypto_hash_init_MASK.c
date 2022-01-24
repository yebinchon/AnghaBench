#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_hash {int /*<<< orphan*/  ctx; } ;
typedef  enum crypto_hash_alg { ____Placeholder_crypto_hash_alg } crypto_hash_alg ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
#define  CRYPTO_HASH_ALG_HMAC_MD5 130 
#define  CRYPTO_HASH_ALG_HMAC_SHA1 129 
#define  CRYPTO_HASH_ALG_HMAC_SHA256 128 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_hash*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_hash*) ; 
 struct crypto_hash* FUNC8 (int) ; 

struct crypto_hash * FUNC9(enum crypto_hash_alg alg, const u8 *key,
				      size_t key_len)
{
	struct crypto_hash *ctx;
	const EVP_MD *md;

	switch (alg) {
#ifndef OPENSSL_NO_MD5
	case CRYPTO_HASH_ALG_HMAC_MD5:
		md = FUNC0();
		break;
#endif /* OPENSSL_NO_MD5 */
#ifndef OPENSSL_NO_SHA
	case CRYPTO_HASH_ALG_HMAC_SHA1:
		md = FUNC1();
		break;
#endif /* OPENSSL_NO_SHA */
#ifndef OPENSSL_NO_SHA256
#ifdef CONFIG_SHA256
	case CRYPTO_HASH_ALG_HMAC_SHA256:
		md = EVP_sha256();
		break;
#endif /* CONFIG_SHA256 */
#endif /* OPENSSL_NO_SHA256 */
	default:
		return NULL;
	}

	ctx = FUNC8(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;
	ctx->ctx = FUNC4();
	if (!ctx->ctx) {
		FUNC7(ctx);
		return NULL;
	}

	if (FUNC5(ctx->ctx, key, key_len, md, NULL) != 1) {
		FUNC3(ctx->ctx);
		FUNC6(ctx, sizeof(*ctx));
		return NULL;
	}

	return ctx;
}