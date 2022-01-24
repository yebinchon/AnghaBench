#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void** zc_word; } ;
typedef  TYPE_1__ zio_cksum_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,TYPE_1__*) ; 

void
FUNC2(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
	zio_cksum_t	tmp;

	FUNC1(abd, size, ctx_template, &tmp);
	zcp->zc_word[0] = FUNC0(tmp.zc_word[0]);
	zcp->zc_word[1] = FUNC0(tmp.zc_word[1]);
	zcp->zc_word[2] = FUNC0(tmp.zc_word[2]);
	zcp->zc_word[3] = FUNC0(tmp.zc_word[3]);
}