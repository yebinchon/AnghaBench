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
struct TYPE_3__ {int /*<<< orphan*/  index_hash; int /*<<< orphan*/  block_decoder; } ;
typedef  TYPE_1__ lzma_stream_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC3(void *coder_ptr, const lzma_allocator *allocator)
{
	lzma_stream_coder *coder = coder_ptr;
	FUNC2(&coder->block_decoder, allocator);
	FUNC1(coder->index_hash, allocator);
	FUNC0(coder, allocator);
	return;
}