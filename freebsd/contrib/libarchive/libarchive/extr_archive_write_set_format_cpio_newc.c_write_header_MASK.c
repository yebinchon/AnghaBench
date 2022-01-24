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
struct cpio {int entry_bytes_remaining; int padding; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ AE_IFBLK ; 
 scalar_t__ AE_IFCHR ; 
 scalar_t__ AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ERANGE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct archive_write*,char const*,int) ; 
 struct archive_entry* FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive_entry*) ; 
 int FUNC10 (struct archive_entry*) ; 
 int FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int FUNC13 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC14 (struct archive_entry*) ; 
 int FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_entry*) ; 
 int FUNC19 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC20 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_string_conv*) ; 
 int c_checksum_offset ; 
 int /*<<< orphan*/  c_checksum_size ; 
 int c_devmajor_offset ; 
 int /*<<< orphan*/  c_devmajor_size ; 
 int c_devminor_offset ; 
 int /*<<< orphan*/  c_devminor_size ; 
 int c_filesize_offset ; 
 int /*<<< orphan*/  c_filesize_size ; 
 int c_gid_offset ; 
 int /*<<< orphan*/  c_gid_size ; 
 int c_header_size ; 
 int c_ino_offset ; 
 int /*<<< orphan*/  c_ino_size ; 
 int c_magic_offset ; 
 int /*<<< orphan*/  c_magic_size ; 
 int c_mode_offset ; 
 int /*<<< orphan*/  c_mode_size ; 
 int c_mtime_offset ; 
 int /*<<< orphan*/  c_mtime_size ; 
 int c_namesize_offset ; 
 int /*<<< orphan*/  c_namesize_size ; 
 int c_nlink_offset ; 
 int /*<<< orphan*/  c_nlink_size ; 
 int c_rdevmajor_offset ; 
 int /*<<< orphan*/  c_rdevmajor_size ; 
 int c_rdevminor_offset ; 
 int /*<<< orphan*/  c_rdevminor_size ; 
 int c_uid_offset ; 
 int /*<<< orphan*/  c_uid_size ; 
 scalar_t__ errno ; 
 int FUNC23 (int,char*,int /*<<< orphan*/ ) ; 
 struct archive_string_conv* FUNC24 (struct archive_write*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (char const*) ; 

__attribute__((used)) static int
FUNC27(struct archive_write *a, struct archive_entry *entry)
{
	int64_t ino;
	struct cpio *cpio;
	const char *p, *path;
	int pathlength, ret, ret_final;
	char h[c_header_size];
	struct archive_string_conv *sconv;
	struct archive_entry *entry_main;
	size_t len;
	int pad;

	cpio = (struct cpio *)a->format_data;
	ret_final = ARCHIVE_OK;
	sconv = FUNC24(a);

#if defined(_WIN32) && !defined(__CYGWIN__)
	/* Make sure the path separators in pathname, hardlink and symlink
	 * are all slash '/', not the Windows path separator '\'. */
	entry_main = __la_win_entry_in_posix_pathseparator(entry);
	if (entry_main == NULL) {
		archive_set_error(&a->archive, ENOMEM,
		    "Can't allocate ustar data");
		return(ARCHIVE_FATAL);
	}
	if (entry != entry_main)
		entry = entry_main;
	else
		entry_main = NULL;
#else
	entry_main = NULL;
#endif

	ret = FUNC13(entry, &path, &len, sconv);
	if (ret != 0) {
		if (errno == ENOMEM) {
			FUNC21(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC21(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate pathname '%s' to %s",
		    FUNC12(entry),
		    FUNC22(sconv));
		ret_final = ARCHIVE_WARN;
	}
	pathlength = (int)len + 1; /* Include trailing null. */

	FUNC25(h, 0, c_header_size);
	FUNC23(0x070701, h + c_magic_offset, c_magic_size);
	FUNC23(FUNC3(entry), h + c_devmajor_offset,
	    c_devmajor_size);
	FUNC23(FUNC4(entry), h + c_devminor_offset,
	    c_devminor_size);

	ino = FUNC8(entry);
	if (ino > 0xffffffff) {
		FUNC21(&a->archive, ERANGE,
		    "large inode number truncated");
		ret_final = ARCHIVE_WARN;
	}

	/* TODO: Set ret_final to ARCHIVE_WARN if any of these overflow. */
	FUNC23(ino & 0xffffffff, h + c_ino_offset, c_ino_size);
	FUNC23(FUNC9(entry), h + c_mode_offset, c_mode_size);
	FUNC23(FUNC20(entry), h + c_uid_offset, c_uid_size);
	FUNC23(FUNC7(entry), h + c_gid_offset, c_gid_size);
	FUNC23(FUNC11(entry), h + c_nlink_offset, c_nlink_size);
	if (FUNC5(entry) == AE_IFBLK
	    || FUNC5(entry) == AE_IFCHR) {
	    FUNC23(FUNC14(entry), h + c_rdevmajor_offset, c_rdevmajor_size);
	    FUNC23(FUNC15(entry), h + c_rdevminor_offset, c_rdevminor_size);
	} else {
	    FUNC23(0, h + c_rdevmajor_offset, c_rdevmajor_size);
	    FUNC23(0, h + c_rdevminor_offset, c_rdevminor_size);
	}
	FUNC23(FUNC10(entry), h + c_mtime_offset, c_mtime_size);
	FUNC23(pathlength, h + c_namesize_offset, c_namesize_size);
	FUNC23(0, h + c_checksum_offset, c_checksum_size);

	/* Non-regular files don't store bodies. */
	if (FUNC5(entry) != AE_IFREG)
		FUNC16(entry, 0);

	/* Symlinks get the link written as the body of the entry. */
	ret = FUNC19(entry, &p, &len, sconv);
	if (ret != 0) {
		if (errno == ENOMEM) {
			FUNC21(&a->archive, ENOMEM,
			    "Can't allocate memory for Likname");
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC21(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate linkname '%s' to %s",
		    FUNC18(entry),
		    FUNC22(sconv));
		ret_final = ARCHIVE_WARN;
	}
	if (len > 0 && p != NULL  &&  *p != '\0')
		ret = FUNC23(FUNC26(p), h + c_filesize_offset,
		    c_filesize_size);
	else
		ret = FUNC23(FUNC17(entry),
		    h + c_filesize_offset, c_filesize_size);
	if (ret) {
		FUNC21(&a->archive, ERANGE,
		    "File is too large for this format.");
		ret_final = ARCHIVE_FAILED;
		goto exit_write_header;
	}

	ret = FUNC1(a, h, c_header_size);
	if (ret != ARCHIVE_OK) {
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	}

	/* Pad pathname to even length. */
	ret = FUNC1(a, path, pathlength);
	if (ret != ARCHIVE_OK) {
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	}
	pad = FUNC0(pathlength + c_header_size);
	if (pad) {
		ret = FUNC1(a, "\0\0\0", pad);
		if (ret != ARCHIVE_OK) {
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
	}

	cpio->entry_bytes_remaining = FUNC17(entry);
	cpio->padding = (int)FUNC0(cpio->entry_bytes_remaining);

	/* Write the symlink now. */
	if (p != NULL  &&  *p != '\0') {
		ret = FUNC1(a, p, FUNC26(p));
		if (ret != ARCHIVE_OK) {
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		pad = FUNC0(FUNC26(p));
		ret = FUNC1(a, "\0\0\0", pad);
		if (ret != ARCHIVE_OK) {
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
	}
exit_write_header:
	FUNC6(entry_main);
	return (ret_final);
}