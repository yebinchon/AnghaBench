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
struct crypto_cipher {int /*<<< orphan*/  enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,size_t) ; 

int FUNC1(struct crypto_cipher *ctx, const u8 *plain,
			  u8 *crypt, size_t len)
{
	int outl;
	if (!FUNC0(ctx->enc, crypt, &outl, plain, len))
		return -1;
	return 0;
}