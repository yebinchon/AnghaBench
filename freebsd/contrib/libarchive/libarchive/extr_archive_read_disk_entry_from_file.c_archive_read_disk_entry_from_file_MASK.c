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
struct stat {scalar_t__ st_flags; int st_size; int /*<<< orphan*/  st_mode; } ;
struct archive_read_disk {int flags; int (* open_on_current_dir ) (int /*<<< orphan*/ *,char const*,int) ;scalar_t__ (* tree_enter_working_dir ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  archive; int /*<<< orphan*/ * tree; int /*<<< orphan*/  (* tree_current_dir_fd ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  follow_symlinks; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_READDISK_MAC_COPYFILE ; 
 int ARCHIVE_READDISK_NO_ACL ; 
 int ARCHIVE_READDISK_NO_FFLAGS ; 
 int ARCHIVE_READDISK_NO_XATTR ; 
 int /*<<< orphan*/  ARCHIVE_READ_DISK_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_ANY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EXT2_IOC_GETFLAGS ; 
 int /*<<< orphan*/  FS_IOC_GETFLAGS ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,struct stat const*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 char* FUNC10 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,char*) ; 
 char* FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 int FUNC15 (struct archive_read_disk*,struct archive_entry*,int*) ; 
 char* FUNC16 (struct archive*,int /*<<< orphan*/ ) ; 
 char* FUNC17 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 scalar_t__ FUNC21 (int,struct stat*) ; 
 int FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC23 (char const*,struct stat*) ; 
 scalar_t__ FUNC24 (char const*,struct stat*) ; 
 char* FUNC25 (size_t) ; 
 int FUNC26 (char const*,int) ; 
 int FUNC27 (char const*,char*,size_t) ; 
 int FUNC28 (int /*<<< orphan*/ ,char const*,char*,size_t) ; 
 int FUNC29 (struct archive_read_disk*,struct archive_entry*,int*) ; 
 int FUNC30 (struct archive_read_disk*,struct archive_entry*,int*) ; 
 int FUNC31 (struct archive_read_disk*,struct archive_entry*,int*) ; 
 int FUNC32 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 

int
FUNC35(struct archive *_a,
    struct archive_entry *entry,
    int fd,
    const struct stat *st)
{
	struct archive_read_disk *a = (struct archive_read_disk *)_a;
	const char *path, *name;
	struct stat s;
	int initial_fd = fd;
	int r, r1;

	FUNC4(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_ANY,
		"archive_read_disk_entry_from_file");

	FUNC5(_a);
	path = FUNC13(entry);
	if (path == NULL)
		path = FUNC10(entry);

	if (a->tree == NULL) {
		if (st == NULL) {
#if HAVE_FSTAT
			if (fd >= 0) {
				if (fstat(fd, &s) != 0) {
					archive_set_error(&a->archive, errno,
					    "Can't fstat");
					return (ARCHIVE_FAILED);
				}
			} else
#endif
#if HAVE_LSTAT
			if (!a->follow_symlinks) {
				if (lstat(path, &s) != 0) {
					archive_set_error(&a->archive, errno,
					    "Can't lstat %s", path);
					return (ARCHIVE_FAILED);
				}
			} else
#endif
			if (FUNC23(path, &s) != 0) {
				FUNC18(&a->archive, errno,
				    "Can't stat %s", path);
				return (ARCHIVE_FAILED);
			}
			st = &s;
		}
		FUNC7(entry, st);
	}

	/* Lookup uname/gname */
	name = FUNC17(_a, FUNC14(entry));
	if (name != NULL)
		FUNC8(entry, name);
	name = FUNC16(_a, FUNC9(entry));
	if (name != NULL)
		FUNC6(entry, name);

#ifdef HAVE_STRUCT_STAT_ST_FLAGS
	/* On FreeBSD, we get flags for free with the stat. */
	/* TODO: Does this belong in copy_stat()? */
	if ((a->flags & ARCHIVE_READDISK_NO_FFLAGS) == 0 && st->st_flags != 0)
		archive_entry_set_fflags(entry, st->st_flags, 0);
#endif

#if (defined(FS_IOC_GETFLAGS) && defined(HAVE_WORKING_FS_IOC_GETFLAGS)) || \
    (defined(EXT2_IOC_GETFLAGS) && defined(HAVE_WORKING_EXT2_IOC_GETFLAGS))
	/* Linux requires an extra ioctl to pull the flags.  Although
	 * this is an extra step, it has a nice side-effect: We get an
	 * open file descriptor which we can use in the subsequent lookups. */
	if ((a->flags & ARCHIVE_READDISK_NO_FFLAGS) == 0 &&
	    (S_ISREG(st->st_mode) || S_ISDIR(st->st_mode))) {
		if (fd < 0) {
			if (a->tree != NULL)
				fd = a->open_on_current_dir(a->tree, path,
					O_RDONLY | O_NONBLOCK | O_CLOEXEC);
			else
				fd = open(path, O_RDONLY | O_NONBLOCK |
						O_CLOEXEC);
			__archive_ensure_cloexec_flag(fd);
		}
		if (fd >= 0) {
			int stflags;
			r = ioctl(fd,
#if defined(FS_IOC_GETFLAGS)
			    FS_IOC_GETFLAGS,
#else
			    EXT2_IOC_GETFLAGS,
#endif
			    &stflags);
			if (r == 0 && stflags != 0)
				archive_entry_set_fflags(entry, stflags, 0);
		}
	}
#endif

#if defined(HAVE_READLINK) || defined(HAVE_READLINKAT)
	if (S_ISLNK(st->st_mode)) {
		size_t linkbuffer_len = st->st_size + 1;
		char *linkbuffer;
		int lnklen;

		linkbuffer = malloc(linkbuffer_len);
		if (linkbuffer == NULL) {
			archive_set_error(&a->archive, ENOMEM,
			    "Couldn't read link data");
			return (ARCHIVE_FAILED);
		}
		if (a->tree != NULL) {
#ifdef HAVE_READLINKAT
			lnklen = readlinkat(a->tree_current_dir_fd(a->tree),
			    path, linkbuffer, linkbuffer_len);
#else
			if (a->tree_enter_working_dir(a->tree) != 0) {
				archive_set_error(&a->archive, errno,
				    "Couldn't read link data");
				free(linkbuffer);
				return (ARCHIVE_FAILED);
			}
			lnklen = readlink(path, linkbuffer, linkbuffer_len);
#endif /* HAVE_READLINKAT */
		} else
			lnklen = readlink(path, linkbuffer, linkbuffer_len);
		if (lnklen < 0) {
			archive_set_error(&a->archive, errno,
			    "Couldn't read link data");
			free(linkbuffer);
			return (ARCHIVE_FAILED);
		}
		linkbuffer[lnklen] = 0;
		archive_entry_set_symlink(entry, linkbuffer);
		free(linkbuffer);
	}
#endif /* HAVE_READLINK || HAVE_READLINKAT */

	r = 0;
	if ((a->flags & ARCHIVE_READDISK_NO_ACL) == 0)
		r = FUNC15(a, entry, &fd);
	if ((a->flags & ARCHIVE_READDISK_NO_XATTR) == 0) {
		r1 = FUNC31(a, entry, &fd);
		if (r1 < r)
			r = r1;
	}
	if (a->flags & ARCHIVE_READDISK_MAC_COPYFILE) {
		r1 = FUNC29(a, entry, &fd);
		if (r1 < r)
			r = r1;
	}
	r1 = FUNC30(a, entry, &fd);
	if (r1 < r)
		r = r1;

	/* If we opened the file earlier in this function, close it. */
	if (initial_fd != fd)
		FUNC19(fd);
	return (r);
}