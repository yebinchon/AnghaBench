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
struct TYPE_5__ {int /*<<< orphan*/ * in; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  thread_id; int /*<<< orphan*/  block_encoder; scalar_t__ progress_out; scalar_t__ progress_in; TYPE_2__* coder; int /*<<< orphan*/  const* allocator; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ worker_thread ;
struct TYPE_6__ {size_t threads_initialized; TYPE_1__* thr; int /*<<< orphan*/  block_size; TYPE_1__* threads; } ;
typedef  TYPE_2__ lzma_stream_coder ;
typedef  int /*<<< orphan*/  lzma_ret ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_MEM_ERROR ; 
 int /*<<< orphan*/  LZMA_NEXT_CODER_INIT ; 
 int /*<<< orphan*/  LZMA_OK ; 
 int /*<<< orphan*/  THR_IDLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_start ; 

__attribute__((used)) static lzma_ret
FUNC7(lzma_stream_coder *coder,
		const lzma_allocator *allocator)
{
	worker_thread *thr = &coder->threads[coder->threads_initialized];

	thr->in = FUNC0(coder->block_size, allocator);
	if (thr->in == NULL)
		return LZMA_MEM_ERROR;

	if (FUNC6(&thr->mutex))
		goto error_mutex;

	if (FUNC3(&thr->cond))
		goto error_cond;

	thr->state = THR_IDLE;
	thr->allocator = allocator;
	thr->coder = coder;
	thr->progress_in = 0;
	thr->progress_out = 0;
	thr->block_encoder = LZMA_NEXT_CODER_INIT;

	if (FUNC4(&thr->thread_id, &worker_start, thr))
		goto error_thread;

	++coder->threads_initialized;
	coder->thr = thr;

	return LZMA_OK;

error_thread:
	FUNC2(&thr->cond);

error_cond:
	FUNC5(&thr->mutex);

error_mutex:
	FUNC1(thr->in, allocator);
	return LZMA_MEM_ERROR;
}