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
struct TYPE_11__ {int /*<<< orphan*/  noatime; int /*<<< orphan*/  filetype; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime; } ;
struct tree {int descend; int tree_errno; int symlink_mode; int initial_filesystem_id; int current_filesystem_id; scalar_t__ entry_fd; TYPE_2__* current_filesystem; TYPE_1__ restore_time; int /*<<< orphan*/  depth; } ;
struct stat {int st_flags; int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_dev; } ;
struct archive_string {char* s; int /*<<< orphan*/  length; } ;
struct TYPE_13__ {void* state; } ;
struct archive_read_disk {int flags; char symlink_mode; int follow_symlinks; TYPE_3__ archive; int /*<<< orphan*/  metadata_filter_data; int /*<<< orphan*/  (* metadata_filter_func ) (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ;int /*<<< orphan*/  excluded_cb_data; int /*<<< orphan*/  (* excluded_cb_func ) (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ;scalar_t__ matching; } ;
struct archive_entry {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  noatime; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_READDISK_HONOR_NODUMP ; 
 int ARCHIVE_READDISK_MAC_COPYFILE ; 
 int ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS ; 
 int ARCHIVE_RETRY ; 
 void* ARCHIVE_STATE_FATAL ; 
 int ARCHIVE_WARN ; 
 int ENOENT ; 
 int /*<<< orphan*/  EXT2_IOC_GETFLAGS ; 
 int EXT2_NODUMP_FL ; 
 int /*<<< orphan*/  FS_IOC_GETFLAGS ; 
 int FS_NODUMP_FL ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  TREE_ERROR_DIR 132 
#define  TREE_ERROR_FATAL 131 
#define  TREE_POSTASCENT 130 
#define  TREE_POSTDESCENT 129 
#define  TREE_REGULAR 128 
 int UF_NODUMP ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,struct stat const*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 char* FUNC15 (scalar_t__) ; 
 int FUNC16 (scalar_t__,struct archive_entry*) ; 
 int FUNC17 (scalar_t__,struct archive_entry*) ; 
 int FUNC18 (scalar_t__,struct archive_entry*) ; 
 int FUNC19 (TYPE_3__*,struct archive_entry*,scalar_t__,struct stat const*) ; 
 char* FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive_string*,char*,char*) ; 
 int errno ; 
 int FUNC27 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC28 (struct tree*,int /*<<< orphan*/ ,int) ; 
 char* FUNC29 (char*,char) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC34 (struct tree*) ; 
 int FUNC35 (struct tree*) ; 
 int FUNC36 (struct tree*) ; 
 struct stat* FUNC37 (struct tree*) ; 
 char* FUNC38 (struct tree*) ; 
 struct stat* FUNC39 (struct tree*) ; 
 int /*<<< orphan*/  FUNC40 (struct tree*) ; 
 int FUNC41 (struct tree*) ; 
 int /*<<< orphan*/  FUNC42 (struct tree*,struct stat const*) ; 
 int FUNC43 (struct archive_read_disk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC44(struct archive_read_disk *a, struct tree *t,
    struct archive_entry *entry)
{
	const struct stat *st; /* info to use for this entry */
	const struct stat *lst;/* lstat() information */
	const char *name;
	int delayed, delayed_errno, descend, r;
	struct archive_string delayed_str;

	delayed = ARCHIVE_OK;
	delayed_errno = 0;
	FUNC25(&delayed_str);

	st = NULL;
	lst = NULL;
	t->descend = 0;
	do {
		switch (FUNC41(t)) {
		case TREE_ERROR_FATAL:
			FUNC22(&a->archive, t->tree_errno,
			    "%s: Unable to continue traversing directory tree",
			    FUNC38(t));
			a->archive.state = ARCHIVE_STATE_FATAL;
			FUNC40(t);
			return (ARCHIVE_FATAL);
		case TREE_ERROR_DIR:
			FUNC22(&a->archive, ARCHIVE_ERRNO_MISC,
			    "%s: Couldn't visit directory",
			    FUNC38(t));
			FUNC40(t);
			return (ARCHIVE_FAILED);
		case 0:
			FUNC40(t);
			return (ARCHIVE_EOF);
		case TREE_POSTDESCENT:
		case TREE_POSTASCENT:
			break;
		case TREE_REGULAR:
			lst = FUNC37(t);
			if (lst == NULL) {
			    if (errno == ENOENT && t->depth > 0) {
				delayed = ARCHIVE_WARN;
				delayed_errno = errno;
				if (delayed_str.length == 0) {
					FUNC26(&delayed_str,
					    "%s", FUNC38(t));
				} else {
					FUNC26(&delayed_str,
					    " %s", FUNC38(t));
				}
			    } else {
				FUNC22(&a->archive, errno,
				    "%s: Cannot stat",
				    FUNC38(t));
				FUNC40(t);
				return (ARCHIVE_FAILED);
			    }
			}
			break;
		}
	} while (lst == NULL);

#ifdef __APPLE__
	if (a->flags & ARCHIVE_READDISK_MAC_COPYFILE) {
		/* If we're using copyfile(), ignore "._XXX" files. */
		const char *bname = strrchr(tree_current_path(t), '/');
		if (bname == NULL)
			bname = tree_current_path(t);
		else
			++bname;
		if (bname[0] == '.' && bname[1] == '_')
			return (ARCHIVE_RETRY);
	}
#endif

	FUNC6(entry, FUNC38(t));
	/*
	 * Perform path matching.
	 */
	if (a->matching) {
		r = FUNC17(a->matching, entry);
		if (r < 0) {
			FUNC22(&(a->archive), errno,
			    "Failed : %s", FUNC15(a->matching));
			return (r);
		}
		if (r) {
			if (a->excluded_cb_func)
				a->excluded_cb_func(&(a->archive),
				    a->excluded_cb_data, entry);
			return (ARCHIVE_RETRY);
		}
	}

	/*
	 * Distinguish 'L'/'P'/'H' symlink following.
	 */
	switch(t->symlink_mode) {
	case 'H':
		/* 'H': After the first item, rest like 'P'. */
		t->symlink_mode = 'P';
		/* 'H': First item (from command line) like 'L'. */
		/* FALLTHROUGH */
	case 'L':
		/* 'L': Do descend through a symlink to dir. */
		descend = FUNC35(t);
		/* 'L': Follow symlinks to files. */
		a->symlink_mode = 'L';
		a->follow_symlinks = 1;
		/* 'L': Archive symlinks as targets, if we can. */
		st = FUNC39(t);
		if (st != NULL && !FUNC42(t, st))
			break;
		/* If stat fails, we have a broken symlink;
		 * in that case, don't follow the link. */
		/* FALLTHROUGH */
	default:
		/* 'P': Don't descend through a symlink to dir. */
		descend = FUNC36(t);
		/* 'P': Don't follow symlinks to files. */
		a->symlink_mode = 'P';
		a->follow_symlinks = 0;
		/* 'P': Archive symlinks as symlinks. */
		st = lst;
		break;
	}

	if (FUNC43(a, st->st_dev) != ARCHIVE_OK) {
		a->archive.state = ARCHIVE_STATE_FATAL;
		FUNC40(t);
		return (ARCHIVE_FATAL);
	}
	if (t->initial_filesystem_id == -1)
		t->initial_filesystem_id = t->current_filesystem_id;
	if (a->flags & ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS) {
		if (t->initial_filesystem_id != t->current_filesystem_id)
			descend = 0;
	}
	t->descend = descend;

	/*
	 * Honor nodump flag.
	 * If the file is marked with nodump flag, do not return this entry.
	 */
	if (a->flags & ARCHIVE_READDISK_HONOR_NODUMP) {
#if defined(HAVE_STRUCT_STAT_ST_FLAGS) && defined(UF_NODUMP)
		if (st->st_flags & UF_NODUMP)
			return (ARCHIVE_RETRY);
#elif (defined(FS_IOC_GETFLAGS) && defined(FS_NODUMP_FL) && \
       defined(HAVE_WORKING_FS_IOC_GETFLAGS)) || \
      (defined(EXT2_IOC_GETFLAGS) && defined(EXT2_NODUMP_FL) && \
       defined(HAVE_WORKING_EXT2_IOC_GETFLAGS))
		if (S_ISREG(st->st_mode) || S_ISDIR(st->st_mode)) {
			int stflags;

			t->entry_fd = open_on_current_dir(t,
			    tree_current_access_path(t),
			    O_RDONLY | O_NONBLOCK | O_CLOEXEC);
			__archive_ensure_cloexec_flag(t->entry_fd);
			if (t->entry_fd >= 0) {
				r = ioctl(t->entry_fd,
#ifdef FS_IOC_GETFLAGS
				FS_IOC_GETFLAGS,
#else
				EXT2_IOC_GETFLAGS,
#endif
					&stflags);
#ifdef FS_NODUMP_FL
				if (r == 0 && (stflags & FS_NODUMP_FL) != 0)
#else
				if (r == 0 && (stflags & EXT2_NODUMP_FL) != 0)
#endif
					return (ARCHIVE_RETRY);
			}
		}
#endif
	}

	FUNC8(entry, st);

	/* Save the times to be restored. This must be in before
	 * calling archive_read_disk_descend() or any chance of it,
	 * especially, invoking a callback. */
	t->restore_time.mtime = FUNC12(entry);
	t->restore_time.mtime_nsec = FUNC13(entry);
	t->restore_time.atime = FUNC3(entry);
	t->restore_time.atime_nsec = FUNC4(entry);
	t->restore_time.filetype = FUNC10(entry);
	t->restore_time.noatime = t->current_filesystem->noatime;

	/*
	 * Perform time matching.
	 */
	if (a->matching) {
		r = FUNC18(a->matching, entry);
		if (r < 0) {
			FUNC22(&(a->archive), errno,
			    "Failed : %s", FUNC15(a->matching));
			return (r);
		}
		if (r) {
			if (a->excluded_cb_func)
				a->excluded_cb_func(&(a->archive),
				    a->excluded_cb_data, entry);
			return (ARCHIVE_RETRY);
		}
	}

	/* Lookup uname/gname */
	name = FUNC21(&(a->archive), FUNC14(entry));
	if (name != NULL)
		FUNC9(entry, name);
	name = FUNC20(&(a->archive), FUNC11(entry));
	if (name != NULL)
		FUNC5(entry, name);

	/*
	 * Perform owner matching.
	 */
	if (a->matching) {
		r = FUNC16(a->matching, entry);
		if (r < 0) {
			FUNC22(&(a->archive), errno,
			    "Failed : %s", FUNC15(a->matching));
			return (r);
		}
		if (r) {
			if (a->excluded_cb_func)
				a->excluded_cb_func(&(a->archive),
				    a->excluded_cb_data, entry);
			return (ARCHIVE_RETRY);
		}
	}

	/*
	 * Invoke a meta data filter callback.
	 */
	if (a->metadata_filter_func) {
		if (!a->metadata_filter_func(&(a->archive),
		    a->metadata_filter_data, entry))
			return (ARCHIVE_RETRY);
	}

	/*
	 * Populate the archive_entry with metadata from the disk.
	 */
	FUNC7(entry, FUNC34(t));
	r = FUNC19(&(a->archive), entry,
		t->entry_fd, st);

	if (r == ARCHIVE_OK) {
		r = delayed;
		if (r != ARCHIVE_OK) {
			FUNC26(&delayed_str, ": %s",
			    "File removed before we read it");
			FUNC22(&(a->archive), delayed_errno,
			    "%s", delayed_str.s);
		}
	}
	if (!FUNC23(&delayed_str))
		FUNC24(&delayed_str);

	return (r);
}