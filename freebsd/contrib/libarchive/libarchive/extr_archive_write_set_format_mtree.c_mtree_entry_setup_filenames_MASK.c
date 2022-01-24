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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_wstring {char* s; int length; } ;
struct mtree_entry {struct archive_wstring basename; struct archive_wstring parentdir; struct archive_wstring pathname; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_string {char* s; int length; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENOMEM ; 
 char* FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_wstring*,char const*) ; 
 int FUNC4 (struct archive_wstring*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_wstring*,struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_wstring*,struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_wstring*) ; 
 size_t FUNC10 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_wstring*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_wstring*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_wstring*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC21(struct archive_write *a, struct mtree_entry *file,
    struct archive_entry *entry)
{
	const char *pathname;
	char *p, *dirname, *slash;
	size_t len;
	int ret = ARCHIVE_OK;

	FUNC3(&file->pathname, FUNC0(entry));
#if defined(_WIN32) || defined(__CYGWIN__)
	/*
	 * Convert a path-separator from '\' to  '/'
	 */
	if (cleanup_backslash_1(file->pathname.s) != 0) {
		const wchar_t *wp = archive_entry_pathname_w(entry);
		struct archive_wstring ws;

		if (wp != NULL) {
			int r;
			archive_string_init(&ws);
			archive_wstrcpy(&ws, wp);
			cleanup_backslash_2(ws.s);
			archive_string_empty(&(file->pathname));
			r = archive_string_append_from_wcs(&(file->pathname),
			    ws.s, ws.length);
			archive_wstring_free(&ws);
			if (r < 0 && errno == ENOMEM) {
				archive_set_error(&a->archive, ENOMEM,
				    "Can't allocate memory");
				return (ARCHIVE_FATAL);
			}
		}
	}
#else
	(void)a; /* UNUSED */
#endif
	pathname =  file->pathname.s;
	if (FUNC17(pathname, ".") == 0) {
		FUNC3(&file->basename, ".");
		return (ARCHIVE_OK);
	}

	FUNC3(&(file->parentdir), pathname);

	len = file->parentdir.length;
	p = dirname = file->parentdir.s;

	/*
	 * Remove leading '/' and '../' elements
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
		} else
			break;
	}
	if (p != dirname) {
		FUNC16(dirname, p, len+1);
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
				FUNC16(p, p+1, FUNC19(p+1) + 1);
			else if (p[1] == '.' && p[2] == '/')
				/* Convert '/./' --> '/' */
				FUNC16(p, p+2, FUNC19(p+2) + 1);
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
					FUNC18(rp, p+3);
					p = rp;
				} else {
					FUNC18(dirname, p+4);
					p = dirname;
				}
			} else
				p++;
		} else
			p++;
	}
	p = dirname;
	len = FUNC19(p);

	/*
	 * Add "./" prefix.
	 * NOTE: If the pathname does not have a path separator, we have
	 * to add "./" to the head of the pathname because mtree reader
	 * will suppose that it is v1(a.k.a classic) mtree format and
	 * change the directory unexpectedly and so it will make a wrong
	 * path.
	 */
	if (FUNC17(p, ".") != 0 && FUNC20(p, "./", 2) != 0) {
		struct archive_string as;
		FUNC9(&as);
		FUNC3(&as, "./");
		FUNC11(&as, p, len);
		FUNC7(&file->parentdir);
		FUNC5(&file->parentdir, &as);
		FUNC8(&as);
		p = file->parentdir.s;
		len = FUNC10(&file->parentdir);
	}

	/*
	 * Find out the position which points the last position of
	 * path separator('/').
	 */
	slash = NULL;
	for (; *p != '\0'; p++) {
		if (*p == '/')
			slash = p;
	}
	if (slash == NULL) {
		/* The pathname doesn't have a parent directory. */
		file->parentdir.length = len;
		FUNC6(&(file->basename), &(file->parentdir));
		FUNC7(&(file->parentdir));
		*file->parentdir.s = '\0';
		return (ret);
	}

	/* Make a basename from file->parentdir.s and slash */
	*slash  = '\0';
	file->parentdir.length = slash - file->parentdir.s;
	FUNC3(&(file->basename),  slash + 1);
	return (ret);
}