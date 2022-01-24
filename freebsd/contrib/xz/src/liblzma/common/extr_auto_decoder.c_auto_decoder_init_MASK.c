#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lzma_ret ;
struct TYPE_7__ {int /*<<< orphan*/ * memconfig; int /*<<< orphan*/ * get_check; int /*<<< orphan*/ * end; int /*<<< orphan*/ * code; TYPE_2__* coder; } ;
typedef  TYPE_1__ lzma_next_coder ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  sequence; int /*<<< orphan*/  memlimit; int /*<<< orphan*/  next; } ;
typedef  TYPE_2__ lzma_auto_coder ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_MEM_ERROR ; 
 int /*<<< orphan*/  LZMA_NEXT_CODER_INIT ; 
 int /*<<< orphan*/  LZMA_OK ; 
 int /*<<< orphan*/  LZMA_OPTIONS_ERROR ; 
 int LZMA_SUPPORTED_FLAGS ; 
 int /*<<< orphan*/  SEQ_INIT ; 
 int /*<<< orphan*/  auto_decode ; 
 int /*<<< orphan*/  auto_decoder_end ; 
 int /*<<< orphan*/  auto_decoder_get_check ; 
 int /*<<< orphan*/  auto_decoder_memconfig ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int),TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static lzma_ret
FUNC3(lzma_next_coder *next, const lzma_allocator *allocator,
		uint64_t memlimit, uint32_t flags)
{
	FUNC1(&auto_decoder_init, next, allocator);

	if (flags & ~LZMA_SUPPORTED_FLAGS)
		return LZMA_OPTIONS_ERROR;

	lzma_auto_coder *coder = next->coder;
	if (coder == NULL) {
		coder = FUNC0(sizeof(lzma_auto_coder), allocator);
		if (coder == NULL)
			return LZMA_MEM_ERROR;

		next->coder = coder;
		next->code = &auto_decode;
		next->end = &auto_decoder_end;
		next->get_check = &auto_decoder_get_check;
		next->memconfig = &auto_decoder_memconfig;
		coder->next = LZMA_NEXT_CODER_INIT;
	}

	coder->memlimit = FUNC2(1, memlimit);
	coder->flags = flags;
	coder->sequence = SEQ_INIT;

	return LZMA_OK;
}