#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct archive_write_filter {int /*<<< orphan*/ * close; scalar_t__ data; scalar_t__ archive; } ;
struct archive_write {int bytes_in_last_block; int bytes_per_block; int (* client_writer ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ;scalar_t__ passphrase; int /*<<< orphan*/ * client_data; int /*<<< orphan*/  archive; int /*<<< orphan*/  (* client_closer ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct archive_none {scalar_t__ next; scalar_t__ buffer; int buffer_size; int avail; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_none*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct archive_write_filter *f)
{
	struct archive_write *a = (struct archive_write *)f->archive;
	struct archive_none *state = (struct archive_none *)f->data;
	ssize_t block_length;
	ssize_t target_block_length;
	ssize_t bytes_written;
	int ret = ARCHIVE_OK;

	/* If there's pending data, pad and write the last block */
	if (state->next != state->buffer) {
		block_length = state->buffer_size - state->avail;

		/* Tricky calculation to determine size of last block */
		if (a->bytes_in_last_block <= 0)
			/* Default or Zero: pad to full block */
			target_block_length = a->bytes_per_block;
		else
			/* Round to next multiple of bytes_in_last_block. */
			target_block_length = a->bytes_in_last_block *
			    ( (block_length + a->bytes_in_last_block - 1) /
			        a->bytes_in_last_block);
		if (target_block_length > a->bytes_per_block)
			target_block_length = a->bytes_per_block;
		if (block_length < target_block_length) {
			FUNC1(state->next, 0,
			    target_block_length - block_length);
			block_length = target_block_length;
		}
		bytes_written = (a->client_writer)(&a->archive,
		    a->client_data, state->buffer, block_length);
		ret = bytes_written <= 0 ? ARCHIVE_FATAL : ARCHIVE_OK;
	}
	if (a->client_closer)
		(*a->client_closer)(&a->archive, a->client_data);
	FUNC0(state->buffer);
	FUNC0(state);
	/* Clear the close handler myself not to be called again. */
	f->close = NULL;
	a->client_data = NULL;
	/* Clear passphrase. */
	if (a->passphrase != NULL) {
		FUNC1(a->passphrase, 0, FUNC2(a->passphrase));
		FUNC0(a->passphrase);
		a->passphrase = NULL;
	}
	return (ret);
}