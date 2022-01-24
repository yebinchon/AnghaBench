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
struct crypto_cipher {int /*<<< orphan*/  skcipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*) ; 

void FUNC2(struct crypto_cipher *ctx)
{
	if (ctx) {
		FUNC0(ctx->skcipher);
		FUNC1(ctx);
	}
}