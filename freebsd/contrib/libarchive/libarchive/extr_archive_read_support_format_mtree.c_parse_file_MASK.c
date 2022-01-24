#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tv_nsec; } ;
struct TYPE_6__ {int tv_nsec; } ;
struct stat {int st_mode; int st_mtime_n; int st_umtime; int st_mtime_usec; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_nlink; int /*<<< orphan*/  st_mtime; TYPE_2__ st_mtim; TYPE_1__ st_mtimespec; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_rdev; } ;
struct mtree_entry {int used; char* name; scalar_t__ full; struct mtree_entry* next_dup; } ;
struct TYPE_8__ {char* s; size_t length; } ;
struct mtree {int fd; scalar_t__ offset; int /*<<< orphan*/  cur_size; int /*<<< orphan*/  resolver; TYPE_3__ contents_name; scalar_t__ checkfs; TYPE_3__ current_dir; int /*<<< orphan*/  rbtree; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFBLK ; 
 scalar_t__ AE_IFCHR ; 
 scalar_t__ AE_IFDIR ; 
 scalar_t__ AE_IFIFO ; 
 scalar_t__ AE_IFLNK ; 
 scalar_t__ AE_IFREG ; 
 scalar_t__ AE_IFSOCK ; 
 scalar_t__ ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOENT ; 
 int MTREE_HAS_DEVICE ; 
 int MTREE_HAS_GID ; 
 int MTREE_HAS_GNAME ; 
 int MTREE_HAS_MTIME ; 
 int MTREE_HAS_NLINK ; 
 int MTREE_HAS_NOCHANGE ; 
 int MTREE_HAS_OPTIONAL ; 
 int MTREE_HAS_PERM ; 
 int MTREE_HAS_SIZE ; 
 int MTREE_HAS_UID ; 
 int MTREE_HAS_UNAME ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int S_IFDIR ; 
 int S_IFIFO ; 
 int S_IFLNK ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int S_IFSOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct archive_entry**,struct archive_entry**) ; 
 char const* FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 size_t FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ errno ; 
 int FUNC22 (int,struct stat*) ; 
 int FUNC23 (char const*,struct stat*) ; 
 int FUNC24 (char const*,int) ; 
 int FUNC25 (struct archive_read*,struct archive_entry*,struct mtree*,struct mtree_entry*,int*) ; 

__attribute__((used)) static int
FUNC26(struct archive_read *a, struct archive_entry *entry,
    struct mtree *mtree, struct mtree_entry *mentry, int *use_next)
{
	const char *path;
	struct stat st_storage, *st;
	struct mtree_entry *mp;
	struct archive_entry *sparse_entry;
	int r = ARCHIVE_OK, r1, parsed_kws;

	mentry->used = 1;

	/* Initialize reasonable defaults. */
	FUNC7(entry, AE_IFREG);
	FUNC14(entry, 0);
	FUNC19(&mtree->contents_name);

	/* Parse options from this line. */
	parsed_kws = 0;
	r = FUNC25(a, entry, mtree, mentry, &parsed_kws);

	if (mentry->full) {
		FUNC2(entry, mentry->name);
		/*
		 * "Full" entries are allowed to have multiple lines
		 * and those lines aren't required to be adjacent.  We
		 * don't support multiple lines for "relative" entries
		 * nor do we make any attempt to merge data from
		 * separate "relative" and "full" entries.  (Merging
		 * "relative" and "full" entries would require dealing
		 * with pathname canonicalization, which is a very
		 * tricky subject.)
		 */
		mp = (struct mtree_entry *)FUNC1(
		    &mtree->rbtree, mentry->name);
		for (; mp; mp = mp->next_dup) {
			if (mp->full && !mp->used) {
				/* Later lines override earlier ones. */
				mp->used = 1;
				r1 = FUNC25(a, entry, mtree, mp, &parsed_kws);
				if (r1 < r)
					r = r1;
			}
		}
	} else {
		/*
		 * Relative entries require us to construct
		 * the full path and possibly update the
		 * current directory.
		 */
		size_t n = FUNC20(&mtree->current_dir);
		if (n > 0)
			FUNC18(&mtree->current_dir, "/");
		FUNC18(&mtree->current_dir, mentry->name);
		FUNC2(entry, mtree->current_dir.s);
		if (FUNC3(entry) != AE_IFDIR)
			mtree->current_dir.length = n;
	}

