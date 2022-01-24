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
struct TYPE_2__ {int /*<<< orphan*/  arcfour_ctx; } ;
struct crypto_cipher {int alg; TYPE_1__ u; } ;
typedef  enum crypto_cipher_alg { ____Placeholder_crypto_cipher_alg } crypto_cipher_alg ;

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*) ; 
 struct crypto_cipher* FUNC2 (int) ; 

struct crypto_cipher * FUNC3(enum crypto_cipher_alg alg,
					  const u8 *iv, const u8 *key,
					  size_t key_len)
{
	struct crypto_cipher *ctx;

	ctx = FUNC2(sizeof(*ctx));
	if (!ctx)
		return NULL;

	ctx->alg = alg;

	switch (alg) {
	case CRYPTO_CIPHER_ALG_RC4:
		FUNC0(&ctx->u.arcfour_ctx, key_len, key);
		break;
	default:
		FUNC1(ctx);
		return NULL;
	}

	return ctx;
}