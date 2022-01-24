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
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
#define  AE_IFBLK 134 
#define  AE_IFCHR 133 
#define  AE_IFDIR 132 
#define  AE_IFIFO 131 
#define  AE_IFLNK 130 
#define  AE_IFREG 129 
#define  AE_IFSOCK 128 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int V7TAR_checksum_offset ; 
 int /*<<< orphan*/  V7TAR_gid_max_size ; 
 int V7TAR_gid_offset ; 
 int /*<<< orphan*/  V7TAR_gid_size ; 
 int V7TAR_linkname_offset ; 
 size_t V7TAR_linkname_size ; 
 int /*<<< orphan*/  V7TAR_mode_max_size ; 
 int V7TAR_mode_offset ; 
 int /*<<< orphan*/  V7TAR_mode_size ; 
 int /*<<< orphan*/  V7TAR_mtime_max_size ; 
 int V7TAR_mtime_offset ; 
 int /*<<< orphan*/  V7TAR_mtime_size ; 
 int V7TAR_name_offset ; 
 size_t V7TAR_name_size ; 
 int /*<<< orphan*/  V7TAR_size_max_size ; 
 int V7TAR_size_offset ; 
 int /*<<< orphan*/  V7TAR_size_size ; 
 size_t V7TAR_typeflag_offset ; 
 int /*<<< orphan*/  V7TAR_uid_max_size ; 
 int V7TAR_uid_offset ; 
 int /*<<< orphan*/  V7TAR_uid_size ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_string_conv*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC11 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,size_t) ; 
 char const template_header ; 

__attribute__((used)) static int
FUNC14(struct archive_write *a, char h[512],
    struct archive_entry *entry, int strict,
    struct archive_string_conv *sconv)
{
	unsigned int checksum;
	int i, r, ret;
	size_t copy_length;
	const char *p, *pp;
	int mytartype;

	ret = 0;
	mytartype = -1;
	/*
	 * The "template header" already includes the "v7tar"
	 * signature, various end-of-field markers and other required
	 * elements.
	 */
	FUNC13(h, &template_header, 512);

	/*
	 * Because the block is already null-filled, and strings
	 * are allowed to exactly fill their destination (without null),
	 * I use memcpy(dest, src, strlen()) here a lot to copy strings.
	 */
	r = FUNC5(entry, &pp, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC9(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC9(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate pathname '%s' to %s",
		    pp, FUNC10(sconv));
		ret = ARCHIVE_WARN;
	}
	if (strict && copy_length < V7TAR_name_size)
		FUNC13(h + V7TAR_name_offset, pp, copy_length);
	else if (!strict && copy_length <= V7TAR_name_size)
		FUNC13(h + V7TAR_name_offset, pp, copy_length);
	else {
		/* Prefix is too long. */
		FUNC9(&a->archive, ENAMETOOLONG,
		    "Pathname too long");
		ret = ARCHIVE_FAILED;
	}

	r = FUNC2(entry, &p, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC9(&a->archive, ENOMEM,
			    "Can't allocate memory for Linkname");
			return (ARCHIVE_FATAL);
		}
		FUNC9(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate linkname '%s' to %s",
		    p, FUNC10(sconv));
		ret = ARCHIVE_WARN;
	}
	if (copy_length > 0)
		mytartype = '1';
	else {
		r = FUNC7(entry, &p, &copy_length, sconv);
		if (r != 0) {
			if (errno == ENOMEM) {
				FUNC9(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				return (ARCHIVE_FATAL);
			}
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Can't translate linkname '%s' to %s",
			    p, FUNC10(sconv));
			ret = ARCHIVE_WARN;
		}
	}
	if (copy_length > 0) {
		if (copy_length >= V7TAR_linkname_size) {
			FUNC9(&a->archive, ENAMETOOLONG,
			    "Link contents too long");
			ret = ARCHIVE_FAILED;
			copy_length = V7TAR_linkname_size;
		}
		FUNC13(h + V7TAR_linkname_offset, p, copy_length);
	}

	if (FUNC11(FUNC3(entry) & 07777,
	    h + V7TAR_mode_offset, V7TAR_mode_size,
	    V7TAR_mode_max_size, strict)) {
		FUNC9(&a->archive, ERANGE,
		    "Numeric mode too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC11(FUNC8(entry),
	    h + V7TAR_uid_offset, V7TAR_uid_size, V7TAR_uid_max_size, strict)) {
		FUNC9(&a->archive, ERANGE,
		    "Numeric user ID too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC11(FUNC1(entry),
	    h + V7TAR_gid_offset, V7TAR_gid_size, V7TAR_gid_max_size, strict)) {
		FUNC9(&a->archive, ERANGE,
		    "Numeric group ID too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC11(FUNC6(entry),
	    h + V7TAR_size_offset, V7TAR_size_size,
	    V7TAR_size_max_size, strict)) {
		FUNC9(&a->archive, ERANGE,
		    "File size out of range");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC11(FUNC4(entry),
	    h + V7TAR_mtime_offset, V7TAR_mtime_size,
	    V7TAR_mtime_max_size, strict)) {
		FUNC9(&a->archive, ERANGE,
		    "File modification time too large");
		ret = ARCHIVE_FAILED;
	}

	if (mytartype >= 0) {
		h[V7TAR_typeflag_offset] = mytartype;
	} else {
		switch (FUNC0(entry)) {
		case AE_IFREG: case AE_IFDIR:
			break;
		case AE_IFLNK:
			h[V7TAR_typeflag_offset] = '2';
			break;
		case AE_IFCHR:
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive character device");
			return (ARCHIVE_FAILED);
		case AE_IFBLK:
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive block device");
			return (ARCHIVE_FAILED);
		case AE_IFIFO:
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive fifo");
			return (ARCHIVE_FAILED);
		case AE_IFSOCK:
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive socket");
			return (ARCHIVE_FAILED);
		default:
			FUNC9(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive this (mode=0%lo)",
			    (unsigned long)FUNC3(entry));
			ret = ARCHIVE_FAILED;
		}
	}

	checksum = 0;
	for (i = 0; i < 512; i++)
		checksum += 255 & (unsigned int)h[i];
	FUNC12(checksum, h + V7TAR_checksum_offset, 6);
	/* Can't be pre-set in the template. */
	h[V7TAR_checksum_offset + 6] = '\0';
	return (ret);
}