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
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {scalar_t__ split_before; } ;
struct TYPE_5__ {int method; int version; int block_parsing_finished; int all_filters_applied; scalar_t__ initialized; int /*<<< orphan*/  switch_multivolume; scalar_t__ window_size; } ;
struct TYPE_6__ {size_t bytes_remaining; scalar_t__ dir; int solid; scalar_t__ redir_type; scalar_t__ stored_crc32; scalar_t__ unpacked_size; scalar_t__ service; } ;
struct rar5 {TYPE_1__ generic; TYPE_2__ cstate; TYPE_3__ file; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int __LA_MODE_T ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_RETRY ; 
 size_t HFL_DATA ; 
 size_t HFL_EXTRA_DATA ; 
 int MAX_NAME_IN_BYTES ; 
 int MAX_NAME_IN_CHARS ; 
 scalar_t__ REDIR_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t g_unpack_window_size ; 
 int /*<<< orphan*/  FUNC9 (struct rar5*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__ const*,size_t) ; 
 int FUNC12 (struct archive_read*,struct archive_entry*,struct rar5*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_read*,size_t,scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_read*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_read*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_read*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct rar5*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

__attribute__((used)) static int FUNC19(struct archive_read* a, struct rar5* rar,
    struct archive_entry* entry, size_t block_flags)
{
	ssize_t extra_data_size = 0;
	size_t data_size = 0;
	size_t file_flags = 0;
	size_t file_attr = 0;
	size_t compression_info = 0;
	size_t host_os = 0;
	size_t name_size = 0;
	uint64_t unpacked_size, window_size;
	uint32_t mtime = 0, crc = 0;
	int c_method = 0, c_version = 0;
	char name_utf8_buf[MAX_NAME_IN_BYTES];
	const uint8_t* p;

	FUNC0(entry);

	/* Do not reset file context if we're switching archives. */
	if(!rar->cstate.switch_multivolume) {
		FUNC17(rar);
	}

	if(block_flags & HFL_EXTRA_DATA) {
		size_t edata_size = 0;
		if(!FUNC16(a, &edata_size, NULL))
			return ARCHIVE_EOF;

		/* Intentional type cast from unsigned to signed. */
		extra_data_size = (ssize_t) edata_size;
	}

	if(block_flags & HFL_DATA) {
		if(!FUNC16(a, &data_size, NULL))
			return ARCHIVE_EOF;

		rar->file.bytes_remaining = data_size;
	} else {
		rar->file.bytes_remaining = 0;

		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
				"no data found in file/service block");
		return ARCHIVE_FATAL;
	}

	enum FILE_FLAGS {
		DIRECTORY = 0x0001, UTIME = 0x0002, CRC32 = 0x0004,
		UNKNOWN_UNPACKED_SIZE = 0x0008,
	};

	enum FILE_ATTRS {
		ATTR_READONLY = 0x1, ATTR_HIDDEN = 0x2, ATTR_SYSTEM = 0x4,
		ATTR_DIRECTORY = 0x10,
	};

	enum COMP_INFO_FLAGS {
		SOLID = 0x0040,
	};

	if(!FUNC16(a, &file_flags, NULL))
		return ARCHIVE_EOF;

	if(!FUNC15(a, &unpacked_size, NULL))
		return ARCHIVE_EOF;

	if(file_flags & UNKNOWN_UNPACKED_SIZE) {
		FUNC6(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
		    "Files with unknown unpacked size are not supported");
		return ARCHIVE_FATAL;
	}

	rar->file.dir = (uint8_t) ((file_flags & DIRECTORY) > 0);

	if(!FUNC16(a, &file_attr, NULL))
		return ARCHIVE_EOF;

	if(file_flags & UTIME) {
		if(!FUNC14(a, &mtime))
			return ARCHIVE_EOF;
	}

	if(file_flags & CRC32) {
		if(!FUNC14(a, &crc))
			return ARCHIVE_EOF;
	}

	if(!FUNC16(a, &compression_info, NULL))
		return ARCHIVE_EOF;

	c_method = (int) (compression_info >> 7) & 0x7;
	c_version = (int) (compression_info & 0x3f);

	/* RAR5 seems to limit the dictionary size to 64MB. */
	window_size = (rar->file.dir > 0) ?
		0 :
		g_unpack_window_size << ((compression_info >> 10) & 15);
	rar->cstate.method = c_method;
	rar->cstate.version = c_version + 50;

	/* Check if window_size is a sane value. Also, if the file is not
	 * declared as a directory, disallow window_size == 0. */
	if(window_size > (64 * 1024 * 1024) ||
	    (rar->file.dir == 0 && window_size == 0))
	{
		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Declared dictionary size is not supported.");
		return ARCHIVE_FATAL;
	}

	/* Values up to 64M should fit into ssize_t on every
	 * architecture. */
	rar->cstate.window_size = (ssize_t) window_size;
	FUNC9(rar);

	rar->file.solid = (compression_info & SOLID) > 0;
	rar->file.service = 0;

	if(!FUNC16(a, &host_os, NULL))
		return ARCHIVE_EOF;

	enum HOST_OS {
		HOST_WINDOWS = 0,
		HOST_UNIX = 1,
	};

	if(host_os == HOST_WINDOWS) {
		/* Host OS is Windows */

		__LA_MODE_T mode;

		if(file_attr & ATTR_DIRECTORY) {
			if (file_attr & ATTR_READONLY) {
				mode = 0555 | AE_IFDIR;
			} else {
				mode = 0755 | AE_IFDIR;
			}
		} else {
			if (file_attr & ATTR_READONLY) {
				mode = 0444 | AE_IFREG;
			} else {
				mode = 0644 | AE_IFREG;
			}
		}

		FUNC2(entry, mode);

		if (file_attr & (ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM)) {
			char *fflags_text, *ptr;
			/* allocate for "rdonly,hidden,system," */
			fflags_text = FUNC10(22 * sizeof(char));
			if (fflags_text != NULL) {
				ptr = fflags_text;
				if (file_attr & ATTR_READONLY) {
					FUNC18(ptr, "rdonly,");
					ptr = ptr + 7;
				}
				if (file_attr & ATTR_HIDDEN) {
					FUNC18(ptr, "hidden,");
					ptr = ptr + 7;
				}
				if (file_attr & ATTR_SYSTEM) {
					FUNC18(ptr, "system,");
					ptr = ptr + 7;
				}
				if (ptr > fflags_text) {
					/* Delete trailing comma */
					*(ptr - 1) = '\0';
					FUNC1(entry,
					    fflags_text);
				}
				FUNC8(fflags_text);
			}
		}
	} else if(host_os == HOST_UNIX) {
		/* Host OS is Unix */
		FUNC2(entry, (__LA_MODE_T) file_attr);
	} else {
		/* Unknown host OS */
		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
				"Unsupported Host OS: 0x%x", (int) host_os);

		return ARCHIVE_FATAL;
	}

