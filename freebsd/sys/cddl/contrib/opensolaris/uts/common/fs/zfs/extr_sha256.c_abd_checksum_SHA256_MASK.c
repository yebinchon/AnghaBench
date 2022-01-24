#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void** zc_word; } ;
typedef  TYPE_1__ zio_cksum_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sha256_incremental ; 

void
FUNC4(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
	SHA256_CTX ctx;
	zio_cksum_t tmp;

	FUNC2(&ctx);
	(void) FUNC3(abd, 0, size, sha256_incremental, &ctx);
	FUNC1((unsigned char *)&tmp, &ctx);

	/*
	 * A prior implementation of this function had a
	 * private SHA256 implementation always wrote things out in
	 * Big Endian and there wasn't a byteswap variant of it.
	 * To preserve on disk compatibility we need to force that
	 * behavior.
	 */
	zcp->zc_word[0] = FUNC0(tmp.zc_word[0]);
	zcp->zc_word[1] = FUNC0(tmp.zc_word[1]);
	zcp->zc_word[2] = FUNC0(tmp.zc_word[2]);
	zcp->zc_word[3] = FUNC0(tmp.zc_word[3]);
}