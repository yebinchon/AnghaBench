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
struct crypto_hash {int /*<<< orphan*/  t; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_hash*) ; 

__attribute__((used)) static void FUNC2(struct crypto_hash *ctx)
{
	FUNC0(ctx->s);
	FUNC0(ctx->t);
	FUNC1(ctx);
}