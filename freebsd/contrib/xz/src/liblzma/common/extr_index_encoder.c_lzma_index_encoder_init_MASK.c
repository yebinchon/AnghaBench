#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lzma_ret ;
struct TYPE_5__ {int /*<<< orphan*/ * coder; int /*<<< orphan*/ * end; int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ lzma_next_coder ;
typedef  int /*<<< orphan*/  lzma_index_coder ;
typedef  int /*<<< orphan*/  lzma_index ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_MEM_ERROR ; 
 int /*<<< orphan*/  LZMA_OK ; 
 int /*<<< orphan*/  LZMA_PROG_ERROR ; 
 int /*<<< orphan*/  index_encode ; 
 int /*<<< orphan*/  index_encoder_end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*),TYPE_1__*,int /*<<< orphan*/  const*) ; 

extern lzma_ret
FUNC3(lzma_next_coder *next, const lzma_allocator *allocator,
		const lzma_index *i)
{
	FUNC2(&lzma_index_encoder_init, next, allocator);

	if (i == NULL)
		return LZMA_PROG_ERROR;

	if (next->coder == NULL) {
		next->coder = FUNC1(sizeof(lzma_index_coder), allocator);
		if (next->coder == NULL)
			return LZMA_MEM_ERROR;

		next->code = &index_encode;
		next->end = &index_encoder_end;
	}

	FUNC0(next->coder, i);

	return LZMA_OK;
}