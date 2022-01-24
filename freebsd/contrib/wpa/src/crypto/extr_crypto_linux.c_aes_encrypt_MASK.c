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
struct linux_af_alg_skcipher {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct linux_af_alg_skcipher*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC1(void *ctx, const u8 *plain, u8 *crypt)
{
	struct linux_af_alg_skcipher *skcipher = ctx;

	return FUNC0(skcipher, 1, plain, crypt);
}