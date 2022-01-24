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
typedef  int /*<<< orphan*/  time_t ;
struct mtree_option {char* value; } ;
struct mtree {int /*<<< orphan*/  contents_name; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFBLK ; 
 int /*<<< orphan*/  AE_IFCHR ; 
 int /*<<< orphan*/  AE_IFDIR ; 
 int /*<<< orphan*/  AE_IFIFO ; 
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int MTREE_HAS_DEVICE ; 
 int MTREE_HAS_FFLAGS ; 
 int MTREE_HAS_GID ; 
 int MTREE_HAS_GNAME ; 
 int MTREE_HAS_MTIME ; 
 int MTREE_HAS_NLINK ; 
 int MTREE_HAS_NOCHANGE ; 
 int MTREE_HAS_OPTIONAL ; 
 int MTREE_HAS_PERM ; 
 int MTREE_HAS_TYPE ; 
 int MTREE_HAS_UID ; 
 int MTREE_HAS_UNAME ; 
 int /*<<< orphan*/  __LA_FALLTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ FUNC18 (char**,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char*,char) ; 
 scalar_t__ FUNC22 (char*,char*) ; 

__attribute__((used)) static int
FUNC23(struct archive_read *a, struct mtree *mtree,
    struct archive_entry *entry, struct mtree_option *opt, int *parsed_kws)
{
	char *val, *key;

	key = opt->value;

	if (*key == '\0')
		return (ARCHIVE_OK);

	if (FUNC22(key, "nochange") == 0) {
		*parsed_kws |= MTREE_HAS_NOCHANGE;
		return (ARCHIVE_OK);
	}
	if (FUNC22(key, "optional") == 0) {
		*parsed_kws |= MTREE_HAS_OPTIONAL;
		return (ARCHIVE_OK);
	}
	if (FUNC22(key, "ignore") == 0) {
		/*
		 * The mtree processing is not recursive, so
		 * recursion will only happen for explicitly listed
		 * entries.
		 */
		return (ARCHIVE_OK);
	}

	val = FUNC21(key, '=');
	if (val == NULL) {
		FUNC14(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Malformed attribute \"%s\" (%d)", key, key[0]);
		return (ARCHIVE_WARN);
	}

	*val = '\0';
	++val;

