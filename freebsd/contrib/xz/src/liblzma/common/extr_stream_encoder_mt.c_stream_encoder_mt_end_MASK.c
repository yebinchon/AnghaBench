#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  index; int /*<<< orphan*/  index_encoder; TYPE_1__* filters; int /*<<< orphan*/  outq; } ;
typedef  TYPE_2__ lzma_stream_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;
struct TYPE_5__ {scalar_t__ id; TYPE_2__* options; } ;

/* Variables and functions */
 scalar_t__ LZMA_VLI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC7(void *coder_ptr, const lzma_allocator *allocator)
{
	lzma_stream_coder *coder = coder_ptr;

	// Threads must be killed before the output queue can be freed.
	FUNC6(coder, allocator);
	FUNC3(&coder->outq, allocator);

	for (size_t i = 0; coder->filters[i].id != LZMA_VLI_UNKNOWN; ++i)
		FUNC0(coder->filters[i].options, allocator);

	FUNC2(&coder->index_encoder, allocator);
	FUNC1(coder->index, allocator);

	FUNC4(&coder->cond);
	FUNC5(&coder->mutex);

	FUNC0(coder, allocator);
	return;
}