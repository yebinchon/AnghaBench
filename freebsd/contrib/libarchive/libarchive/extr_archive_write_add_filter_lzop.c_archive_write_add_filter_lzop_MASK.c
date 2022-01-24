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
struct write_lzop {int compression_level; int /*<<< orphan*/ * pdata; } ;
struct archive_write_filter {char* name; int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  write; int /*<<< orphan*/  options; int /*<<< orphan*/  open; struct write_lzop* data; int /*<<< orphan*/  code; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_LZOP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ LZO_E_OK ; 
 struct archive_write_filter* FUNC0 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  archive_write_lzop_close ; 
 int /*<<< orphan*/  archive_write_lzop_free ; 
 int /*<<< orphan*/  archive_write_lzop_open ; 
 int /*<<< orphan*/  archive_write_lzop_options ; 
 int /*<<< orphan*/  archive_write_lzop_write ; 
 struct write_lzop* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct write_lzop*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(struct archive *_a)
{
	struct archive_write_filter *f = FUNC0(_a);
	struct write_lzop *data;

	FUNC2(_a, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_add_filter_lzop");

	data = FUNC4(1, sizeof(*data));
	if (data == NULL) {
		FUNC3(_a, ENOMEM, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}

	f->name = "lzop";
	f->code = ARCHIVE_FILTER_LZOP;
	f->data = data;
	f->open = archive_write_lzop_open;
	f->options = archive_write_lzop_options;
	f->write = archive_write_lzop_write;
	f->close = archive_write_lzop_close;
	f->free = archive_write_lzop_free;
#if defined(HAVE_LZO_LZOCONF_H) && defined(HAVE_LZO_LZO1X_H)
	if (lzo_init() != LZO_E_OK) {
		free(data);
		archive_set_error(_a, ARCHIVE_ERRNO_MISC,
		    "lzo_init(type check) failed");
		return (ARCHIVE_FATAL);
	}
	if (lzo_version() < 0x940) {
		free(data);
		archive_set_error(_a, ARCHIVE_ERRNO_MISC,
		    "liblzo library is too old(%s < 0.940)",
		    lzo_version_string());
		return (ARCHIVE_FATAL);
	}
	data->compression_level = 5;
	return (ARCHIVE_OK);
#else
	data->pdata = FUNC1("lzop");
	if (data->pdata == NULL) {
		FUNC5(data);
		FUNC3(_a, ENOMEM, "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	data->compression_level = 0;
	/* Note: We return "warn" to inform of using an external lzop
	 * program. */
	FUNC3(_a, ARCHIVE_ERRNO_MISC,
	    "Using external lzop program for lzop compression");
	return (ARCHIVE_WARN);
#endif
}