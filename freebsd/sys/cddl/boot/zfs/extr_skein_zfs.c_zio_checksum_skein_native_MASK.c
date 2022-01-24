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
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  Skein_512_Ctxt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(const void *buf, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
	Skein_512_Ctxt_t	ctx;

	FUNC0(ctx_template != NULL);
	FUNC3(ctx_template, &ctx, sizeof (ctx));
	(void) FUNC2(&ctx, buf, size);
	(void) FUNC1(&ctx, (uint8_t *)zcp);
	FUNC4(&ctx, sizeof (ctx));
}