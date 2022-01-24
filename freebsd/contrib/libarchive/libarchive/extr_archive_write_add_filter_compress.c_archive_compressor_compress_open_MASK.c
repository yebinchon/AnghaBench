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
struct private_data {size_t compressed_buffer_size; int* compressed; int max_maxcode; int out_count; int code_len; int compressed_offset; int /*<<< orphan*/  hashtab; int /*<<< orphan*/  first_free; int /*<<< orphan*/  cur_maxcode; int /*<<< orphan*/  checkpoint; scalar_t__ compress_ratio; scalar_t__ bit_offset; scalar_t__ bit_buf; scalar_t__ in_count; } ;
struct archive_write_filter {char* name; struct private_data* data; int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  write; TYPE_1__* archive; int /*<<< orphan*/  next_filter; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {scalar_t__ magic; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_COMPRESS ; 
 int ARCHIVE_OK ; 
 scalar_t__ ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  CHECK_GAP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FIRST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  archive_compressor_compress_close ; 
 int /*<<< orphan*/  archive_compressor_compress_free ; 
 int /*<<< orphan*/  archive_compressor_compress_write ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct private_data*) ; 
 int* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC8(struct archive_write_filter *f)
{
	int ret;
	struct private_data *state;
	size_t bs = 65536, bpb;

	f->code = ARCHIVE_FILTER_COMPRESS;
	f->name = "compress";

	ret = FUNC1(f->next_filter);
	if (ret != ARCHIVE_OK)
		return (ret);

	state = (struct private_data *)FUNC4(1, sizeof(*state));
	if (state == NULL) {
		FUNC2(f->archive, ENOMEM,
		    "Can't allocate data for compression");
		return (ARCHIVE_FATAL);
	}

	if (f->archive->magic == ARCHIVE_WRITE_MAGIC) {
		/* Buffer size should be a multiple number of the of bytes
		 * per block for performance. */
		bpb = FUNC3(f->archive);
		if (bpb > bs)
			bs = bpb;
		else if (bpb != 0)
			bs -= bs % bpb;
	}
	state->compressed_buffer_size = bs;
	state->compressed = FUNC6(state->compressed_buffer_size);

	if (state->compressed == NULL) {
		FUNC2(f->archive, ENOMEM,
		    "Can't allocate data for compression buffer");
		FUNC5(state);
		return (ARCHIVE_FATAL);
	}

	f->write = archive_compressor_compress_write;
	f->close = archive_compressor_compress_close;
	f->free = archive_compressor_compress_free;

	state->max_maxcode = 0x10000;	/* Should NEVER generate this code. */
	state->in_count = 0;		/* Length of input. */
	state->bit_buf = 0;
	state->bit_offset = 0;
	state->out_count = 3;		/* Includes 3-byte header mojo. */
	state->compress_ratio = 0;
	state->checkpoint = CHECK_GAP;
	state->code_len = 9;
	state->cur_maxcode = FUNC0(state->code_len);
	state->first_free = FIRST;

	FUNC7(state->hashtab, 0xff, sizeof(state->hashtab));

	/* Prime output buffer with a gzip header. */
	state->compressed[0] = 0x1f; /* Compress */
	state->compressed[1] = 0x9d;
	state->compressed[2] = 0x90; /* Block mode, 16bit max */
	state->compressed_offset = 3;

	f->data = state;
	return (0);
}