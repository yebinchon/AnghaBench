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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  sha256; int /*<<< orphan*/  sha1; int /*<<< orphan*/  md5; int /*<<< orphan*/  sha512; int /*<<< orphan*/  sha384; } ;
struct crypto_hash {int alg; TYPE_1__ u; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  k_pad ;

/* Variables and functions */
#define  CRYPTO_HASH_ALG_HMAC_MD5 135 
#define  CRYPTO_HASH_ALG_HMAC_SHA1 134 
#define  CRYPTO_HASH_ALG_HMAC_SHA256 133 
#define  CRYPTO_HASH_ALG_MD5 132 
#define  CRYPTO_HASH_ALG_SHA1 131 
#define  CRYPTO_HASH_ALG_SHA256 130 
#define  CRYPTO_HASH_ALG_SHA384 129 
#define  CRYPTO_HASH_ALG_SHA512 128 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_hash*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int*) ; 

int FUNC15(struct crypto_hash *ctx, u8 *mac, size_t *len)
{
	u8 k_pad[64];
	size_t i;

	if (ctx == NULL)
		return -2;

	if (mac == NULL || len == NULL) {
		FUNC7(ctx);
		return 0;
	}

	switch (ctx->alg) {
	case CRYPTO_HASH_ALG_MD5:
		if (*len < 16) {
			*len = 16;
			FUNC7(ctx);
			return -1;
		}
		*len = 16;
		FUNC0(mac, &ctx->u.md5);
		break;
	case CRYPTO_HASH_ALG_SHA1:
		if (*len < 20) {
			*len = 20;
			FUNC7(ctx);
			return -1;
		}
		*len = 20;
		FUNC3(mac, &ctx->u.sha1);
		break;
#ifdef CONFIG_SHA256
	case CRYPTO_HASH_ALG_SHA256:
		if (*len < 32) {
			*len = 32;
			os_free(ctx);
			return -1;
		}
		*len = 32;
		sha256_done(&ctx->u.sha256, mac);
		break;
#endif /* CONFIG_SHA256 */
#ifdef CONFIG_INTERNAL_SHA384
	case CRYPTO_HASH_ALG_SHA384:
		if (*len < 48) {
			*len = 48;
			os_free(ctx);
			return -1;
		}
		*len = 48;
		sha384_done(&ctx->u.sha384, mac);
		break;
#endif /* CONFIG_INTERNAL_SHA384 */
#ifdef CONFIG_INTERNAL_SHA512
	case CRYPTO_HASH_ALG_SHA512:
		if (*len < 64) {
			*len = 64;
			os_free(ctx);
			return -1;
		}
		*len = 64;
		sha512_done(&ctx->u.sha512, mac);
		break;
#endif /* CONFIG_INTERNAL_SHA512 */
	case CRYPTO_HASH_ALG_HMAC_MD5:
		if (*len < 16) {
			*len = 16;
			FUNC7(ctx);
			return -1;
		}
		*len = 16;

		FUNC0(mac, &ctx->u.md5);

		FUNC8(k_pad, ctx->key, ctx->key_len);
		FUNC9(k_pad + ctx->key_len, 0,
			  sizeof(k_pad) - ctx->key_len);
		for (i = 0; i < sizeof(k_pad); i++)
			k_pad[i] ^= 0x5c;
		FUNC1(&ctx->u.md5);
		FUNC2(&ctx->u.md5, k_pad, sizeof(k_pad));
		FUNC2(&ctx->u.md5, mac, 16);
		FUNC0(mac, &ctx->u.md5);
		break;
	case CRYPTO_HASH_ALG_HMAC_SHA1:
		if (*len < 20) {
			*len = 20;
			FUNC7(ctx);
			return -1;
		}
		*len = 20;

		FUNC3(mac, &ctx->u.sha1);

		FUNC8(k_pad, ctx->key, ctx->key_len);
		FUNC9(k_pad + ctx->key_len, 0,
			  sizeof(k_pad) - ctx->key_len);
		for (i = 0; i < sizeof(k_pad); i++)
			k_pad[i] ^= 0x5c;
		FUNC4(&ctx->u.sha1);
		FUNC5(&ctx->u.sha1, k_pad, sizeof(k_pad));
		FUNC5(&ctx->u.sha1, mac, 20);
		FUNC3(mac, &ctx->u.sha1);
		break;
#ifdef CONFIG_SHA256
	case CRYPTO_HASH_ALG_HMAC_SHA256:
		if (*len < 32) {
			*len = 32;
			os_free(ctx);
			return -1;
		}
		*len = 32;

		sha256_done(&ctx->u.sha256, mac);

		os_memcpy(k_pad, ctx->key, ctx->key_len);
		os_memset(k_pad + ctx->key_len, 0,
			  sizeof(k_pad) - ctx->key_len);
		for (i = 0; i < sizeof(k_pad); i++)
			k_pad[i] ^= 0x5c;
		sha256_init(&ctx->u.sha256);
		sha256_process(&ctx->u.sha256, k_pad, sizeof(k_pad));
		sha256_process(&ctx->u.sha256, mac, 32);
		sha256_done(&ctx->u.sha256, mac);
		break;
#endif /* CONFIG_SHA256 */
	default:
		FUNC7(ctx);
		return -1;
	}

	FUNC7(ctx);

	if (FUNC6())
		return -1;

	return 0;
}