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
typedef  int /*<<< orphan*/  lzma_ret ;
typedef  int /*<<< orphan*/  lzma_lz_options ;
struct TYPE_3__ {int /*<<< orphan*/  coder; int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ lzma_lz_encoder ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  lzma_encode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lzma_ret
FUNC1(lzma_lz_encoder *lz, const lzma_allocator *allocator,
		const void *options, lzma_lz_options *lz_options)
{
	lz->code = &lzma_encode;
	return FUNC0(
			&lz->coder, allocator, options, lz_options);
}