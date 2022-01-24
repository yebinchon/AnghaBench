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
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int USTAR_checksum_offset ; 
 int /*<<< orphan*/  USTAR_gid_max_size ; 
 int USTAR_gid_offset ; 
 int /*<<< orphan*/  USTAR_gid_size ; 
 int USTAR_gname_offset ; 
 size_t USTAR_gname_size ; 
 int USTAR_linkname_offset ; 
 size_t USTAR_linkname_size ; 
 int /*<<< orphan*/  USTAR_mode_max_size ; 
 int USTAR_mode_offset ; 
 int /*<<< orphan*/  USTAR_mode_size ; 
 int /*<<< orphan*/  USTAR_mtime_max_size ; 
 int USTAR_mtime_offset ; 
 int /*<<< orphan*/  USTAR_mtime_size ; 
 int USTAR_name_offset ; 
 size_t USTAR_name_size ; 
 int USTAR_prefix_offset ; 
 int USTAR_prefix_size ; 
 int /*<<< orphan*/  USTAR_rdevmajor_max_size ; 
 int USTAR_rdevmajor_offset ; 
 int /*<<< orphan*/  USTAR_rdevmajor_size ; 
 int /*<<< orphan*/  USTAR_rdevminor_max_size ; 
 int USTAR_rdevminor_offset ; 
 int /*<<< orphan*/  USTAR_rdevminor_size ; 
 int /*<<< orphan*/  USTAR_size_max_size ; 
 int USTAR_size_offset ; 
 int /*<<< orphan*/  USTAR_size_size ; 
 size_t USTAR_typeflag_offset ; 
 int /*<<< orphan*/  USTAR_uid_max_size ; 
 int USTAR_uid_offset ; 
 int /*<<< orphan*/  USTAR_uid_size ; 
 int USTAR_uname_offset ; 
 size_t USTAR_uname_size ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC3 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive_entry*) ; 
 int FUNC10 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int FUNC11 (struct archive_entry*) ; 
 int FUNC12 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_string_conv*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC15 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,size_t) ; 
 char* FUNC18 (char const*,char) ; 
 size_t FUNC19 (char const*) ; 
 char const template_header ; 

