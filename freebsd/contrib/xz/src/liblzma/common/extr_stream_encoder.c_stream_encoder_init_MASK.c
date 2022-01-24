#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  check; int /*<<< orphan*/  version; } ;
typedef  TYPE_3__ lzma_stream_flags ;
struct TYPE_13__ {int /*<<< orphan*/  check; scalar_t__ version; } ;
struct TYPE_15__ {int /*<<< orphan*/  buffer_size; scalar_t__ buffer_pos; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * index; TYPE_2__ block_options; int /*<<< orphan*/  sequence; void* index_encoder; void* block_encoder; TYPE_1__* filters; } ;
typedef  TYPE_4__ lzma_stream_coder ;
typedef  int /*<<< orphan*/  lzma_ret ;
struct TYPE_16__ {int /*<<< orphan*/  (* update ) (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * end; int /*<<< orphan*/ * code; TYPE_4__* coder; } ;
typedef  TYPE_5__ lzma_next_coder ;
typedef  int /*<<< orphan*/  lzma_filter ;
typedef  int /*<<< orphan*/  lzma_check ;
typedef  int /*<<< orphan*/  lzma_allocator ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_MEM_ERROR ; 
 void* LZMA_NEXT_CODER_INIT ; 
 int /*<<< orphan*/  LZMA_PROG_ERROR ; 
 int /*<<< orphan*/  LZMA_STREAM_HEADER_SIZE ; 
 int /*<<< orphan*/  LZMA_VLI_UNKNOWN ; 
 int /*<<< orphan*/  SEQ_STREAM_HEADER ; 
 TYPE_4__* FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (TYPE_5__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ),TYPE_5__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stream_encode ; 
 int /*<<< orphan*/  stream_encoder_end ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lzma_ret
FUNC7(lzma_next_coder *next, const lzma_allocator *allocator,
		const lzma_filter *filters, lzma_check check)
{
	FUNC3(&stream_encoder_init, next, allocator);

	if (filters == NULL)
		return LZMA_PROG_ERROR;

	lzma_stream_coder *coder = next->coder;

	if (coder == NULL) {
		coder = FUNC0(sizeof(lzma_stream_coder), allocator);
		if (coder == NULL)
			return LZMA_MEM_ERROR;

		next->coder = coder;
		next->code = &stream_encode;
		next->end = &stream_encoder_end;
		next->update = &stream_encoder_update;

		coder->filters[0].id = LZMA_VLI_UNKNOWN;
		coder->block_encoder = LZMA_NEXT_CODER_INIT;
		coder->index_encoder = LZMA_NEXT_CODER_INIT;
		coder->index = NULL;
	}

	// Basic initializations
	coder->sequence = SEQ_STREAM_HEADER;
	coder->block_options.version = 0;
	coder->block_options.check = check;

	// Initialize the Index
	FUNC1(coder->index, allocator);
	coder->index = FUNC2(allocator);
	if (coder->index == NULL)
		return LZMA_MEM_ERROR;

	// Encode the Stream Header
	lzma_stream_flags stream_flags = {
		.version = 0,
		.check = check,
	};
	FUNC5(FUNC4(
			&stream_flags, coder->buffer));

	coder->buffer_pos = 0;
	coder->buffer_size = LZMA_STREAM_HEADER_SIZE;

	// Initialize the Block encoder. This way we detect unsupported
	// filter chains when initializing the Stream encoder instead of
	// giving an error after Stream Header has already written out.
	return FUNC6(coder, allocator, filters, NULL);
}