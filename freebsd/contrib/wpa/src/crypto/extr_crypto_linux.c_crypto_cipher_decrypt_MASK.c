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
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALG_OP_DECRYPT ; 
 int FUNC0 (struct crypto_cipher*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 

int FUNC1(struct crypto_cipher *ctx, const u8 *crypt,
			  u8 *plain, size_t len)
{
	return FUNC0(ctx, ALG_OP_DECRYPT, crypt, plain, len);
}