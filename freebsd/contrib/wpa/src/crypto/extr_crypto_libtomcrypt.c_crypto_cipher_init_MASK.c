#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {size_t keylen; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int /*<<< orphan*/  cbc; TYPE_1__ rc4; } ;
struct crypto_cipher {int rc4; TYPE_2__ u; } ;
typedef  enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_3DES 132 
#define  CRYPTO_CIPHER_ALG_AES 131 
#define  CRYPTO_CIPHER_ALG_DES 130 
#define  CRYPTO_CIPHER_ALG_RC2 129 
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int CRYPT_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 struct crypto_cipher* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct crypto_cipher * FUNC7(enum crypto_cipher_alg alg,
					  const u8 *iv, const u8 *key,
					  size_t key_len)
{
	struct crypto_cipher *ctx;
	int idx, res, rc4 = 0;

	switch (alg) {
	case CRYPTO_CIPHER_ALG_AES:
		idx = FUNC2("aes");
		break;
	case CRYPTO_CIPHER_ALG_3DES:
		idx = FUNC2("3des");
		break;
	case CRYPTO_CIPHER_ALG_DES:
		idx = FUNC2("des");
		break;
	case CRYPTO_CIPHER_ALG_RC2:
		idx = FUNC2("rc2");
		break;
	case CRYPTO_CIPHER_ALG_RC4:
		idx = -1;
		rc4 = 1;
		break;
	default:
		return NULL;
	}

	ctx = FUNC5(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;

	if (rc4) {
		ctx->rc4 = 1;
		if (key_len > sizeof(ctx->u.rc4.key)) {
			FUNC3(ctx);
			return NULL;
		}
		ctx->u.rc4.keylen = key_len;
		FUNC4(ctx->u.rc4.key, key, key_len);
	} else {
		res = FUNC0(idx, iv, key, key_len, 0, &ctx->u.cbc);
		if (res != CRYPT_OK) {
			FUNC6(MSG_DEBUG, "LibTomCrypt: Cipher start "
				   "failed: %s", FUNC1(res));
			FUNC3(ctx);
			return NULL;
		}
	}

	return ctx;
}