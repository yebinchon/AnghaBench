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
typedef  int /*<<< orphan*/  u_int8_t ;
struct chacha_ctx {int dummy; } ;

/* Variables and functions */
 int CHACHA_MINKEYLEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct chacha_ctx*,int /*<<< orphan*/  const*,int) ; 
 struct chacha_ctx* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(u_int8_t **sched, const u_int8_t *key, int len)
{
	struct chacha_ctx *ctx;

	if (len != CHACHA_MINKEYLEN && len != 32)
		return (EINVAL);

	ctx = FUNC1(sizeof(*ctx), M_CRYPTO_DATA, M_NOWAIT | M_ZERO);
	*sched = (void *)ctx;
	if (ctx == NULL)
		return (ENOMEM);

	FUNC0(ctx, key, len * 8);
	return (0);
}