	switch (key[0]) {
	case 'c':
		if (FUNC22(key, "content") == 0
		    || FUNC22(key, "contents") == 0) {
			FUNC20(val, NULL);
			FUNC15(&mtree->contents_name, val);
			break;
		}
		if (FUNC22(key, "cksum") == 0)
			break;
		__LA_FALLTHROUGH;
	case 'd':
		if (FUNC22(key, "device") == 0) {
			/* stat(2) st_rdev field, e.g. the major/minor IDs
			 * of a char/block special file */
			int r;
			dev_t dev;

			*parsed_kws |= MTREE_HAS_DEVICE;
			r = FUNC19(&dev, &a->archive, val);
			if (r == ARCHIVE_OK)
				FUNC11(entry, dev);
			return r;
		}
		__LA_FALLTHROUGH;
	case 'f':
		if (FUNC22(key, "flags") == 0) {
			*parsed_kws |= MTREE_HAS_FFLAGS;
			FUNC0(entry, val);
			break;
		}
		__LA_FALLTHROUGH;
	case 'g':
		if (FUNC22(key, "gid") == 0) {
			*parsed_kws |= MTREE_HAS_GID;
			FUNC6(entry, FUNC18(&val, 10));
			break;
		}
		if (FUNC22(key, "gname") == 0) {
			*parsed_kws |= MTREE_HAS_GNAME;
			FUNC1(entry, val);
			break;
		}
		__LA_FALLTHROUGH;
	case 'i':
		if (FUNC22(key, "inode") == 0) {
			FUNC7(entry, FUNC18(&val, 10));
			break;
		}
		__LA_FALLTHROUGH;
	case 'l':
		if (FUNC22(key, "link") == 0) {
			FUNC2(entry, val);
			break;
		}
		__LA_FALLTHROUGH;
	case 'm':
		if (FUNC22(key, "md5") == 0 || FUNC22(key, "md5digest") == 0)
			break;
		if (FUNC22(key, "mode") == 0) {
			if (val[0] >= '0' && val[0] <= '7') {
				*parsed_kws |= MTREE_HAS_PERM;
				FUNC10(entry,
				    (mode_t)FUNC18(&val, 8));
			} else {
				FUNC14(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Symbolic or non-octal mode \"%s\" unsupported", val);
				return ARCHIVE_WARN;
			}
			break;
		}
		__LA_FALLTHROUGH;
	case 'n':
		if (FUNC22(key, "nlink") == 0) {
			*parsed_kws |= MTREE_HAS_NLINK;
			FUNC9(entry,
				(unsigned int)FUNC18(&val, 10));
			break;
		}
		__LA_FALLTHROUGH;
	case 'r':
		if (FUNC22(key, "resdevice") == 0) {
			/* stat(2) st_dev field, e.g. the device ID where the
			 * inode resides */
			int r;
			dev_t dev;

			r = FUNC19(&dev, &a->archive, val);
			if (r == ARCHIVE_OK)
				FUNC4(entry, dev);
			return r;
		}
		if (FUNC22(key, "rmd160") == 0 ||
		    FUNC22(key, "rmd160digest") == 0)
			break;
		__LA_FALLTHROUGH;
	case 's':
		if (FUNC22(key, "sha1") == 0 || FUNC22(key, "sha1digest") == 0)
			break;
		if (FUNC22(key, "sha256") == 0 ||
		    FUNC22(key, "sha256digest") == 0)
			break;
		if (FUNC22(key, "sha384") == 0 ||
		    FUNC22(key, "sha384digest") == 0)
			break;
		if (FUNC22(key, "sha512") == 0 ||
		    FUNC22(key, "sha512digest") == 0)
			break;
		if (FUNC22(key, "size") == 0) {
			FUNC12(entry, FUNC18(&val, 10));
			break;
		}
		__LA_FALLTHROUGH;
	case 't':
		if (FUNC22(key, "tags") == 0) {
			/*
			 * Comma delimited list of tags.
			 * Ignore the tags for now, but the interface
			 * should be extended to allow inclusion/exclusion.
			 */
			break;
		}
		if (FUNC22(key, "time") == 0) {
			int64_t m;
			int64_t my_time_t_max = FUNC16();
			int64_t my_time_t_min = FUNC17();
			long ns = 0;

			*parsed_kws |= MTREE_HAS_MTIME;
			m = FUNC18(&val, 10);
			/* Replicate an old mtree bug:
			 * 123456789.1 represents 123456789
			 * seconds and 1 nanosecond. */
			if (*val == '.') {
				++val;
				ns = (long)FUNC18(&val, 10);
				if (ns < 0)
					ns = 0;
				else if (ns > 999999999)
					ns = 999999999;
			}
			if (m > my_time_t_max)
				m = my_time_t_max;
			else if (m < my_time_t_min)
				m = my_time_t_min;
			FUNC8(entry, (time_t)m, ns);
			break;
		}
		if (FUNC22(key, "type") == 0) {
			switch (val[0]) {
			case 'b':
				if (FUNC22(val, "block") == 0) {
					FUNC5(entry, AE_IFBLK);
					break;
				}
				__LA_FALLTHROUGH;
			case 'c':
				if (FUNC22(val, "char") == 0) {
					FUNC5(entry,
						AE_IFCHR);
					break;
				}
				__LA_FALLTHROUGH;
			case 'd':
				if (FUNC22(val, "dir") == 0) {
					FUNC5(entry,
						AE_IFDIR);
					break;
				}
				__LA_FALLTHROUGH;
			case 'f':
				if (FUNC22(val, "fifo") == 0) {
					FUNC5(entry,
						AE_IFIFO);
					break;
				}
				if (FUNC22(val, "file") == 0) {
					FUNC5(entry,
						AE_IFREG);
					break;
				}
				__LA_FALLTHROUGH;
			case 'l':
				if (FUNC22(val, "link") == 0) {
					FUNC5(entry,
						AE_IFLNK);
					break;
				}
				__LA_FALLTHROUGH;
			default:
				FUNC14(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Unrecognized file type \"%s\"; "
				    "assuming \"file\"", val);
				FUNC5(entry, AE_IFREG);
				return (ARCHIVE_WARN);
			}
			*parsed_kws |= MTREE_HAS_TYPE;
			break;
		}
		__LA_FALLTHROUGH;
	case 'u':
		if (FUNC22(key, "uid") == 0) {
			*parsed_kws |= MTREE_HAS_UID;
			FUNC13(entry, FUNC18(&val, 10));
			break;
		}
		if (FUNC22(key, "uname") == 0) {
			*parsed_kws |= MTREE_HAS_UNAME;
			FUNC3(entry, val);
			break;
		}
		__LA_FALLTHROUGH;
	default:
		FUNC14(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unrecognized key %s=%s", key, val);
		return (ARCHIVE_WARN);
	}
	return (ARCHIVE_OK);
}