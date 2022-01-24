#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/ * push_buf; } ;
struct TYPE_5__ {int bytes_remaining; } ;
struct TYPE_4__ {int switch_multivolume; } ;
struct rar5 {TYPE_3__ vol; scalar_t__ merge_mode; TYPE_2__ file; TYPE_1__ cstate; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct archive_read*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct rar5* FUNC4 (struct archive_read*) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_read*,int,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static int FUNC10(struct archive_read* a, ssize_t block_size,
    const uint8_t** p)
{
	struct rar5* rar = FUNC4(a);
	ssize_t cur_block_size, partial_offset = 0;
	const uint8_t* lp;
	int ret;

	if(rar->merge_mode) {
		FUNC1(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
		    "Recursive merge is not allowed");

		return ARCHIVE_FATAL;
	}

	/* Set a flag that we're in the switching mode. */
	rar->cstate.switch_multivolume = 1;

	/* Reallocate the memory which will hold the whole block. */
	if(rar->vol.push_buf)
		FUNC3((void*) rar->vol.push_buf);

	/* Increasing the allocation block by 8 is due to bit reading functions,
	 * which are using additional 2 or 4 bytes. Allocating the block size
	 * by exact value would make bit reader perform reads from invalid
	 * memory block when reading the last byte from the buffer. */
	rar->vol.push_buf = FUNC5(block_size + 8);
	if(!rar->vol.push_buf) {
		FUNC1(&a->archive, ENOMEM,
		    "Can't allocate memory for a merge block buffer.");
		return ARCHIVE_FATAL;
	}

	/* Valgrind complains if the extension block for bit reader is not
	 * initialized, so initialize it. */
	FUNC7(&rar->vol.push_buf[block_size], 0, 8);

	/* A single block can span across multiple multivolume archive files,
	 * so we use a loop here. This loop will consume enough multivolume
	 * archive files until the whole block is read. */

	while(1) {
		/* Get the size of current block chunk in this multivolume
		 * archive file and read it. */
		cur_block_size = FUNC8(rar->file.bytes_remaining,
		    block_size - partial_offset);

		if(cur_block_size == 0) {
			FUNC1(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Encountered block size == 0 during block merge");
			return ARCHIVE_FATAL;
		}

		if(!FUNC9(a, cur_block_size, &lp))
			return ARCHIVE_EOF;

		/* Sanity check; there should never be a situation where this
		 * function reads more data than the block's size. */
		if(partial_offset + cur_block_size > block_size) {
			FUNC1(&a->archive,
			    ARCHIVE_ERRNO_PROGRAMMER,
			    "Consumed too much data when merging blocks.");
			return ARCHIVE_FATAL;
		}

		/* Merge previous block chunk with current block chunk,
		 * or create first block chunk if this is our first
		 * iteration. */
		FUNC6(&rar->vol.push_buf[partial_offset], lp, cur_block_size);

		/* Advance the stream read pointer by this block chunk size. */
		if(ARCHIVE_OK != FUNC2(a, cur_block_size))
			return ARCHIVE_EOF;

		/* Update the pointers. `partial_offset` contains information
		 * about the sum of merged block chunks. */
		partial_offset += cur_block_size;
		rar->file.bytes_remaining -= cur_block_size;

		/* If `partial_offset` is the same as `block_size`, this means
		 * we've merged all block chunks and we have a valid full
		 * block. */
		if(partial_offset == block_size) {
			break;
		}

		/* If we don't have any bytes to read, this means we should
		 * switch to another multivolume archive file. */
		if(rar->file.bytes_remaining == 0) {
			rar->merge_mode++;
			ret = FUNC0(a);
			rar->merge_mode--;
			if(ret != ARCHIVE_OK) {
				return ret;
			}
		}
	}

	*p = rar->vol.push_buf;

	/* If we're here, we can resume unpacking by processing the block
	 * pointed to by the `*p` memory pointer. */

	return ARCHIVE_OK;
}