	if(!FUNC16(a, &name_size, NULL))
		return ARCHIVE_EOF;

	if(!FUNC13(a, name_size, &p))
		return ARCHIVE_EOF;

	if(name_size > (MAX_NAME_IN_CHARS - 1)) {
		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
				"Filename is too long");

		return ARCHIVE_FATAL;
	}

	if(name_size == 0) {
		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
				"No filename specified");

		return ARCHIVE_FATAL;
	}

	FUNC11(name_utf8_buf, p, name_size);
	name_utf8_buf[name_size] = 0;
	if(ARCHIVE_OK != FUNC7(a, name_size)) {
		return ARCHIVE_EOF;
	}

	FUNC5(entry, name_utf8_buf);

	if(extra_data_size > 0) {
		int ret = FUNC12(a, entry, rar,
		    extra_data_size);

		/* Sanity check. */
		if(extra_data_size < 0) {
			FUNC6(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
			    "File extra data size is not zero");
			return ARCHIVE_FATAL;
		}

		if(ret != ARCHIVE_OK)
			return ret;
	}

	if((file_flags & UNKNOWN_UNPACKED_SIZE) == 0) {
		rar->file.unpacked_size = (ssize_t) unpacked_size;
		if(rar->file.redir_type == REDIR_TYPE_NONE)
			FUNC4(entry, unpacked_size);
	}

	if(file_flags & UTIME) {
		FUNC3(entry, (time_t) mtime, 0);
	}

	if(file_flags & CRC32) {
		rar->file.stored_crc32 = crc;
	}

	if(!rar->cstate.switch_multivolume) {
		/* Do not reinitialize unpacking state if we're switching
		 * archives. */
		rar->cstate.block_parsing_finished = 1;
		rar->cstate.all_filters_applied = 1;
		rar->cstate.initialized = 0;
	}

	if(rar->generic.split_before > 0) {
		/* If now we're standing on a header that has a 'split before'
		 * mark, it means we're standing on a 'continuation' file
		 * header. Signal the caller that if it wants to move to
		 * another file, it must call rar5_read_header() function
		 * again. */

		return ARCHIVE_RETRY;
	} else {
		return ARCHIVE_OK;
	}
}