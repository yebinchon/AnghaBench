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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct fixup_entry {int mode; int /*<<< orphan*/  fixup; } ;
struct archive_write_disk {int flags; int user_umask; int /*<<< orphan*/  archive; } ;
typedef  int mode_t ;

/* Variables and functions */
 int ARCHIVE_EXTRACT_NO_OVERWRITE ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int DEFAULT_DIR_MODE ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int MAXIMUM_DIR_MODE ; 
 int MINIMUM_DIR_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TODO_MODE_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 struct fixup_entry* FUNC4 (struct archive_write_disk*,char*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct archive_write_disk *a, char *path)
{
	struct stat st;
	struct fixup_entry *le;
	char *slash, *base;
	mode_t mode_final, mode;
	int r;

	/* Check for special names and just skip them. */
	slash = FUNC5(path, '/');
	if (slash == NULL)
		base = path;
	else
		base = slash + 1;

	if (base[0] == '\0' ||
	    (base[0] == '.' && base[1] == '\0') ||
	    (base[0] == '.' && base[1] == '.' && base[2] == '\0')) {
		/* Don't bother trying to create null path, '.', or '..'. */
		if (slash != NULL) {
			*slash = '\0';
			r = FUNC7(a, path);
			*slash = '/';
			return (r);
		}
		return (ARCHIVE_OK);
	}

	/*
	 * Yes, this should be stat() and not lstat().  Using lstat()
	 * here loses the ability to extract through symlinks.  Also note
	 * that this should not use the a->st cache.
	 */
	if (FUNC2(path, &st) == 0) {
		if (FUNC0(st.st_mode))
			return (ARCHIVE_OK);
		if ((a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE)) {
			FUNC1(&a->archive, EEXIST,
			    "Can't create directory '%s'", path);
			return (ARCHIVE_FAILED);
		}
		if (FUNC6(path) != 0) {
			FUNC1(&a->archive, errno,
			    "Can't create directory '%s': "
			    "Conflicting file cannot be removed",
			    path);
			return (ARCHIVE_FAILED);
		}
	} else if (errno != ENOENT && errno != ENOTDIR) {
		/* Stat failed? */
		FUNC1(&a->archive, errno,
		    "Can't test directory '%s'", path);
		return (ARCHIVE_FAILED);
	} else if (slash != NULL) {
		*slash = '\0';
		r = FUNC7(a, path);
		*slash = '/';
		if (r != ARCHIVE_OK)
			return (r);
	}

	/*
	 * Mode we want for the final restored directory.  Per POSIX,
	 * implicitly-created dirs must be created obeying the umask.
	 * There's no mention whether this is different for privileged
	 * restores (which the rest of this code handles by pretending
	 * umask=0).  I've chosen here to always obey the user's umask for
	 * implicit dirs, even if _EXTRACT_PERM was specified.
	 */
	mode_final = DEFAULT_DIR_MODE & ~a->user_umask;
	/* Mode we want on disk during the restore process. */
	mode = mode_final;
	mode |= MINIMUM_DIR_MODE;
	mode &= MAXIMUM_DIR_MODE;
	if (FUNC3(path, mode) == 0) {
		if (mode != mode_final) {
			le = FUNC4(a, path);
			if (le == NULL)
				return (ARCHIVE_FATAL);
			le->fixup |=TODO_MODE_BASE;
			le->mode = mode_final;
		}
		return (ARCHIVE_OK);
	}

	/*
	 * Without the following check, a/b/../b/c/d fails at the
	 * second visit to 'b', so 'd' can't be created.  Note that we
	 * don't add it to the fixup list here, as it's already been
	 * added.
	 */
	if (FUNC2(path, &st) == 0 && FUNC0(st.st_mode))
		return (ARCHIVE_OK);

	FUNC1(&a->archive, errno, "Failed to create dir '%s'",
	    path);
	return (ARCHIVE_FAILED);
}