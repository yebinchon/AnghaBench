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

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_RC4 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC1(struct crypto_cipher *ctx, const u8 *crypt,
			  u8 *plain, size_t len)
{
	switch (ctx->alg) {
	case CRYPTO_CIPHER_ALG_RC4:
		FUNC0(&ctx->u.arcfour_ctx, len, plain, crypt);
		break;
	default:
		return -1;
	}

	return 0;
}