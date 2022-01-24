#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ length; char* s; } ;
struct mtree_writer {TYPE_3__ cur_dirstr; struct mtree_entry* cur_dirent; struct mtree_entry* root; } ;
struct TYPE_12__ {char* s; } ;
struct mtree_entry {TYPE_1__* dir_info; struct mtree_entry* parent; TYPE_3__ basename; TYPE_3__ parentdir; TYPE_2__ pathname; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_string {char* s; int length; } ;
struct archive_rb_node {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_11__ {scalar_t__ virtual; int /*<<< orphan*/  rbtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int _MAX_FNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct archive_rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_string*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*,char const*,int) ; 
 int FUNC12 (char*,int,char const*) ; 
 int FUNC13 (struct archive_write*,char*,struct mtree_entry**) ; 
 int FUNC14 (struct archive_write*,struct mtree_entry*,struct mtree_entry*) ; 
 struct mtree_entry* FUNC15 (struct mtree_entry*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct mtree_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct mtree_writer*,struct mtree_entry*) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 

__attribute__((used)) static int
FUNC19(struct archive_write *a, struct mtree_entry **filep)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	char name[_MAX_FNAME];/* Included null terminator size. */
#elif defined(NAME_MAX) && NAME_MAX >= 255
	char name[NAME_MAX+1];
#else
	char name[256];
#endif
	struct mtree_writer *mtree = (struct mtree_writer *)a->format_data;
	struct mtree_entry *dent, *file, *np;
	const char *fn, *p;
	int l, r;

	file = *filep;
	if (file->parentdir.length == 0 && file->basename.length == 1 &&
	    file->basename.s[0] == '.') {
		file->parent = file;
		if (mtree->root != NULL) {
			np = mtree->root;
			goto same_entry;
		}
		mtree->root = file;
		FUNC17(mtree, file);
		return (ARCHIVE_OK);
	}

	if (file->parentdir.length == 0) {
		FUNC2(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Internal programming error "
		    "in generating canonical name for %s",
		    file->pathname.s);
		return (ARCHIVE_FAILED);
	}

	fn = p = file->parentdir.s;

	/*
	 * If the path of the parent directory of `file' entry is
	 * the same as the path of `cur_dirent', add `file' entry to
	 * `cur_dirent'.
	 */
	if (FUNC10(&(mtree->cur_dirstr))
	      == FUNC10(&(file->parentdir)) &&
	    FUNC18(mtree->cur_dirstr.s, fn) == 0) {
		if (!FUNC1(
		    &(mtree->cur_dirent->dir_info->rbtree),
		    (struct archive_rb_node *)file)) {
			/* There is the same name in the tree. */
			np = (struct mtree_entry *)FUNC0(
			    &(mtree->cur_dirent->dir_info->rbtree),
			    file->basename.s);
			goto same_entry;
		}
		file->parent = mtree->cur_dirent;
		FUNC17(mtree, file);
		return (ARCHIVE_OK);
	}

	dent = mtree->root;
	for (;;) {
		l = FUNC12(name, sizeof(name), fn);
		if (l == 0) {
			np = NULL;
			break;
		}
		if (l < 0) {
			FUNC2(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "A name buffer is too small");
			return (ARCHIVE_FATAL);
		}
		if (l == 1 && name[0] == '.' && dent != NULL &&
		    dent == mtree->root) {
			fn += l;
			if (fn[0] == '/')
				fn++;
			continue;
		}

		np = FUNC15(dent, name);
		if (np == NULL || fn[0] == '\0')
			break;

		/* Find next sub directory. */
		if (!np->dir_info) {
			/* NOT Directory! */
			FUNC2(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "`%s' is not directory, we cannot insert `%s' ",
			    np->pathname.s, file->pathname.s);
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
			struct mtree_entry *vp;
			struct archive_string as;

			FUNC9(&as);
			FUNC11(&as, p, fn - p + l);
			if (as.s[as.length-1] == '/') {
				as.s[as.length-1] = '\0';
				as.length--;
			}
			r = FUNC13(a, as.s, &vp);
			FUNC8(&as);
			if (r < ARCHIVE_WARN)
				return (r);

			if (FUNC18(vp->pathname.s, ".") == 0) {
				vp->parent = vp;
				mtree->root = vp;
			} else {
				FUNC1(
				    &(dent->dir_info->rbtree),
				    (struct archive_rb_node *)vp);
				vp->parent = dent;
			}
			FUNC17(mtree, vp);
			np = vp;

			fn += l;
			if (fn[0] == '/')
				fn++;
			l = FUNC12(name, sizeof(name), fn);
			if (l < 0) {
				FUNC8(&as);
				FUNC2(&a->archive,
				    ARCHIVE_ERRNO_MISC,
				    "A name buffer is too small");
				return (ARCHIVE_FATAL);
			}
			dent = np;
		}

		/* Found out the parent directory where `file' can be
		 * inserted. */
		mtree->cur_dirent = dent;
		FUNC6(&(mtree->cur_dirstr));
		FUNC7(&(mtree->cur_dirstr),
		    FUNC10(&(dent->parentdir)) +
		    FUNC10(&(dent->basename)) + 2);
		if (FUNC10(&(dent->parentdir)) +
		    FUNC10(&(dent->basename)) == 0)
			mtree->cur_dirstr.s[0] = 0;
		else {
			if (FUNC10(&(dent->parentdir)) > 0) {
				FUNC5(&(mtree->cur_dirstr),
				    &(dent->parentdir));
				FUNC3(
				    &(mtree->cur_dirstr), '/');
			}
			FUNC4(&(mtree->cur_dirstr),
			    &(dent->basename));
		}

		if (!FUNC1(
		    &(dent->dir_info->rbtree),
		    (struct archive_rb_node *)file)) {
			np = (struct mtree_entry *)FUNC0(
			    &(dent->dir_info->rbtree), file->basename.s);
			goto same_entry;
		}
		file->parent = dent;
		FUNC17(mtree, file);
		return (ARCHIVE_OK);
	}

same_entry:
	/*
	 * We have already has the entry the filename of which is
	 * the same.
	 */
	r = FUNC14(a, np, file);
	if (r < ARCHIVE_WARN)
		return (r);
	if (np->dir_info)
		np->dir_info->virtual = 0;
	*filep = np;
	FUNC16(file);
	return (ARCHIVE_WARN);
}