	if (mtree->checkfs) {
		/*
		 * Try to open and stat the file to get the real size
		 * and other file info.  It would be nice to avoid
		 * this here so that getting a listing of an mtree
		 * wouldn't require opening every referenced contents
		 * file.  But then we wouldn't know the actual
		 * contents size, so I don't see a really viable way
		 * around this.  (Also, we may want to someday pull
		 * other unspecified info from the contents file on
		 * disk.)
		 */
		mtree->fd = -1;
		if (FUNC20(&mtree->contents_name) > 0)
			path = mtree->contents_name.s;
		else
			path = FUNC5(entry);

		if (FUNC3(entry) == AE_IFREG ||
				FUNC3(entry) == AE_IFDIR) {
			mtree->fd = FUNC24(path, O_RDONLY | O_BINARY | O_CLOEXEC);
			FUNC0(mtree->fd);
			if (mtree->fd == -1 &&
				(errno != ENOENT ||
				 FUNC20(&mtree->contents_name) > 0)) {
				FUNC17(&a->archive, errno,
						"Can't open %s", path);
				r = ARCHIVE_WARN;
			}
		}

		st = &st_storage;
		if (mtree->fd >= 0) {
			if (FUNC22(mtree->fd, st) == -1) {
				FUNC17(&a->archive, errno,
						"Could not fstat %s", path);
				r = ARCHIVE_WARN;
				/* If we can't stat it, don't keep it open. */
				FUNC21(mtree->fd);
				mtree->fd = -1;
				st = NULL;
			}
		} else if (FUNC23(path, st) == -1) {
			st = NULL;
		}

		/*
		 * Check for a mismatch between the type in the specification
		 * and the type of the contents object on disk.
		 */
		if (st != NULL) {
			if (((st->st_mode & S_IFMT) == S_IFREG &&
			      FUNC3(entry) == AE_IFREG)
#ifdef S_IFLNK
			  ||((st->st_mode & S_IFMT) == S_IFLNK &&
			      archive_entry_filetype(entry) == AE_IFLNK)
#endif
#ifdef S_IFSOCK
			  ||((st->st_mode & S_IFSOCK) == S_IFSOCK &&
			      archive_entry_filetype(entry) == AE_IFSOCK)
#endif
#ifdef S_IFCHR
			  ||((st->st_mode & S_IFMT) == S_IFCHR &&
			      archive_entry_filetype(entry) == AE_IFCHR)
#endif
#ifdef S_IFBLK
			  ||((st->st_mode & S_IFMT) == S_IFBLK &&
			      archive_entry_filetype(entry) == AE_IFBLK)
#endif
			  ||((st->st_mode & S_IFMT) == S_IFDIR &&
			      FUNC3(entry) == AE_IFDIR)
#ifdef S_IFIFO
			  ||((st->st_mode & S_IFMT) == S_IFIFO &&
			      archive_entry_filetype(entry) == AE_IFIFO)
#endif
			) {
				/* Types match. */
			} else {
				/* Types don't match; bail out gracefully. */
				if (mtree->fd >= 0)
					FUNC21(mtree->fd);
				mtree->fd = -1;
				if (parsed_kws & MTREE_HAS_OPTIONAL) {
					/* It's not an error for an optional
					 * entry to not match disk. */
					*use_next = 1;
				} else if (r == ARCHIVE_OK) {
					FUNC17(&a->archive,
					    ARCHIVE_ERRNO_MISC,
					    "mtree specification has different"
					    " type for %s",
					    FUNC5(entry));
					r = ARCHIVE_WARN;
				}
				return (r);
			}
		}

		/*
		 * If there is a contents file on disk, pick some of the
		 * metadata from that file.  For most of these, we only
		 * set it from the contents if it wasn't already parsed
		 * from the specification.
		 */
		if (st != NULL) {
			if (((parsed_kws & MTREE_HAS_DEVICE) == 0 ||
				(parsed_kws & MTREE_HAS_NOCHANGE) != 0) &&
				(FUNC3(entry) == AE_IFCHR ||
				 FUNC3(entry) == AE_IFBLK))
				FUNC13(entry, st->st_rdev);
			if ((parsed_kws & (MTREE_HAS_GID | MTREE_HAS_GNAME))
				== 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0)
				FUNC8(entry, st->st_gid);
			if ((parsed_kws & (MTREE_HAS_UID | MTREE_HAS_UNAME))
				== 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0)
				FUNC15(entry, st->st_uid);
			if ((parsed_kws & MTREE_HAS_MTIME) == 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0) {
#if HAVE_STRUCT_STAT_ST_MTIMESPEC_TV_NSEC
				archive_entry_set_mtime(entry, st->st_mtime,
						st->st_mtimespec.tv_nsec);
#elif HAVE_STRUCT_STAT_ST_MTIM_TV_NSEC
				archive_entry_set_mtime(entry, st->st_mtime,
						st->st_mtim.tv_nsec);
#elif HAVE_STRUCT_STAT_ST_MTIME_N
				archive_entry_set_mtime(entry, st->st_mtime,
						st->st_mtime_n);
#elif HAVE_STRUCT_STAT_ST_UMTIME
				archive_entry_set_mtime(entry, st->st_mtime,
						st->st_umtime*1000);
#elif HAVE_STRUCT_STAT_ST_MTIME_USEC
				archive_entry_set_mtime(entry, st->st_mtime,
						st->st_mtime_usec*1000);
#else
				FUNC10(entry, st->st_mtime, 0);
#endif
			}
			if ((parsed_kws & MTREE_HAS_NLINK) == 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0)
				FUNC11(entry, st->st_nlink);
			if ((parsed_kws & MTREE_HAS_PERM) == 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0)
				FUNC12(entry, st->st_mode);
			if ((parsed_kws & MTREE_HAS_SIZE) == 0 ||
			    (parsed_kws & MTREE_HAS_NOCHANGE) != 0)
				FUNC14(entry, st->st_size);
			FUNC9(entry, st->st_ino);
			FUNC6(entry, st->st_dev);

			FUNC4(mtree->resolver, &entry,
				&sparse_entry);
		} else if (parsed_kws & MTREE_HAS_OPTIONAL) {
			/*
			 * Couldn't open the entry, stat it or the on-disk type
			 * didn't match.  If this entry is optional, just
			 * ignore it and read the next header entry.
			 */
			*use_next = 1;
			return ARCHIVE_OK;
		}
	}

	mtree->cur_size = FUNC16(entry);
	mtree->offset = 0;

	return r;
}