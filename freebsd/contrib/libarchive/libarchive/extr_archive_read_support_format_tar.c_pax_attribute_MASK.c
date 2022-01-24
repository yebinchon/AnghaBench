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
struct tar {int sparse_offset; int sparse_numbytes; int sparse_gnu_major; int sparse_gnu_minor; int realsize_override; int sparse_gnu_pending; int pax_hdrcharset_binary; int /*<<< orphan*/  entry_uname; void* entry_bytes_remaining; void* realsize; int /*<<< orphan*/  entry_pathname; int /*<<< orphan*/  entry_linkpath; int /*<<< orphan*/  entry_gname; int /*<<< orphan*/  entry_pathname_override; int /*<<< orphan*/  sparse_allowed; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_SYMLINK_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  AE_SYMLINK_TYPE_FILE ; 
 int /*<<< orphan*/  ARCHIVE_ENTRY_ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ARCHIVE_ENTRY_ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  ARCHIVE_ENTRY_ACL_TYPE_NFS4 ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC16 (struct archive_read*,struct tar*,int,int) ; 
 int FUNC17 (struct archive_read*,struct tar*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*,int) ; 
 int FUNC19 (struct archive_read*,struct tar*,struct archive_entry*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct archive_entry*,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct archive_entry*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (char const*,int /*<<< orphan*/ *,long*) ; 
 int FUNC23 (struct archive_read*,struct tar*,struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char*,int) ; 
 void* FUNC27 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const char *key, const char *value, size_t value_length)
{
	int64_t s;
	long n;
	int err = ARCHIVE_OK, r;

#ifndef __FreeBSD__
	if (value == NULL)
		value = "";	/* Disable compiler warning; do not pass
				 * NULL pointer to strlen().  */
#endif
	switch (key[0]) {
	case 'G':
		/* Reject GNU.sparse.* headers on non-regular files. */
		if (FUNC26(key, "GNU.sparse", 10) == 0 &&
		    !tar->sparse_allowed) {
			FUNC14(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Non-regular file cannot be sparse");
			return (ARCHIVE_FATAL);
		}

		/* GNU "0.0" sparse pax format. */
		if (FUNC24(key, "GNU.sparse.numblocks") == 0) {
			tar->sparse_offset = -1;
			tar->sparse_numbytes = -1;
			tar->sparse_gnu_major = 0;
			tar->sparse_gnu_minor = 0;
		}
		if (FUNC24(key, "GNU.sparse.offset") == 0) {
			tar->sparse_offset = FUNC27(value, FUNC25(value));
			if (tar->sparse_numbytes != -1) {
				if (FUNC16(a, tar,
				    tar->sparse_offset, tar->sparse_numbytes)
				    != ARCHIVE_OK)
					return (ARCHIVE_FATAL);
				tar->sparse_offset = -1;
				tar->sparse_numbytes = -1;
			}
		}
		if (FUNC24(key, "GNU.sparse.numbytes") == 0) {
			tar->sparse_numbytes = FUNC27(value, FUNC25(value));
			if (tar->sparse_numbytes != -1) {
				if (FUNC16(a, tar,
				    tar->sparse_offset, tar->sparse_numbytes)
				    != ARCHIVE_OK)
					return (ARCHIVE_FATAL);
				tar->sparse_offset = -1;
				tar->sparse_numbytes = -1;
			}
		}
		if (FUNC24(key, "GNU.sparse.size") == 0) {
			tar->realsize = FUNC27(value, FUNC25(value));
			FUNC11(entry, tar->realsize);
			tar->realsize_override = 1;
		}

		/* GNU "0.1" sparse pax format. */
		if (FUNC24(key, "GNU.sparse.map") == 0) {
			tar->sparse_gnu_major = 0;
			tar->sparse_gnu_minor = 1;
			if (FUNC17(a, tar, value) != ARCHIVE_OK)
				return (ARCHIVE_WARN);
		}

		/* GNU "1.0" sparse pax format */
		if (FUNC24(key, "GNU.sparse.major") == 0) {
			tar->sparse_gnu_major = (int)FUNC27(value, FUNC25(value));
			tar->sparse_gnu_pending = 1;
		}
		if (FUNC24(key, "GNU.sparse.minor") == 0) {
			tar->sparse_gnu_minor = (int)FUNC27(value, FUNC25(value));
			tar->sparse_gnu_pending = 1;
		}
		if (FUNC24(key, "GNU.sparse.name") == 0) {
			/*
			 * The real filename; when storing sparse
			 * files, GNU tar puts a synthesized name into
			 * the regular 'path' attribute in an attempt
			 * to limit confusion. ;-)
			 */
			FUNC15(&(tar->entry_pathname_override), value);
		}
		if (FUNC24(key, "GNU.sparse.realsize") == 0) {
			tar->realsize = FUNC27(value, FUNC25(value));
			FUNC11(entry, tar->realsize);
			tar->realsize_override = 1;
		}
		break;
	case 'L':
		/* Our extensions */
/* TODO: Handle arbitrary extended attributes... */
/*
		if (strcmp(key, "LIBARCHIVE.xxxxxxx") == 0)
			archive_entry_set_xxxxxx(entry, value);
*/
		if (FUNC24(key, "LIBARCHIVE.creationtime") == 0) {
			FUNC22(value, &s, &n);
			FUNC2(entry, s, n);
		}
		if (FUNC24(key, "LIBARCHIVE.symlinktype") == 0) {
			if (FUNC24(value, "file") == 0) {
				FUNC12(entry,
				    AE_SYMLINK_TYPE_FILE);
			} else if (FUNC24(value, "dir") == 0) {
				FUNC12(entry,
				    AE_SYMLINK_TYPE_DIRECTORY);
			}
		}
		if (FUNC18(key, "LIBARCHIVE.xattr.", 17) == 0)
			FUNC21(entry, key, value);
		break;
	case 'S':
		/* We support some keys used by the "star" archiver */
		if (FUNC24(key, "SCHILY.acl.access") == 0) {
			r = FUNC19(a, tar, entry, value,
			    ARCHIVE_ENTRY_ACL_TYPE_ACCESS);
			if (r == ARCHIVE_FATAL)
				return (r);
		} else if (FUNC24(key, "SCHILY.acl.default") == 0) {
			r = FUNC19(a, tar, entry, value,
			    ARCHIVE_ENTRY_ACL_TYPE_DEFAULT);
			if (r == ARCHIVE_FATAL)
				return (r);
		} else if (FUNC24(key, "SCHILY.acl.ace") == 0) {
			r = FUNC19(a, tar, entry, value,
			    ARCHIVE_ENTRY_ACL_TYPE_NFS4);
			if (r == ARCHIVE_FATAL)
				return (r);
		} else if (FUNC24(key, "SCHILY.devmajor") == 0) {
			FUNC9(entry,
			    (dev_t)FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "SCHILY.devminor") == 0) {
			FUNC10(entry,
			    (dev_t)FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "SCHILY.fflags") == 0) {
			FUNC0(entry, value);
		} else if (FUNC24(key, "SCHILY.dev") == 0) {
			FUNC4(entry,
			    (dev_t)FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "SCHILY.ino") == 0) {
			FUNC6(entry,
			    FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "SCHILY.nlink") == 0) {
			FUNC8(entry, (unsigned)
			    FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "SCHILY.realsize") == 0) {
			tar->realsize = FUNC27(value, FUNC25(value));
			tar->realsize_override = 1;
			FUNC11(entry, tar->realsize);
		} else if (FUNC26(key, "SCHILY.xattr.", 13) == 0) {
			FUNC20(entry, key, value,
			    value_length);
		} else if (FUNC24(key, "SUN.holesdata") == 0) {
			/* A Solaris extension for sparse. */
			r = FUNC23(a, tar, entry, value);
			if (r < err) {
				if (r == ARCHIVE_FATAL)
					return (r);
				err = r;
				FUNC14(&a->archive,
				    ARCHIVE_ERRNO_MISC,
				    "Parse error: SUN.holesdata");
			}
		}
		break;
	case 'a':
		if (FUNC24(key, "atime") == 0) {
			FUNC22(value, &s, &n);
			FUNC1(entry, s, n);
		}
		break;
	case 'c':
		if (FUNC24(key, "ctime") == 0) {
			FUNC22(value, &s, &n);
			FUNC3(entry, s, n);
		} else if (FUNC24(key, "charset") == 0) {
			/* TODO: Publish charset information in entry. */
		} else if (FUNC24(key, "comment") == 0) {
			/* TODO: Publish comment in entry. */
		}
		break;
	case 'g':
		if (FUNC24(key, "gid") == 0) {
			FUNC5(entry,
			    FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "gname") == 0) {
			FUNC15(&(tar->entry_gname), value);
		}
		break;
	case 'h':
		if (FUNC24(key, "hdrcharset") == 0) {
			if (FUNC24(value, "BINARY") == 0)
				/* Binary  mode. */
				tar->pax_hdrcharset_binary = 1;
			else if (FUNC24(value, "ISO-IR 10646 2000 UTF-8") == 0)
				tar->pax_hdrcharset_binary = 0;
		}
		break;
	case 'l':
		/* pax interchange doesn't distinguish hardlink vs. symlink. */
		if (FUNC24(key, "linkpath") == 0) {
			FUNC15(&(tar->entry_linkpath), value);
		}
		break;
	case 'm':
		if (FUNC24(key, "mtime") == 0) {
			FUNC22(value, &s, &n);
			FUNC7(entry, s, n);
		}
		break;
	case 'p':
		if (FUNC24(key, "path") == 0) {
			FUNC15(&(tar->entry_pathname), value);
		}
		break;
	case 'r':
		/* POSIX has reserved 'realtime.*' */
		break;
	case 's':
		/* POSIX has reserved 'security.*' */
		/* Someday: if (strcmp(key, "security.acl") == 0) { ... } */
		if (FUNC24(key, "size") == 0) {
			/* "size" is the size of the data in the entry. */
			tar->entry_bytes_remaining
			    = FUNC27(value, FUNC25(value));
			/*
			 * The "size" pax header keyword always overrides the
			 * "size" field in the tar header.
			 * GNU.sparse.realsize, GNU.sparse.size and
			 * SCHILY.realsize override this value.
			 */
			if (!tar->realsize_override) {
				FUNC11(entry,
				    tar->entry_bytes_remaining);
				tar->realsize
				    = tar->entry_bytes_remaining;
			}
		}
		break;
	case 'u':
		if (FUNC24(key, "uid") == 0) {
			FUNC13(entry,
			    FUNC27(value, FUNC25(value)));
		} else if (FUNC24(key, "uname") == 0) {
			FUNC15(&(tar->entry_uname), value);
		}
		break;
	}
	return (err);
}