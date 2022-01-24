#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ length; char* s; } ;
struct isofile {scalar_t__ dircnt; int /*<<< orphan*/  entry; TYPE_2__ basename; TYPE_2__ parentdir; } ;
struct isoent {scalar_t__ virtual; struct isofile* file; int /*<<< orphan*/  rbtree; int /*<<< orphan*/  dir; } ;
struct TYPE_10__ {struct isoent* rootent; } ;
struct iso9660 {scalar_t__ dircnt_max; TYPE_2__ cur_dirstr; struct isoent* cur_dirent; TYPE_1__ primary; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
struct archive_string {char* s; int length; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int _MAX_FNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct isoent*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_string*,char const*,int) ; 
 int FUNC14 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct isoent*,struct isoent*) ; 
 struct isoent* FUNC16 (struct archive_write*,struct iso9660*,char*) ; 
 struct isoent* FUNC17 (struct isoent*,char*) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 

__attribute__((used)) static int
FUNC19(struct archive_write *a, struct isoent **isoentpp)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	char name[_MAX_FNAME];/* Included null terminator size. */
#elif defined(NAME_MAX) && NAME_MAX >= 255
	char name[NAME_MAX+1];
#else
	char name[256];
#endif
	struct iso9660 *iso9660 = a->format_data;
	struct isoent *dent, *isoent, *np;
	struct isofile *f1, *f2;
	const char *fn, *p;
	int l;

	isoent = *isoentpp;
	dent = iso9660->primary.rootent;
	if (isoent->file->parentdir.length > 0)
		fn = p = isoent->file->parentdir.s;
	else
		fn = p = "";

	/*
	 * If the path of the parent directory of `isoent' entry is
	 * the same as the path of `cur_dirent', add isoent to
	 * `cur_dirent'.
	 */
	if (FUNC12(&(iso9660->cur_dirstr))
	      == FUNC12(&(isoent->file->parentdir)) &&
	    FUNC18(iso9660->cur_dirstr.s, fn) == 0) {
		if (!FUNC15(iso9660->cur_dirent, isoent)) {
			np = (struct isoent *)FUNC0(
			    &(iso9660->cur_dirent->rbtree),
			    isoent->file->basename.s);
			goto same_entry;
		}
		return (ARCHIVE_OK);
	}

	for (;;) {
		l = FUNC14(name, sizeof(name), fn);
		if (l == 0) {
			np = NULL;
			break;
		}
		if (l < 0) {
			FUNC4(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "A name buffer is too small");
			FUNC1(isoent);
			return (ARCHIVE_FATAL);
		}

		np = FUNC17(dent, name);
		if (np == NULL || fn[0] == '\0')
			break;

		/* Find next subdirectory. */
		if (!np->dir) {
			/* NOT Directory! */
			FUNC4(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "`%s' is not directory, we cannot insert `%s' ",
			    FUNC3(np->file->entry),
			    FUNC3(isoent->file->entry));
			FUNC1(isoent);
			*isoentpp = NULL;
			return (ARCHIVE_FAILED);
		}
		fn += l;
		if (fn[0] == '/')
			fn++;
		dent = np;
	}
	if (np == NULL) {
		/*
		 * Create virtual parent directories.
		 */
		while (fn[0] != '\0') {
			struct isoent *vp;
			struct archive_string as;

			FUNC11(&as);
			FUNC13(&as, p, fn - p + l);
			if (as.s[as.length-1] == '/') {
				as.s[as.length-1] = '\0';
				as.length--;
			}
			vp = FUNC16(a, iso9660, as.s);
			if (vp == NULL) {
				FUNC10(&as);
				FUNC4(&a->archive, ENOMEM,
				    "Can't allocate memory");
				FUNC1(isoent);
				*isoentpp = NULL;
				return (ARCHIVE_FATAL);
			}
			FUNC10(&as);

			if (vp->file->dircnt > iso9660->dircnt_max)
				iso9660->dircnt_max = vp->file->dircnt;
			FUNC15(dent, vp);
			np = vp;

			fn += l;
			if (fn[0] == '/')
				fn++;
			l = FUNC14(name, sizeof(name), fn);
			if (l < 0) {
				FUNC10(&as);
				FUNC4(&a->archive,
				    ARCHIVE_ERRNO_MISC,
				    "A name buffer is too small");
				FUNC1(isoent);
				*isoentpp = NULL;
				return (ARCHIVE_FATAL);
			}
			dent = np;
		}

		/* Found out the parent directory where isoent can be
		 * inserted. */
		iso9660->cur_dirent = dent;
		FUNC8(&(iso9660->cur_dirstr));
		FUNC9(&(iso9660->cur_dirstr),
		    FUNC12(&(dent->file->parentdir)) +
		    FUNC12(&(dent->file->basename)) + 2);
		if (FUNC12(&(dent->file->parentdir)) +
		    FUNC12(&(dent->file->basename)) == 0)
			iso9660->cur_dirstr.s[0] = 0;
		else {
			if (FUNC12(&(dent->file->parentdir)) > 0) {
				FUNC7(&(iso9660->cur_dirstr),
				    &(dent->file->parentdir));
				FUNC5(&(iso9660->cur_dirstr), '/');
			}
			FUNC6(&(iso9660->cur_dirstr),
			    &(dent->file->basename));
		}

		if (!FUNC15(dent, isoent)) {
			np = (struct isoent *)FUNC0(
			    &(dent->rbtree), isoent->file->basename.s);
			goto same_entry;
		}
		return (ARCHIVE_OK);
	}

same_entry:
	/*
	 * We have already has the entry the filename of which is
	 * the same.
	 */
	f1 = np->file;
	f2 = isoent->file;

	/* If the file type of entries is different,
	 * we cannot handle it. */
	if (FUNC2(f1->entry) !=
	    FUNC2(f2->entry)) {
		FUNC4(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Found duplicate entries `%s' and its file type is "
		    "different",
		    FUNC3(f1->entry));
		FUNC1(isoent);
		*isoentpp = NULL;
		return (ARCHIVE_FAILED);
	}

	/* Swap file entries. */
	np->file = f2;
	isoent->file = f1;
	np->virtual = 0;

	FUNC1(isoent);
	*isoentpp = np;
	return (ARCHIVE_OK);
}