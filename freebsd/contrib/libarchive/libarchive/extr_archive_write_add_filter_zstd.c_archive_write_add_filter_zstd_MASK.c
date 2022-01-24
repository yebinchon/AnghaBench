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
struct private_data {int compression_level; int /*<<< orphan*/ * pdata; int /*<<< orphan*/ * cstream; } ;
struct archive_write_filter {char* name; int /*<<< orphan*/  code; int /*<<< orphan*/ * free; int /*<<< orphan*/ * close; int /*<<< orphan*/ * options; int /*<<< orphan*/ * open; struct private_data* data; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_ZSTD ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 struct archive_write_filter* FUNC1 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_compressor_zstd_close ; 
 int /*<<< orphan*/  archive_compressor_zstd_free ; 
 int /*<<< orphan*/  archive_compressor_zstd_open ; 
 int /*<<< orphan*/  archive_compressor_zstd_options ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct private_data* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct private_data*) ; 

int
FUNC7(struct archive *_a)
{
	struct archive_write *a = (struct archive_write *)_a;
	struct archive_write_filter *f = FUNC1(_a);
	struct private_data *data;
	FUNC3(&a->archive, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_zstd");

	data = FUNC5(1, sizeof(*data));
	if (data == NULL) {
		FUNC4(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}
	f->data = data;
	f->open = &archive_compressor_zstd_open;
	f->options = &archive_compressor_zstd_options;
	f->close = &archive_compressor_zstd_close;
	f->free = &archive_compressor_zstd_free;
	f->code = ARCHIVE_FILTER_ZSTD;
	f->name = "zstd";
	data->compression_level = 3; /* Default level used by the zstd CLI */
#if HAVE_ZSTD_H && HAVE_LIBZSTD
	data->cstream = ZSTD_createCStream();
	if (data->cstream == NULL) {
		free(data);
		archive_set_error(&a->archive, ENOMEM,
		    "Failed to allocate zstd compressor object");
		return (ARCHIVE_FATAL);
	}

	return (ARCHIVE_OK);
#else
	data->pdata = FUNC2("zstd");
	if (data->pdata == NULL) {
		FUNC6(data);
		FUNC4(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}
	FUNC4(&a->archive, ARCHIVE_ERRNO_MISC,
	    "Using external zstd program");
	return (ARCHIVE_WARN);
#endif
}