int
FUNC20(struct archive_write *a, char h[512],
    struct archive_entry *entry, int tartype, int strict,
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
	 * The "template header" already includes the "ustar"
	 * signature, various end-of-field markers and other required
	 * elements.
	 */
	FUNC17(h, &template_header, 512);

	/*
	 * Because the block is already null-filled, and strings
	 * are allowed to exactly fill their destination (without null),
	 * I use memcpy(dest, src, strlen()) here a lot to copy strings.
	 */
	r = FUNC6(entry, &pp, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC13(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC13(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate pathname '%s' to %s",
		    pp, FUNC14(sconv));
		ret = ARCHIVE_WARN;
	}
	if (copy_length <= USTAR_name_size)
		FUNC17(h + USTAR_name_offset, pp, copy_length);
	else {
		/* Store in two pieces, splitting at a '/'. */
		p = FUNC18(pp + copy_length - USTAR_name_size - 1, '/');
		/*
		 * Look for the next '/' if we chose the first character
		 * as the separator.  (ustar format doesn't permit
		 * an empty prefix.)
		 */
		if (p == pp)
			p = FUNC18(p + 1, '/');
		/* Fail if the name won't fit. */
		if (!p) {
			/* No separator. */
			FUNC13(&a->archive, ENAMETOOLONG,
			    "Pathname too long");
			ret = ARCHIVE_FAILED;
		} else if (p[1] == '\0') {
			/*
			 * The only feasible separator is a final '/';
			 * this would result in a non-empty prefix and
			 * an empty name, which POSIX doesn't
			 * explicitly forbid, but it just feels wrong.
			 */
			FUNC13(&a->archive, ENAMETOOLONG,
			    "Pathname too long");
			ret = ARCHIVE_FAILED;
		} else if (p  > pp + USTAR_prefix_size) {
			/* Prefix is too long. */
			FUNC13(&a->archive, ENAMETOOLONG,
			    "Pathname too long");
			ret = ARCHIVE_FAILED;
		} else {
			/* Copy prefix and remainder to appropriate places */
			FUNC17(h + USTAR_prefix_offset, pp, p - pp);
			FUNC17(h + USTAR_name_offset, p + 1,
			    pp + copy_length - p - 1);
		}
	}

	r = FUNC3(entry, &p, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC13(&a->archive, ENOMEM,
			    "Can't allocate memory for Linkname");
			return (ARCHIVE_FATAL);
		}
		FUNC13(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate linkname '%s' to %s",
		    p, FUNC14(sconv));
		ret = ARCHIVE_WARN;
	}
	if (copy_length > 0)
		mytartype = '1';
	else {
		r = FUNC10(entry, &p, &copy_length, sconv);
		if (r != 0) {
			if (errno == ENOMEM) {
				FUNC13(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				return (ARCHIVE_FATAL);
			}
			FUNC13(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Can't translate linkname '%s' to %s",
			    p, FUNC14(sconv));
			ret = ARCHIVE_WARN;
		}
	}
	if (copy_length > 0) {
		if (copy_length > USTAR_linkname_size) {
			FUNC13(&a->archive, ENAMETOOLONG,
			    "Link contents too long");
			ret = ARCHIVE_FAILED;
			copy_length = USTAR_linkname_size;
		}
		FUNC17(h + USTAR_linkname_offset, p, copy_length);
	}

	r = FUNC12(entry, &p, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC13(&a->archive, ENOMEM,
			    "Can't allocate memory for Uname");
			return (ARCHIVE_FATAL);
		}
		FUNC13(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate uname '%s' to %s",
		    p, FUNC14(sconv));
		ret = ARCHIVE_WARN;
	}
	if (copy_length > 0) {
		if (copy_length > USTAR_uname_size) {
			FUNC13(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Username too long");
			ret = ARCHIVE_FAILED;
			copy_length = USTAR_uname_size;
		}
		FUNC17(h + USTAR_uname_offset, p, copy_length);
	}

	r = FUNC2(entry, &p, &copy_length, sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC13(&a->archive, ENOMEM,
			    "Can't allocate memory for Gname");
			return (ARCHIVE_FATAL);
		}
		FUNC13(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate gname '%s' to %s",
		    p, FUNC14(sconv));
		ret = ARCHIVE_WARN;
	}
	if (copy_length > 0) {
		if (FUNC19(p) > USTAR_gname_size) {
			FUNC13(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Group name too long");
			ret = ARCHIVE_FAILED;
			copy_length = USTAR_gname_size;
		}
		FUNC17(h + USTAR_gname_offset, p, copy_length);
	}

	if (FUNC15(FUNC4(entry) & 07777,
	    h + USTAR_mode_offset, USTAR_mode_size, USTAR_mode_max_size, strict)) {
		FUNC13(&a->archive, ERANGE,
		    "Numeric mode too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC15(FUNC11(entry),
	    h + USTAR_uid_offset, USTAR_uid_size, USTAR_uid_max_size, strict)) {
		FUNC13(&a->archive, ERANGE,
		    "Numeric user ID too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC15(FUNC1(entry),
	    h + USTAR_gid_offset, USTAR_gid_size, USTAR_gid_max_size, strict)) {
		FUNC13(&a->archive, ERANGE,
		    "Numeric group ID too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC15(FUNC9(entry),
	    h + USTAR_size_offset, USTAR_size_size, USTAR_size_max_size, strict)) {
		FUNC13(&a->archive, ERANGE,
		    "File size out of range");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC15(FUNC5(entry),
	    h + USTAR_mtime_offset, USTAR_mtime_size, USTAR_mtime_max_size, strict)) {
		FUNC13(&a->archive, ERANGE,
		    "File modification time too large");
		ret = ARCHIVE_FAILED;
	}

	if (FUNC0(entry) == AE_IFBLK
	    || FUNC0(entry) == AE_IFCHR) {
		if (FUNC15(FUNC7(entry),
		    h + USTAR_rdevmajor_offset, USTAR_rdevmajor_size,
		    USTAR_rdevmajor_max_size, strict)) {
			FUNC13(&a->archive, ERANGE,
			    "Major device number too large");
			ret = ARCHIVE_FAILED;
		}

		if (FUNC15(FUNC8(entry),
		    h + USTAR_rdevminor_offset, USTAR_rdevminor_size,
		    USTAR_rdevminor_max_size, strict)) {
			FUNC13(&a->archive, ERANGE,
			    "Minor device number too large");
			ret = ARCHIVE_FAILED;
		}
	}

	if (tartype >= 0) {
		h[USTAR_typeflag_offset] = tartype;
	} else if (mytartype >= 0) {
		h[USTAR_typeflag_offset] = mytartype;
	} else {
		switch (FUNC0(entry)) {
		case AE_IFREG: h[USTAR_typeflag_offset] = '0' ; break;
		case AE_IFLNK: h[USTAR_typeflag_offset] = '2' ; break;
		case AE_IFCHR: h[USTAR_typeflag_offset] = '3' ; break;
		case AE_IFBLK: h[USTAR_typeflag_offset] = '4' ; break;
		case AE_IFDIR: h[USTAR_typeflag_offset] = '5' ; break;
		case AE_IFIFO: h[USTAR_typeflag_offset] = '6' ; break;
		case AE_IFSOCK:
			FUNC13(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive socket");
			return (ARCHIVE_FAILED);
		default:
			FUNC13(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive this (mode=0%lo)",
			    (unsigned long)FUNC4(entry));
			ret = ARCHIVE_FAILED;
		}
	}

	checksum = 0;
	for (i = 0; i < 512; i++)
		checksum += 255 & (unsigned int)h[i];
	h[USTAR_checksum_offset + 6] = '\0'; /* Can't be pre-set in the template. */
	/* h[USTAR_checksum_offset + 7] = ' '; */ /* This is pre-set in the template. */
	FUNC16(checksum, h + USTAR_checksum_offset, 6);
	return (ret);
}