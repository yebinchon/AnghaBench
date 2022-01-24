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
struct crypto_cipher {int /*<<< orphan*/  dec; int /*<<< orphan*/  enc; } ;
typedef  scalar_t__ gcry_error_t ;
typedef  enum gcry_cipher_algos { ____Placeholder_gcry_cipher_algos } gcry_cipher_algos ;
typedef  enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_3DES 132 
#define  CRYPTO_CIPHER_ALG_AES 131 
#define  CRYPTO_CIPHER_ALG_DES 130 
#define  CRYPTO_CIPHER_ALG_RC2 129 
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int GCRY_CIPHER_3DES ; 
 int GCRY_CIPHER_AES ; 
 int GCRY_CIPHER_AES192 ; 
 int GCRY_CIPHER_AES256 ; 
 int GCRY_CIPHER_ARCFOUR ; 
 int GCRY_CIPHER_DES ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_CBC ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_STREAM ; 
 int GCRY_CIPHER_RFC2268_128 ; 
 int GCRY_CIPHER_RFC2268_40 ; 
 scalar_t__ GPG_ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_cipher*) ; 
 struct crypto_cipher* FUNC6 (int) ; 

struct crypto_cipher * FUNC7(enum crypto_cipher_alg alg,
					  const u8 *iv, const u8 *key,
					  size_t key_len)
{
	struct crypto_cipher *ctx;
	gcry_error_t res;
	enum gcry_cipher_algos a;
	int ivlen;

	ctx = FUNC6(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;

	switch (alg) {
	case CRYPTO_CIPHER_ALG_RC4:
		a = GCRY_CIPHER_ARCFOUR;
		res = FUNC2(&ctx->enc, a, GCRY_CIPHER_MODE_STREAM,
				       0);
		FUNC2(&ctx->dec, a, GCRY_CIPHER_MODE_STREAM, 0);
		break;
	case CRYPTO_CIPHER_ALG_AES:
		if (key_len == 24)
			a = GCRY_CIPHER_AES192;
		else if (key_len == 32)
			a = GCRY_CIPHER_AES256;
		else
			a = GCRY_CIPHER_AES;
		res = FUNC2(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
		FUNC2(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
		break;
	case CRYPTO_CIPHER_ALG_3DES:
		a = GCRY_CIPHER_3DES;
		res = FUNC2(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
		FUNC2(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
		break;
	case CRYPTO_CIPHER_ALG_DES:
		a = GCRY_CIPHER_DES;
		res = FUNC2(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
		FUNC2(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
		break;
	case CRYPTO_CIPHER_ALG_RC2:
		if (key_len == 5)
			a = GCRY_CIPHER_RFC2268_40;
		else
			a = GCRY_CIPHER_RFC2268_128;
		res = FUNC2(&ctx->enc, a, GCRY_CIPHER_MODE_CBC, 0);
		FUNC2(&ctx->dec, a, GCRY_CIPHER_MODE_CBC, 0);
		break;
	default:
		FUNC5(ctx);
		return NULL;
	}

	if (res != GPG_ERR_NO_ERROR) {
		FUNC5(ctx);
		return NULL;
	}

	if (FUNC4(ctx->enc, key, key_len) != GPG_ERR_NO_ERROR ||
	    FUNC4(ctx->dec, key, key_len) != GPG_ERR_NO_ERROR) {
		FUNC0(ctx->enc);
		FUNC0(ctx->dec);
		FUNC5(ctx);
		return NULL;
	}

	ivlen = FUNC1(a);
	if (FUNC3(ctx->enc, iv, ivlen) != GPG_ERR_NO_ERROR ||
	    FUNC3(ctx->dec, iv, ivlen) != GPG_ERR_NO_ERROR) {
		FUNC0(ctx->enc);
		FUNC0(ctx->dec);
		FUNC5(ctx);
		return NULL;
	}

	return ctx;
}