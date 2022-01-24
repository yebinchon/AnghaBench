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
struct crypto_hash {int error; int alg; TYPE_1__ u; } ;

/* Variables and functions */
#define  CRYPTO_HASH_ALG_HMAC_MD5 131 
#define  CRYPTO_HASH_ALG_HMAC_SHA1 130 
#define  CRYPTO_HASH_ALG_MD5 129 
#define  CRYPTO_HASH_ALG_SHA1 128 
 int /*<<< orphan*/  CRYPT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void FUNC3(struct crypto_hash *ctx, const u8 *data, size_t len)
{
	if (ctx == NULL || ctx->error)
		return;

	switch (ctx->alg) {
	case CRYPTO_HASH_ALG_MD5:
		ctx->error = FUNC1(&ctx->u.md, data, len) != CRYPT_OK;
		break;
	case CRYPTO_HASH_ALG_SHA1:
		ctx->error = FUNC2(&ctx->u.md, data, len) != CRYPT_OK;
		break;
	case CRYPTO_HASH_ALG_HMAC_MD5:
	case CRYPTO_HASH_ALG_HMAC_SHA1:
		ctx->error = FUNC0(&ctx->u.hmac, data, len) != CRYPT_OK;
		break;
	}
}