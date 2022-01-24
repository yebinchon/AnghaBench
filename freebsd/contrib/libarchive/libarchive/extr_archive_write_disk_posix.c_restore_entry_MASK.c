#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * error; } ;
struct TYPE_5__ {scalar_t__ st_mode; scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct archive_write_disk {int flags; scalar_t__ mode; int todo; int deferred; int /*<<< orphan*/ * pst; int /*<<< orphan*/ * name; TYPE_4__ archive; TYPE_1__ st; scalar_t__ skip_file_ino; scalar_t__ skip_file_dev; scalar_t__ skip_file_set; int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ ino_t ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS ; 
 int ARCHIVE_EXTRACT_NO_AUTODIR ; 
 int ARCHIVE_EXTRACT_NO_OVERWRITE ; 
 int ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER ; 
 int ARCHIVE_EXTRACT_UNLINK ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int EEXIST ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int TODO_MODE ; 
 int TODO_MODE_FORCE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_write_disk*) ; 
 int FUNC5 (struct archive_write_disk*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_write_disk*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct archive_write_disk *a)
{
	int ret = ARCHIVE_OK, en;

	if (a->flags & ARCHIVE_EXTRACT_UNLINK && !FUNC0(a->mode)) {
		/*
		 * TODO: Fix this.  Apparently, there are platforms
		 * that still allow root to hose the entire filesystem
		 * by unlinking a dir.  The S_ISDIR() test above
		 * prevents us from using unlink() here if the new
		 * object is a dir, but that doesn't mean the old
		 * object isn't a dir.
		 */
		if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
			(void)FUNC4(a);
		if (FUNC11(a->name) == 0) {
			/* We removed it, reset cached stat. */
			a->pst = NULL;
		} else if (errno == ENOENT) {
			/* File didn't exist, that's just as good. */
		} else if (FUNC10(a->name) == 0) {
			/* It was a dir, but now it's gone. */
			a->pst = NULL;
		} else {
			/* We tried, but couldn't get rid of it. */
			FUNC3(&a->archive, errno,
			    "Could not unlink");
			return(ARCHIVE_FAILED);
		}
	}

	/* Try creating it first; if this fails, we'll try to recover. */
	en = FUNC5(a);

	if ((en == ENOTDIR || en == ENOENT)
	    && !(a->flags & ARCHIVE_EXTRACT_NO_AUTODIR)) {
		/* If the parent dir doesn't exist, try creating it. */
		FUNC6(a, a->name);
		/* Now try to create the object again. */
		en = FUNC5(a);
	}

	if ((en == ENOENT) && (FUNC1(a->entry) != NULL)) {
		FUNC3(&a->archive, en,
		    "Hard-link target '%s' does not exist.",
		    FUNC1(a->entry));
		return (ARCHIVE_FAILED);
	}

	if ((en == EISDIR || en == EEXIST)
	    && (a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE)) {
		/* If we're not overwriting, we're done. */
		if (FUNC0(a->mode)) {
			/* Don't overwrite any settings on existing directories. */
			a->todo = 0;
		}
		FUNC2(a->entry);
		return (ARCHIVE_OK);
	}

	/*
	 * Some platforms return EISDIR if you call
	 * open(O_WRONLY | O_EXCL | O_CREAT) on a directory, some
	 * return EEXIST.  POSIX is ambiguous, requiring EISDIR
	 * for open(O_WRONLY) on a dir and EEXIST for open(O_EXCL | O_CREAT)
	 * on an existing item.
	 */
	if (en == EISDIR) {
		/* A dir is in the way of a non-dir, rmdir it. */
		if (FUNC10(a->name) != 0) {
			FUNC3(&a->archive, errno,
			    "Can't remove already-existing dir");
			return (ARCHIVE_FAILED);
		}
		a->pst = NULL;
		/* Try again. */
		en = FUNC5(a);
	} else if (en == EEXIST) {
		/*
		 * We know something is in the way, but we don't know what;
		 * we need to find out before we go any further.
		 */
		int r = 0;
		/*
		 * The SECURE_SYMLINKS logic has already removed a
		 * symlink to a dir if the client wants that.  So
		 * follow the symlink if we're creating a dir.
		 */
		if (FUNC0(a->mode))
			r = FUNC7(a->name, &a->st);
		/*
		 * If it's not a dir (or it's a broken symlink),
		 * then don't follow it.
		 */
		if (r != 0 || !FUNC0(a->mode))
			r = FUNC8(a->name, &a->st);
		if (r != 0) {
			FUNC3(&a->archive, errno,
			    "Can't stat existing object");
			return (ARCHIVE_FAILED);
		}

		/*
		 * NO_OVERWRITE_NEWER doesn't apply to directories.
		 */
		if ((a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER)
		    &&  !FUNC0(a->st.st_mode)) {
			if (!FUNC9(&(a->st), a->entry)) {
				FUNC2(a->entry);
				return (ARCHIVE_OK);
			}
		}

		/* If it's our archive, we're done. */
		if (a->skip_file_set &&
		    a->st.st_dev == (dev_t)a->skip_file_dev &&
		    a->st.st_ino == (ino_t)a->skip_file_ino) {
			FUNC3(&a->archive, 0,
			    "Refusing to overwrite archive");
			return (ARCHIVE_FAILED);
		}

		if (!FUNC0(a->st.st_mode)) {
			/* A non-dir is in the way, unlink it. */
			if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
				(void)FUNC4(a);
			if (FUNC11(a->name) != 0) {
				FUNC3(&a->archive, errno,
				    "Can't unlink already-existing object");
				return (ARCHIVE_FAILED);
			}
			a->pst = NULL;
			/* Try again. */
			en = FUNC5(a);
		} else if (!FUNC0(a->mode)) {
			/* A dir is in the way of a non-dir, rmdir it. */
			if (a->flags & ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS)
				(void)FUNC4(a);
			if (FUNC10(a->name) != 0) {
				FUNC3(&a->archive, errno,
				    "Can't replace existing directory with non-directory");
				return (ARCHIVE_FAILED);
			}
			/* Try again. */
			en = FUNC5(a);
		} else {
			/*
			 * There's a dir in the way of a dir.  Don't
			 * waste time with rmdir()/mkdir(), just fix
			 * up the permissions on the existing dir.
			 * Note that we don't change perms on existing
			 * dirs unless _EXTRACT_PERM is specified.
			 */
			if ((a->mode != a->st.st_mode)
			    && (a->todo & TODO_MODE_FORCE))
				a->deferred |= (a->todo & TODO_MODE);
			/* Ownership doesn't need deferred fixup. */
			en = 0; /* Forget the EEXIST. */
		}
	}

	if (en) {
		/* Everything failed; give up here. */
		if ((&a->archive)->error == NULL)
			FUNC3(&a->archive, en, "Can't create '%s'",
			    a->name);
		return (ARCHIVE_FAILED);
	}

	a->pst = NULL; /* Cached stat data no longer valid. */
	return (ret);
}