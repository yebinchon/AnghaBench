#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ magic; int /*<<< orphan*/  error_string; } ;
struct archive_write_disk {TYPE_1__ archive; int /*<<< orphan*/  stream; scalar_t__ stream_valid; struct archive_write_disk* uncompressed_buffer; struct archive_write_disk* compressed_buffer; struct archive_write_disk* resource_fork; struct archive_write_disk* decmpfs_header_p; int /*<<< orphan*/  path_safe; int /*<<< orphan*/  _name_data; int /*<<< orphan*/  entry; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_STATE_ANY ; 
 int ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_DISK_MAGIC ; 
#define  Z_OK 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_write_disk*) ; 

__attribute__((used)) static int
FUNC10(struct archive *_a)
{
	struct archive_write_disk *a;
	int ret;
	if (_a == NULL)
		return (ARCHIVE_OK);
	FUNC2(_a, ARCHIVE_WRITE_DISK_MAGIC,
	    ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_write_disk_free");
	a = (struct archive_write_disk *)_a;
	ret = FUNC1(&a->archive);
	FUNC6(&a->archive, NULL, NULL, NULL);
	FUNC7(&a->archive, NULL, NULL, NULL);
	FUNC3(a->entry);
	FUNC5(&a->_name_data);
	FUNC5(&a->archive.error_string);
	FUNC5(&a->path_safe);
	a->archive.magic = 0;
	FUNC0(&a->archive);
	FUNC9(a->decmpfs_header_p);
	FUNC9(a->resource_fork);
	FUNC9(a->compressed_buffer);
	FUNC9(a->uncompressed_buffer);
#if defined(__APPLE__) && defined(UF_COMPRESSED) && defined(HAVE_SYS_XATTR_H)\
	&& defined(HAVE_ZLIB_H)
	if (a->stream_valid) {
		switch (deflateEnd(&a->stream)) {
		case Z_OK:
			break;
		default:
			archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Failed to clean up compressor");
			ret = ARCHIVE_FATAL;
			break;
		}
	}
#endif
	FUNC9(a);
	return (ret);
}