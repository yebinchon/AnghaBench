#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_10__ {char* s; size_t length; } ;
struct isofile {scalar_t__ dircnt; int /*<<< orphan*/  entry; TYPE_2__ basename; TYPE_2__ parentdir; TYPE_2__ symlink; TYPE_2__ basename_utf16; } ;
struct TYPE_9__ {scalar_t__ joliet; } ;
struct iso9660 {int /*<<< orphan*/ * sconv_to_utf16be; int /*<<< orphan*/ * sconv_from_utf16be; TYPE_1__ opt; } ;
struct archive_wstring {int /*<<< orphan*/  length; int /*<<< orphan*/  s; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 scalar_t__ AE_IFLNK ; 
 scalar_t__ ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char const*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_wstring*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_wstring*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive_wstring*) ; 
 scalar_t__ FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int FUNC23 (char*) ; 

__attribute__((used)) static int
FUNC24(struct archive_write *a, struct isofile *file)
{
	struct iso9660 *iso9660;
	const char *pathname;
	char *p, *dirname, *slash;
	size_t len;
	int ret = ARCHIVE_OK;

	iso9660 = a->format_data;

	FUNC12(&(file->parentdir));
	FUNC12(&(file->basename));
	FUNC12(&(file->basename_utf16));
	FUNC12(&(file->symlink));

	pathname =  FUNC1(file->entry);
	if (pathname == NULL || pathname[0] == '\0') {/* virtual root */
		file->dircnt = 0;
		return (ret);
	}

	/*
	 * Make a UTF-16BE basename if Joliet extension enabled.
	 */
	if (iso9660->opt.joliet) {
		const char *u16, *ulast;
		size_t u16len, ulen_last;

		if (iso9660->sconv_to_utf16be == NULL) {
			iso9660->sconv_to_utf16be =
			    FUNC10(
				&(a->archive), "UTF-16BE", 1);
			if (iso9660->sconv_to_utf16be == NULL)
				/* Couldn't allocate memory */
				return (ARCHIVE_FATAL);
			iso9660->sconv_from_utf16be =
			    FUNC9(
				&(a->archive), "UTF-16BE", 1);
			if (iso9660->sconv_from_utf16be == NULL)
				/* Couldn't allocate memory */
				return (ARCHIVE_FATAL);
		}

		/*
		 * Convert a filename to UTF-16BE.
		 */
		if (0 > FUNC2(file->entry, &u16, &u16len,
		    iso9660->sconv_to_utf16be)) {
			if (errno == ENOMEM) {
				FUNC6(&a->archive, ENOMEM,
				    "Can't allocate memory for UTF-16BE");
				return (ARCHIVE_FATAL);
			}
			FUNC6(&a->archive, ARCHIVE_ERRNO_MISC,
			    "A filename cannot be converted to UTF-16BE;"
			    "You should disable making Joliet extension");
			ret = ARCHIVE_WARN;
		}

		/*
		 * Make sure a path separator is not in the last;
		 * Remove trailing '/'.
		 */
		while (u16len >= 2) {
#if defined(_WIN32) || defined(__CYGWIN__)
			if (u16[u16len-2] == 0 &&
			    (u16[u16len-1] == '/' || u16[u16len-1] == '\\'))
#else
			if (u16[u16len-2] == 0 && u16[u16len-1] == '/')
#endif
			{
				u16len -= 2;
			} else
				break;
		}

		/*
		 * Find a basename in UTF-16BE.
		 */
		ulast = u16;
		u16len >>= 1;
		ulen_last = u16len;
		while (u16len > 0) {
#if defined(_WIN32) || defined(__CYGWIN__)
			if (u16[0] == 0 && (u16[1] == '/' || u16[1] == '\\'))
#else
			if (u16[0] == 0 && u16[1] == '/')
#endif
			{
				ulast = u16 + 2;
				ulen_last = u16len -1;
			}
			u16 += 2;
			u16len --;
		}
		ulen_last <<= 1;
		if (FUNC13(&(file->basename_utf16),
		    ulen_last) == NULL) {
			FUNC6(&a->archive, ENOMEM,
			    "Can't allocate memory for UTF-16BE");
			return (ARCHIVE_FATAL);
		}

		/*
		 * Set UTF-16BE basename.
		 */
		FUNC20(file->basename_utf16.s, ulast, ulen_last);
		file->basename_utf16.length = ulen_last;
	}

	FUNC7(&(file->parentdir), pathname);
#if defined(_WIN32) || defined(__CYGWIN__)
	/*
	 * Convert a path-separator from '\' to  '/'
	 */
	if (cleanup_backslash_1(file->parentdir.s) != 0) {
		const wchar_t *wp = archive_entry_pathname_w(file->entry);
		struct archive_wstring ws;

		if (wp != NULL) {
			int r;
			archive_string_init(&ws);
			archive_wstrcpy(&ws, wp);
			cleanup_backslash_2(ws.s);
			archive_string_empty(&(file->parentdir));
			r = archive_string_append_from_wcs(&(file->parentdir),
			    ws.s, ws.length);
			archive_wstring_free(&ws);
			if (r < 0 && errno == ENOMEM) {
				archive_set_error(&a->archive, ENOMEM,
				    "Can't allocate memory");
				return (ARCHIVE_FATAL);
			}
		}
	}
#endif

	len = file->parentdir.length;
	p = dirname = file->parentdir.s;

	/*
	 * Remove leading '/', '../' and './' elements
	 */
	while (*p) {
		if (p[0] == '/') {
			p++;
			len--;
		} else if (p[0] != '.')
			break;
		else if (p[1] == '.' && p[2] == '/') {
			p += 3;
			len -= 3;
		} else if (p[1] == '/' || (p[1] == '.' && p[2] == '\0')) {
			p += 2;
			len -= 2;
		} else if (p[1] == '\0') {
			p++;
			len--;
		} else
			break;
	}
	if (p != dirname) {
		FUNC21(dirname, p, len+1);
		p = dirname;
	}
	/*
	 * Remove "/","/." and "/.." elements from tail.
	 */
	while (len > 0) {
		size_t ll = len;

		if (len > 0 && p[len-1] == '/') {
			p[len-1] = '\0';
			len--;
		}
		if (len > 1 && p[len-2] == '/' && p[len-1] == '.') {
			p[len-2] = '\0';
			len -= 2;
		}
		if (len > 2 && p[len-3] == '/' && p[len-2] == '.' &&
		    p[len-1] == '.') {
			p[len-3] = '\0';
			len -= 3;
		}
		if (ll == len)
			break;
	}
	while (*p) {
		if (p[0] == '/') {
			if (p[1] == '/')
				/* Convert '//' --> '/' */
				FUNC21(p, p+1, FUNC23(p+1) + 1);
			else if (p[1] == '.' && p[2] == '/')
				/* Convert '/./' --> '/' */
				FUNC21(p, p+2, FUNC23(p+2) + 1);
			else if (p[1] == '.' && p[2] == '.' && p[3] == '/') {
				/* Convert 'dir/dir1/../dir2/'
				 *     --> 'dir/dir2/'
				 */
				char *rp = p -1;
				while (rp >= dirname) {
					if (*rp == '/')
						break;
					--rp;
				}
				if (rp > dirname) {
					FUNC22(rp, p+3);
					p = rp;
				} else {
					FUNC22(dirname, p+4);
					p = dirname;
				}
			} else
				p++;
		} else
			p++;
	}
	p = dirname;
	len = FUNC23(p);

	if (FUNC0(file->entry) == AE_IFLNK) {
		/* Convert symlink name too. */
		pathname = FUNC4(file->entry);
		FUNC7(&(file->symlink),  pathname);
#if defined(_WIN32) || defined(__CYGWIN__)
		/*
		 * Convert a path-separator from '\' to  '/'
		 */
		if (archive_strlen(&(file->symlink)) > 0 &&
		    cleanup_backslash_1(file->symlink.s) != 0) {
			const wchar_t *wp =
			    archive_entry_symlink_w(file->entry);
			struct archive_wstring ws;

			if (wp != NULL) {
				int r;
				archive_string_init(&ws);
				archive_wstrcpy(&ws, wp);
				cleanup_backslash_2(ws.s);
				archive_string_empty(&(file->symlink));
				r = archive_string_append_from_wcs(
				    &(file->symlink),
				    ws.s, ws.length);
				archive_wstring_free(&ws);
				if (r < 0 && errno == ENOMEM) {
					archive_set_error(&a->archive, ENOMEM,
					    "Can't allocate memory");
					return (ARCHIVE_FATAL);
				}
			}
		}
#endif
	}
	/*
	 * - Count up directory elements.
	 * - Find out the position which points the last position of
	 *   path separator('/').
	 */
	slash = NULL;
	file->dircnt = 0;
	for (; *p != '\0'; p++)
		if (*p == '/') {
			slash = p;
			file->dircnt++;
		}
	if (slash == NULL) {
		/* The pathname doesn't have a parent directory. */
		file->parentdir.length = len;
		FUNC11(&(file->basename), &(file->parentdir));
		FUNC12(&(file->parentdir));
		*file->parentdir.s = '\0';
		return (ret);
	}

	/* Make a basename from dirname and slash */
	*slash  = '\0';
	file->parentdir.length = slash - dirname;
	FUNC7(&(file->basename),  slash + 1);
	if (FUNC0(file->entry) == AE_IFDIR)
		file->dircnt ++;
	return (ret);
}