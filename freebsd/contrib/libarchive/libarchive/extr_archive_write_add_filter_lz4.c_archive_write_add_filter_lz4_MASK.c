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
struct private_data {int compression_level; int version_number; int block_independence; int stream_checksum; int block_maximum_size; int /*<<< orphan*/ * pdata; scalar_t__ preset_dictionary; scalar_t__ stream_size; scalar_t__ block_checksum; } ;
struct archive_write_filter {char* name; int /*<<< orphan*/  code; int /*<<< orphan*/ * open; int /*<<< orphan*/ * free; int /*<<< orphan*/ * close; int /*<<< orphan*/ * options; struct private_data* data; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_LZ4 ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct archive_write_filter* FUNC0 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_filter_lz4_close ; 
 int /*<<< orphan*/  archive_filter_lz4_free ; 
 int /*<<< orphan*/  archive_filter_lz4_open ; 
 int /*<<< orphan*/  archive_filter_lz4_options ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct private_data* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct private_data*) ; 

int
FUNC6(struct archive *_a)
{
	struct archive_write *a = (struct archive_write *)_a;
	struct archive_write_filter *f = FUNC0(_a);
	struct private_data *data;

	FUNC2(&a->archive, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_lz4");

	data = FUNC4(1, sizeof(*data));
	if (data == NULL) {
		FUNC3(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}

	/*
	 * Setup default settings.
	 */
	data->compression_level = 1;
	data->version_number = 0x01;
	data->block_independence = 1;
	data->block_checksum = 0;
	data->stream_size = 0;
	data->stream_checksum = 1;
	data->preset_dictionary = 0;
	data->block_maximum_size = 7;

	/*
	 * Setup a filter setting.
	 */
	f->data = data;
	f->options = &archive_filter_lz4_options;
	f->close = &archive_filter_lz4_close;
	f->free = &archive_filter_lz4_free;
	f->open = &archive_filter_lz4_open;
	f->code = ARCHIVE_FILTER_LZ4;
	f->name = "lz4";
#if defined(HAVE_LIBLZ4) && LZ4_VERSION_MAJOR >= 1 && LZ4_VERSION_MINOR >= 2
	return (ARCHIVE_OK);
#else
	/*
	 * We don't have lz4 library, and execute external lz4 program
	 * instead.
	 */
	data->pdata = FUNC1("lz4");
	if (data->pdata == NULL) {
		FUNC5(data);
		FUNC3(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}
	data->compression_level = 0;
	FUNC3(&a->archive, ARCHIVE_ERRNO_MISC,
	    "Using external lz4 program");
	return (ARCHIVE_WARN);
#endif
}