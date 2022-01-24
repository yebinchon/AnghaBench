#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/  dk; int /*<<< orphan*/  ek; } ;
struct TYPE_8__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int /*<<< orphan*/  cbc; int /*<<< orphan*/ * ctx_enc; int /*<<< orphan*/ * ctx_dec; } ;
struct TYPE_6__ {size_t keylen; int /*<<< orphan*/  key; } ;
struct TYPE_10__ {TYPE_4__ des; TYPE_3__ des3; TYPE_2__ aes; TYPE_1__ rc4; } ;
struct crypto_cipher {int alg; TYPE_5__ u; } ;
typedef  enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
#define  CRYPTO_CIPHER_ALG_3DES 131 
#define  CRYPTO_CIPHER_ALG_AES 130 
#define  CRYPTO_CIPHER_ALG_DES 129 
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct crypto_cipher* FUNC7 (int) ; 

struct crypto_cipher * FUNC8(enum crypto_cipher_alg alg,
					  const u8 *iv, const u8 *key,
					  size_t key_len)
{
	struct crypto_cipher *ctx;

	ctx = FUNC7(sizeof(*ctx));
	if (ctx == NULL)
		return NULL;

	ctx->alg = alg;

	switch (alg) {
	case CRYPTO_CIPHER_ALG_RC4:
		if (key_len > sizeof(ctx->u.rc4.key)) {
			FUNC5(ctx);
			return NULL;
		}
		ctx->u.rc4.keylen = key_len;
		FUNC6(ctx->u.rc4.key, key, key_len);
		break;
	case CRYPTO_CIPHER_ALG_AES:
		ctx->u.aes.ctx_enc = FUNC2(key, key_len);
		if (ctx->u.aes.ctx_enc == NULL) {
			FUNC5(ctx);
			return NULL;
		}
		ctx->u.aes.ctx_dec = FUNC0(key, key_len);
		if (ctx->u.aes.ctx_dec == NULL) {
			FUNC1(ctx->u.aes.ctx_enc);
			FUNC5(ctx);
			return NULL;
		}
		FUNC6(ctx->u.aes.cbc, iv, AES_BLOCK_SIZE);
		break;
	case CRYPTO_CIPHER_ALG_3DES:
		if (key_len != 24) {
			FUNC5(ctx);
			return NULL;
		}
		FUNC3(key, &ctx->u.des3.key);
		FUNC6(ctx->u.des3.cbc, iv, 8);
		break;
	case CRYPTO_CIPHER_ALG_DES:
		if (key_len != 8) {
			FUNC5(ctx);
			return NULL;
		}
		FUNC4(key, ctx->u.des.ek, ctx->u.des.dk);
		FUNC6(ctx->u.des.cbc, iv, 8);
		break;
	default:
		FUNC5(ctx);
		return NULL;
	}

	return ctx;
}