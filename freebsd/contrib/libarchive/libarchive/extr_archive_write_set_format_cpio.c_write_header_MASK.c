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
struct cpio {int entry_bytes_remaining; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  h ;

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
 int FUNC0 (struct archive_write*,char const*,int) ; 
 struct archive_entry* FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int FUNC10 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int FUNC14 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct archive_string_conv*) ; 
 int c_dev_offset ; 
 int /*<<< orphan*/  c_dev_size ; 
 int c_filesize_offset ; 
 int /*<<< orphan*/  c_filesize_size ; 
 int c_gid_offset ; 
 int /*<<< orphan*/  c_gid_size ; 
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
 int c_rdev_offset ; 
 int /*<<< orphan*/  c_rdev_size ; 
 int c_uid_offset ; 
 int /*<<< orphan*/  c_uid_size ; 
 scalar_t__ errno ; 
 int FUNC18 (int,char*,int /*<<< orphan*/ ) ; 
 struct archive_string_conv* FUNC19 (struct archive_write*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (char const*) ; 
 int FUNC22 (struct cpio*,struct archive_entry*) ; 

__attribute__((used)) static int
FUNC23(struct archive_write *a, struct archive_entry *entry)
{
	struct cpio *cpio;
	const char *p, *path;
	int pathlength, ret, ret_final;
	int64_t	ino;
	char h[76];
	struct archive_string_conv *sconv;
	struct archive_entry *entry_main;
	size_t len;

	cpio = (struct cpio *)a->format_data;
	ret_final = ARCHIVE_OK;
	sconv = FUNC19(a);

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

	ret = FUNC10(entry, &path, &len, sconv);
	if (ret != 0) {
		if (errno == ENOMEM) {
			FUNC16(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC16(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate pathname '%s' to %s",
		    FUNC9(entry),
		    FUNC17(sconv));
		ret_final = ARCHIVE_WARN;
	}
	/* Include trailing null. */
	pathlength = (int)len + 1;

	FUNC20(h, 0, sizeof(h));
	FUNC18(070707, h + c_magic_offset, c_magic_size);
	FUNC18(FUNC2(entry), h + c_dev_offset, c_dev_size);

	ino = FUNC22(cpio, entry);
	if (ino < 0) {
		FUNC16(&a->archive, ENOMEM,
		    "No memory for ino translation table");
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	} else if (ino > 0777777) {
		FUNC16(&a->archive, ERANGE,
		    "Too many files for this cpio format");
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	}
	FUNC18(ino & 0777777, h + c_ino_offset, c_ino_size);

	/* TODO: Set ret_final to ARCHIVE_WARN if any of these overflow. */
	FUNC18(FUNC6(entry), h + c_mode_offset, c_mode_size);
	FUNC18(FUNC15(entry), h + c_uid_offset, c_uid_size);
	FUNC18(FUNC5(entry), h + c_gid_offset, c_gid_size);
	FUNC18(FUNC8(entry), h + c_nlink_offset, c_nlink_size);
	if (FUNC3(entry) == AE_IFBLK
	    || FUNC3(entry) == AE_IFCHR)
	    FUNC18(FUNC2(entry), h + c_rdev_offset, c_rdev_size);
	else
	    FUNC18(0, h + c_rdev_offset, c_rdev_size);
	FUNC18(FUNC7(entry), h + c_mtime_offset, c_mtime_size);
	FUNC18(pathlength, h + c_namesize_offset, c_namesize_size);

	/* Non-regular files don't store bodies. */
	if (FUNC3(entry) != AE_IFREG)
		FUNC11(entry, 0);

	/* Symlinks get the link written as the body of the entry. */
	ret = FUNC14(entry, &p, &len, sconv);
	if (ret != 0) {
		if (errno == ENOMEM) {
			FUNC16(&a->archive, ENOMEM,
			    "Can't allocate memory for Linkname");
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC16(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate linkname '%s' to %s",
		    FUNC13(entry),
		    FUNC17(sconv));
		ret_final = ARCHIVE_WARN;
	}
	if (len > 0 && p != NULL  &&  *p != '\0')
		ret = FUNC18(FUNC21(p), h + c_filesize_offset,
		    c_filesize_size);
	else
		ret = FUNC18(FUNC12(entry),
		    h + c_filesize_offset, c_filesize_size);
	if (ret) {
		FUNC16(&a->archive, ERANGE,
		    "File is too large for cpio format.");
		ret_final = ARCHIVE_FAILED;
		goto exit_write_header;
	}

	ret = FUNC0(a, h, sizeof(h));
	if (ret != ARCHIVE_OK) {
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	}

	ret = FUNC0(a, path, pathlength);
	if (ret != ARCHIVE_OK) {
		ret_final = ARCHIVE_FATAL;
		goto exit_write_header;
	}

	cpio->entry_bytes_remaining = FUNC12(entry);

	/* Write the symlink now. */
	if (p != NULL  &&  *p != '\0') {
		ret = FUNC0(a, p, FUNC21(p));
		if (ret != ARCHIVE_OK) {
			ret_final = ARCHIVE_FATAL;
			goto exit_write_header;
		}
	}
exit_write_header:
	FUNC4(entry_main);
	return (ret_final);
}