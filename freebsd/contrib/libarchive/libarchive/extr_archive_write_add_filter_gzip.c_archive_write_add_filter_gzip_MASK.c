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
struct private_data {scalar_t__ compression_level; int /*<<< orphan*/ * pdata; } ;
struct archive_write_filter {char* name; int /*<<< orphan*/  code; int /*<<< orphan*/ * free; int /*<<< orphan*/ * close; int /*<<< orphan*/ * options; int /*<<< orphan*/ * open; struct private_data* data; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_GZIP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ Z_DEFAULT_COMPRESSION ; 
 struct archive_write_filter* FUNC0 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_compressor_gzip_close ; 
 int /*<<< orphan*/  archive_compressor_gzip_free ; 
 int /*<<< orphan*/  archive_compressor_gzip_open ; 
 int /*<<< orphan*/  archive_compressor_gzip_options ; 
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
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_gzip");

	data = FUNC4(1, sizeof(*data));
	if (data == NULL) {
		FUNC3(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}
	f->data = data;
	f->open = &archive_compressor_gzip_open;
	f->options = &archive_compressor_gzip_options;
	f->close = &archive_compressor_gzip_close;
	f->free = &archive_compressor_gzip_free;
	f->code = ARCHIVE_FILTER_GZIP;
	f->name = "gzip";
#ifdef HAVE_ZLIB_H
	data->compression_level = Z_DEFAULT_COMPRESSION;
	return (ARCHIVE_OK);
#else
	data->pdata = FUNC1("gzip");
	if (data->pdata == NULL) {
		FUNC5(data);
		FUNC3(&a->archive, ENOMEM, "Out of memory");
		return (ARCHIVE_FATAL);
	}
	data->compression_level = 0;
	FUNC3(&a->archive, ARCHIVE_ERRNO_MISC,
	    "Using external gzip program");
	return (ARCHIVE_WARN);
#endif
}