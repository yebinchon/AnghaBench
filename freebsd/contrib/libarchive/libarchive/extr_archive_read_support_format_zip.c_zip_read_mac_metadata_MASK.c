#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uInt ;
struct zip_entry {int compression; int uncompressed_size; int compressed_size; scalar_t__ local_header_offset; } ;
struct TYPE_4__ {size_t total_in; unsigned char* next_out; size_t total_out; void* avail_out; void* avail_in; int /*<<< orphan*/ * next_in; } ;
struct zip {scalar_t__ decompress_init; TYPE_2__ stream; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int intmax_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  Z_MEM_ERROR 130 
#define  Z_OK 129 
#define  Z_STREAM_END 128 
 unsigned char* FUNC0 (struct archive_read*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_read*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,unsigned char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC11 (struct archive_read*,struct zip*) ; 
 size_t FUNC12 (struct archive_read*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct archive_read *a, struct archive_entry *entry,
    struct zip_entry *rsrc)
{
	struct zip *zip = (struct zip *)a->format->data;
	unsigned char *metadata, *mp;
	int64_t offset = FUNC4(&a->archive, 0);
	size_t remaining_bytes, metadata_bytes;
	ssize_t hsize;
	int ret = ARCHIVE_OK, eof;

	switch(rsrc->compression) {
	case 0:  /* No compression. */
		if (rsrc->uncompressed_size != rsrc->compressed_size) {
			FUNC5(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Malformed OS X metadata entry: "
			    "inconsistent size");
			return (ARCHIVE_FATAL);
		}
#ifdef HAVE_ZLIB_H
	case 8: /* Deflate compression. */
#endif
		break;
	default: /* Unsupported compression. */
		/* Return a warning. */
		FUNC5(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unsupported ZIP compression method (%s)",
		    FUNC6(rsrc->compression));
		/* We can't decompress this entry, but we will
		 * be able to skip() it and try the next entry. */
		return (ARCHIVE_WARN);
	}

	if (rsrc->uncompressed_size > (4 * 1024 * 1024)) {
		FUNC5(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Mac metadata is too large: %jd > 4M bytes",
		    (intmax_t)rsrc->uncompressed_size);
		return (ARCHIVE_WARN);
	}
	if (rsrc->compressed_size > (4 * 1024 * 1024)) {
		FUNC5(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Mac metadata is too large: %jd > 4M bytes",
		    (intmax_t)rsrc->compressed_size);
		return (ARCHIVE_WARN);
	}

	metadata = FUNC9((size_t)rsrc->uncompressed_size);
	if (metadata == NULL) {
		FUNC5(&a->archive, ENOMEM,
		    "Can't allocate memory for Mac metadata");
		return (ARCHIVE_FATAL);
	}

	if (offset < rsrc->local_header_offset)
		FUNC1(a, rsrc->local_header_offset - offset);
	else if (offset != rsrc->local_header_offset) {
		FUNC2(a, rsrc->local_header_offset, SEEK_SET);
	}

	hsize = FUNC12(a, 0);
	FUNC1(a, hsize);

	remaining_bytes = (size_t)rsrc->compressed_size;
	metadata_bytes = (size_t)rsrc->uncompressed_size;
	mp = metadata;
	eof = 0;
	while (!eof && remaining_bytes) {
		const unsigned char *p;
		ssize_t bytes_avail;
		size_t bytes_used;

		p = FUNC0(a, 1, &bytes_avail);
		if (p == NULL) {
			FUNC5(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Truncated ZIP file header");
			ret = ARCHIVE_WARN;
			goto exit_mac_metadata;
		}
		if ((size_t)bytes_avail > remaining_bytes)
			bytes_avail = remaining_bytes;
		switch(rsrc->compression) {
		case 0:  /* No compression. */
			if ((size_t)bytes_avail > metadata_bytes)
				bytes_avail = metadata_bytes;
			FUNC10(mp, p, bytes_avail);
			bytes_used = (size_t)bytes_avail;
			metadata_bytes -= bytes_used;
			mp += bytes_used;
			if (metadata_bytes == 0)
				eof = 1;
			break;
#ifdef HAVE_ZLIB_H
		case 8: /* Deflate compression. */
		{
			int r;

			ret = zip_deflate_init(a, zip);
			if (ret != ARCHIVE_OK)
				goto exit_mac_metadata;
			zip->stream.next_in =
			    (Bytef *)(uintptr_t)(const void *)p;
			zip->stream.avail_in = (uInt)bytes_avail;
			zip->stream.total_in = 0;
			zip->stream.next_out = mp;
			zip->stream.avail_out = (uInt)metadata_bytes;
			zip->stream.total_out = 0;

			r = inflate(&zip->stream, 0);
			switch (r) {
			case Z_OK:
				break;
			case Z_STREAM_END:
				eof = 1;
				break;
			case Z_MEM_ERROR:
				archive_set_error(&a->archive, ENOMEM,
				    "Out of memory for ZIP decompression");
				ret = ARCHIVE_FATAL;
				goto exit_mac_metadata;
			default:
				archive_set_error(&a->archive,
				    ARCHIVE_ERRNO_MISC,
				    "ZIP decompression failed (%d)", r);
				ret = ARCHIVE_FATAL;
				goto exit_mac_metadata;
			}
			bytes_used = zip->stream.total_in;
			metadata_bytes -= zip->stream.total_out;
			mp += zip->stream.total_out;
			break;
		}
#endif
		default:
			bytes_used = 0;
			break;
		}
		FUNC1(a, bytes_used);
		remaining_bytes -= bytes_used;
	}
	FUNC3(entry, metadata,
	    (size_t)rsrc->uncompressed_size - metadata_bytes);

exit_mac_metadata:
	FUNC2(a, offset, SEEK_SET);
	zip->decompress_init = 0;
	FUNC7(metadata);
	return (ret);
}