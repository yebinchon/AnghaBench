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
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_4__ {size_t used_bytes; int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int /*<<< orphan*/  cbc; TYPE_2__ rc4; } ;
struct crypto_cipher {TYPE_1__ u; scalar_t__ rc4; } ;

/* Variables and functions */
 int CRYPT_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct crypto_cipher *ctx, const u8 *crypt,
			  u8 *plain, size_t len)
{
	int res;

	if (ctx->rc4) {
		if (plain != crypt)
			FUNC2(plain, crypt, len);
		FUNC3(ctx->u.rc4.key, ctx->u.rc4.keylen,
			 ctx->u.rc4.used_bytes, plain, len);
		ctx->u.rc4.used_bytes += len;
		return 0;
	}

	res = FUNC0(crypt, plain, len, &ctx->u.cbc);
	if (res != CRYPT_OK) {
		FUNC4(MSG_DEBUG, "LibTomCrypt: CBC decryption "
			   "failed: %s", FUNC1(res));
		return -1;
	}

	return 0;
}