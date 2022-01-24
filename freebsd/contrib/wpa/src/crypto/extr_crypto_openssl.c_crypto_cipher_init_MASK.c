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
struct crypto_cipher {void* dec; void* enc; } ;
typedef  enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_3DES 132 
#define  CRYPTO_CIPHER_ALG_AES 131 
#define  CRYPTO_CIPHER_ALG_DES 130 
#define  CRYPTO_CIPHER_ALG_RC2 129 
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_cipher*) ; 
 struct crypto_cipher* FUNC14 (int) ; 

struct crypto_cipher * FUNC15(enum crypto_cipher_alg alg,
					  const u8 *iv, const u8 *key,
					  size_t key_len)
{
	struct crypto_cipher *ctx;
	const EVP_CIPHER *cipher;

	ctx = FUNC14(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;

	switch (alg) {
#ifndef CONFIG_NO_RC4
#ifndef OPENSSL_NO_RC4
	case CRYPTO_CIPHER_ALG_RC4:
		cipher = FUNC12();
		break;
#endif /* OPENSSL_NO_RC4 */
#endif /* CONFIG_NO_RC4 */
#ifndef OPENSSL_NO_AES
	case CRYPTO_CIPHER_ALG_AES:
		switch (key_len) {
		case 16:
			cipher = FUNC6();
			break;
#ifndef OPENSSL_IS_BORINGSSL
		case 24:
			cipher = FUNC7();
			break;
#endif /* OPENSSL_IS_BORINGSSL */
		case 32:
			cipher = FUNC8();
			break;
		default:
			FUNC13(ctx);
			return NULL;
		}
		break;
#endif /* OPENSSL_NO_AES */
#ifndef OPENSSL_NO_DES
	case CRYPTO_CIPHER_ALG_3DES:
		cipher = FUNC10();
		break;
	case CRYPTO_CIPHER_ALG_DES:
		cipher = FUNC9();
		break;
#endif /* OPENSSL_NO_DES */
#ifndef OPENSSL_NO_RC2
	case CRYPTO_CIPHER_ALG_RC2:
		cipher = FUNC11();
		break;
#endif /* OPENSSL_NO_RC2 */
	default:
		FUNC13(ctx);
		return NULL;
	}

	if (!(ctx->enc = FUNC1()) ||
	    !FUNC3(ctx->enc, 0) ||
	    !FUNC5(ctx->enc, cipher, NULL, NULL, NULL) ||
	    !FUNC2(ctx->enc, key_len) ||
	    !FUNC5(ctx->enc, NULL, NULL, key, iv)) {
		if (ctx->enc)
			FUNC0(ctx->enc);
		FUNC13(ctx);
		return NULL;
	}

	if (!(ctx->dec = FUNC1()) ||
	    !FUNC3(ctx->dec, 0) ||
	    !FUNC4(ctx->dec, cipher, NULL, NULL, NULL) ||
	    !FUNC2(ctx->dec, key_len) ||
	    !FUNC4(ctx->dec, NULL, NULL, key, iv)) {
		FUNC0(ctx->enc);
		if (ctx->dec)
			FUNC0(ctx->dec);
		FUNC13(ctx);
		return NULL;
	}

	return ctx;
}