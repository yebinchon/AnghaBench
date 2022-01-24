#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fixup_entry {int fixup; int mode; size_t mac_metadata_size; int /*<<< orphan*/ * mac_metadata; int /*<<< orphan*/  acl; scalar_t__ mtime_nanos; scalar_t__ birthtime_nanos; int /*<<< orphan*/  mtime; int /*<<< orphan*/  birthtime; scalar_t__ atime_nanos; int /*<<< orphan*/  atime; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_6__ {char* s; } ;
struct archive_write_disk {int deferred; int fd; int restore_pwd; int mode; int filesize; char* name; int user_umask; int todo; int flags; unsigned int decmpfs_block_count; TYPE_2__ archive; struct archive_entry* entry; int /*<<< orphan*/  start_time; TYPE_1__ _name_data; int /*<<< orphan*/  user_uid; int /*<<< orphan*/  uid; scalar_t__ offset; scalar_t__ fd_offset; int /*<<< orphan*/ * current_fixup; int /*<<< orphan*/ * pst; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int AE_IFMT ; 
 int AE_IFREG ; 
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ; 
 int ARCHIVE_EXTRACT_ACL ; 
 int ARCHIVE_EXTRACT_FFLAGS ; 
 int ARCHIVE_EXTRACT_HFS_COMPRESSION_FORCED ; 
 int ARCHIVE_EXTRACT_MAC_METADATA ; 
 int ARCHIVE_EXTRACT_NO_HFS_COMPRESSION ; 
 int ARCHIVE_EXTRACT_OWNER ; 
 int ARCHIVE_EXTRACT_PERM ; 
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ; 
 int ARCHIVE_EXTRACT_TIME ; 
 int ARCHIVE_EXTRACT_XATTR ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_STATE_DATA ; 
 int ARCHIVE_STATE_HEADER ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_DISK_MAGIC ; 
 int S_ISGID ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 int TODO_ACLS ; 
 int TODO_APPLEDOUBLE ; 
 int TODO_FFLAGS ; 
 int TODO_HFS_COMPRESSION ; 
 int TODO_MAC_METADATA ; 
 int TODO_MODE ; 
 int TODO_MODE_BASE ; 
 int TODO_MODE_FORCE ; 
 int TODO_OWNER ; 
 int TODO_SGID ; 
 int TODO_SGID_CHECK ; 
 int TODO_SUID ; 
 int TODO_SUID_CHECK ; 
 int TODO_TIMES ; 
 int TODO_XATTR ; 
 unsigned long UF_COMPRESSED ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 scalar_t__ FUNC7 (struct archive_entry*) ; 
 scalar_t__ FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 scalar_t__ FUNC10 (struct archive_entry*) ; 
 scalar_t__ FUNC11 (struct archive_entry*) ; 
 struct archive_entry* FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC14 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC16 (struct archive_entry*,size_t*) ; 
 int FUNC17 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_entry*) ; 
 scalar_t__ FUNC19 (struct archive_entry*) ; 
 scalar_t__ FUNC20 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct archive_entry*) ; 
 scalar_t__ FUNC24 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive_entry*,char const**,void const**,size_t*) ; 
 int FUNC26 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct archive_write_disk*) ; 
 int FUNC30 (struct archive_write_disk*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 struct fixup_entry* FUNC32 (struct archive_write_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct archive_write_disk*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC34 (int) ; 
 scalar_t__ FUNC35 (int,unsigned long) ; 
 int /*<<< orphan*/ * FUNC36 (size_t) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC38 (struct archive_write_disk*) ; 
 scalar_t__ FUNC39 (char const*,char*) ; 
 char* FUNC40 (char*,char) ; 
 int FUNC41 (int) ; 

__attribute__((used)) static int
FUNC42(struct archive *_a, struct archive_entry *entry)
{
	struct archive_write_disk *a = (struct archive_write_disk *)_a;
	struct fixup_entry *fe;
	int ret, r;

	FUNC2(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
	    ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
	    "archive_write_disk_header");
	FUNC3(&a->archive);
	if (a->archive.state & ARCHIVE_STATE_DATA) {
		r = FUNC0(&a->archive);
		if (r == ARCHIVE_FATAL)
			return (r);
	}

	/* Set up for this particular entry. */
	a->pst = NULL;
	a->current_fixup = NULL;
	a->deferred = 0;
	if (a->entry) {
		FUNC15(a->entry);
		a->entry = NULL;
	}
	a->entry = FUNC12(entry);
	a->fd = -1;
	a->fd_offset = 0;
	a->offset = 0;
	a->restore_pwd = -1;
	a->uid = a->user_uid;
	a->mode = FUNC17(a->entry);
	if (FUNC24(a->entry))
		a->filesize = FUNC23(a->entry);
	else
		a->filesize = -1;
	FUNC28(&(a->_name_data), FUNC21(a->entry));
	a->name = a->_name_data.s;
	FUNC3(&a->archive);

	/*
	 * Clean up the requested path.  This is necessary for correct
	 * dir restores; the dir restore logic otherwise gets messed
	 * up by nonsense like "dir/.".
	 */
	ret = FUNC30(a);
	if (ret != ARCHIVE_OK)
		return (ret);

	/*
	 * Query the umask so we get predictable mode settings.
	 * This gets done on every call to _write_header in case the
	 * user edits their umask during the extraction for some
	 * reason.
	 */
	FUNC41(a->user_umask = FUNC41(0));

	/* Figure out what we need to do for this entry. */
	a->todo = TODO_MODE_BASE;
	if (a->flags & ARCHIVE_EXTRACT_PERM) {
		a->todo |= TODO_MODE_FORCE; /* Be pushy about permissions. */
		/*
		 * SGID requires an extra "check" step because we
		 * cannot easily predict the GID that the system will
		 * assign.  (Different systems assign GIDs to files
		 * based on a variety of criteria, including process
		 * credentials and the gid of the enclosing
		 * directory.)  We can only restore the SGID bit if
		 * the file has the right GID, and we only know the
		 * GID if we either set it (see set_ownership) or if
		 * we've actually called stat() on the file after it
		 * was restored.  Since there are several places at
		 * which we might verify the GID, we need a TODO bit
		 * to keep track.
		 */
		if (a->mode & S_ISGID)
			a->todo |= TODO_SGID | TODO_SGID_CHECK;
		/*
		 * Verifying the SUID is simpler, but can still be
		 * done in multiple ways, hence the separate "check" bit.
		 */
		if (a->mode & S_ISUID)
			a->todo |= TODO_SUID | TODO_SUID_CHECK;
	} else {
		/*
		 * User didn't request full permissions, so don't
		 * restore SUID, SGID bits and obey umask.
		 */
		a->mode &= ~S_ISUID;
		a->mode &= ~S_ISGID;
		a->mode &= ~S_ISVTX;
		a->mode &= ~a->user_umask;
	}
	if (a->flags & ARCHIVE_EXTRACT_OWNER)
		a->todo |= TODO_OWNER;
	if (a->flags & ARCHIVE_EXTRACT_TIME)
		a->todo |= TODO_TIMES;
	if (a->flags & ARCHIVE_EXTRACT_ACL) {
#if ARCHIVE_ACL_DARWIN
		/*
		 * On MacOS, platform ACLs get stored in mac_metadata, too.
		 * If we intend to extract mac_metadata and it is present
		 * we skip extracting libarchive NFSv4 ACLs.
		 */
		size_t metadata_size;

		if ((a->flags & ARCHIVE_EXTRACT_MAC_METADATA) == 0 ||
		    archive_entry_mac_metadata(a->entry,
		    &metadata_size) == NULL || metadata_size == 0)
#endif
#if ARCHIVE_ACL_LIBRICHACL
		/*
		 * RichACLs are stored in an extended attribute.
		 * If we intend to extract extended attributes and have this
		 * attribute we skip extracting libarchive NFSv4 ACLs.
		 */
		short extract_acls = 1;
		if (a->flags & ARCHIVE_EXTRACT_XATTR && (
		    archive_entry_acl_types(a->entry) &
		    ARCHIVE_ENTRY_ACL_TYPE_NFS4)) {
			const char *attr_name;
			const void *attr_value;
			size_t attr_size;
			int i = archive_entry_xattr_reset(a->entry);
			while (i--) {
				archive_entry_xattr_next(a->entry, &attr_name,
				    &attr_value, &attr_size);
				if (attr_name != NULL && attr_value != NULL &&
				    attr_size > 0 && strcmp(attr_name,
				    "trusted.richacl") == 0) {
					extract_acls = 0;
					break;
				}
			}
		}
		if (extract_acls)
#endif
#if ARCHIVE_ACL_DARWIN || ARCHIVE_ACL_LIBRICHACL
		{
#endif
		if (FUNC14(a->entry) == AE_IFDIR)
			a->deferred |= TODO_ACLS;
		else
			a->todo |= TODO_ACLS;
#if ARCHIVE_ACL_DARWIN || ARCHIVE_ACL_LIBRICHACL
		}
#endif
	}
	if (a->flags & ARCHIVE_EXTRACT_MAC_METADATA) {
		if (FUNC14(a->entry) == AE_IFDIR)
			a->deferred |= TODO_MAC_METADATA;
		else
			a->todo |= TODO_MAC_METADATA;
	}
#if defined(__APPLE__) && defined(UF_COMPRESSED) && defined(HAVE_ZLIB_H)
	if ((a->flags & ARCHIVE_EXTRACT_NO_HFS_COMPRESSION) == 0) {
		unsigned long set, clear;
		archive_entry_fflags(a->entry, &set, &clear);
		if ((set & ~clear) & UF_COMPRESSED) {
			a->todo |= TODO_HFS_COMPRESSION;
			a->decmpfs_block_count = (unsigned)-1;
		}
	}
	if ((a->flags & ARCHIVE_EXTRACT_HFS_COMPRESSION_FORCED) != 0 &&
	    (a->mode & AE_IFMT) == AE_IFREG && a->filesize > 0) {
		a->todo |= TODO_HFS_COMPRESSION;
		a->decmpfs_block_count = (unsigned)-1;
	}
	{
		const char *p;

		/* Check if the current file name is a type of the
		 * resource fork file. */
		p = strrchr(a->name, '/');
		if (p == NULL)
			p = a->name;
		else
			p++;
		if (p[0] == '.' && p[1] == '_') {
			/* Do not compress "._XXX" files. */
			a->todo &= ~TODO_HFS_COMPRESSION;
			if (a->filesize > 0)
				a->todo |= TODO_APPLEDOUBLE;
		}
	}
#endif

	if (a->flags & ARCHIVE_EXTRACT_XATTR) {
#if ARCHIVE_XATTR_DARWIN
		/*
		 * On MacOS, extended attributes get stored in mac_metadata,
		 * too. If we intend to extract mac_metadata and it is present
		 * we skip extracting extended attributes.
		 */
		size_t metadata_size;

		if ((a->flags & ARCHIVE_EXTRACT_MAC_METADATA) == 0 ||
		    archive_entry_mac_metadata(a->entry,
		    &metadata_size) == NULL || metadata_size == 0)
#endif
		a->todo |= TODO_XATTR;
	}
	if (a->flags & ARCHIVE_EXTRACT_FFLAGS)
		a->todo |= TODO_FFLAGS;
	if (a->flags & ARCHIVE_EXTRACT_SECURE_SYMLINKS) {
		ret = FUNC29(a);
		if (ret != ARCHIVE_OK)
			return (ret);
	}
#if defined(HAVE_FCHDIR) && defined(PATH_MAX)
	/* If path exceeds PATH_MAX, shorten the path. */
	edit_deep_directories(a);
#endif

	ret = FUNC38(a);

#if defined(__APPLE__) && defined(UF_COMPRESSED) && defined(HAVE_ZLIB_H)
	/*
	 * Check if the filesystem the file is restoring on supports
	 * HFS+ Compression. If not, cancel HFS+ Compression.
	 */
	if (a->todo | TODO_HFS_COMPRESSION) {
		/*
		 * NOTE: UF_COMPRESSED is ignored even if the filesystem
		 * supports HFS+ Compression because the file should
		 * have at least an extended attribute "com.apple.decmpfs"
		 * before the flag is set to indicate that the file have
		 * been compressed. If the filesystem does not support
		 * HFS+ Compression the system call will fail.
		 */
		if (a->fd < 0 || fchflags(a->fd, UF_COMPRESSED) != 0)
			a->todo &= ~TODO_HFS_COMPRESSION;
	}
#endif

	/*
	 * TODO: There are rumours that some extended attributes must
	 * be restored before file data is written.  If this is true,
	 * then we either need to write all extended attributes both
	 * before and after restoring the data, or find some rule for
	 * determining which must go first and which last.  Due to the
	 * many ways people are using xattrs, this may prove to be an
	 * intractable problem.
	 */

#ifdef HAVE_FCHDIR
	/* If we changed directory above, restore it here. */
	if (a->restore_pwd >= 0) {
		r = fchdir(a->restore_pwd);
		if (r != 0) {
			archive_set_error(&a->archive, errno,
			    "chdir() failure");
			ret = ARCHIVE_FATAL;
		}
		close(a->restore_pwd);
		a->restore_pwd = -1;
	}
#endif

	/*
	 * Fixup uses the unedited pathname from archive_entry_pathname(),
	 * because it is relative to the base dir and the edited path
	 * might be relative to some intermediate dir as a result of the
	 * deep restore logic.
	 */
	if (a->deferred & TODO_MODE) {
		fe = FUNC32(a, FUNC21(entry));
		if (fe == NULL)
			return (ARCHIVE_FATAL);
		fe->fixup |= TODO_MODE_BASE;
		fe->mode = a->mode;
	}

	if ((a->deferred & TODO_TIMES)
		&& (FUNC19(entry)
		    || FUNC7(entry))) {
		fe = FUNC32(a, FUNC21(entry));
		if (fe == NULL)
			return (ARCHIVE_FATAL);
		fe->mode = a->mode;
		fe->fixup |= TODO_TIMES;
		if (FUNC7(entry)) {
			fe->atime = FUNC6(entry);
			fe->atime_nanos = FUNC8(entry);
		} else {
			/* If atime is unset, use start time. */
			fe->atime = a->start_time;
			fe->atime_nanos = 0;
		}
		if (FUNC19(entry)) {
			fe->mtime = FUNC18(entry);
			fe->mtime_nanos = FUNC20(entry);
		} else {
			/* If mtime is unset, use start time. */
			fe->mtime = a->start_time;
			fe->mtime_nanos = 0;
		}
		if (FUNC10(entry)) {
			fe->birthtime = FUNC9(entry);
			fe->birthtime_nanos = FUNC11(
			    entry);
		} else {
			/* If birthtime is unset, use mtime. */
			fe->birthtime = fe->mtime;
			fe->birthtime_nanos = fe->mtime_nanos;
		}
	}

	if (a->deferred & TODO_ACLS) {
		fe = FUNC32(a, FUNC21(entry));
		if (fe == NULL)
			return (ARCHIVE_FATAL);
		fe->fixup |= TODO_ACLS;
		FUNC1(&fe->acl, FUNC4(entry));
	}

	if (a->deferred & TODO_MAC_METADATA) {
		const void *metadata;
		size_t metadata_size;
		metadata = FUNC16(a->entry, &metadata_size);
		if (metadata != NULL && metadata_size > 0) {
			fe = FUNC32(a, FUNC21(entry));
			if (fe == NULL)
				return (ARCHIVE_FATAL);
			fe->mac_metadata = FUNC36(metadata_size);
			if (fe->mac_metadata != NULL) {
				FUNC37(fe->mac_metadata, metadata,
				    metadata_size);
				fe->mac_metadata_size = metadata_size;
				fe->fixup |= TODO_MAC_METADATA;
			}
		}
	}

	if (a->deferred & TODO_FFLAGS) {
		fe = FUNC32(a, FUNC21(entry));
		if (fe == NULL)
			return (ARCHIVE_FATAL);
		fe->fixup |= TODO_FFLAGS;
		/* TODO: Complete this.. defer fflags from below. */
	}

	/* We've created the object and are ready to pour data into it. */
	if (ret >= ARCHIVE_WARN)
		a->archive.state = ARCHIVE_STATE_DATA;
	/*
	 * If it's not open, tell our client not to try writing.
	 * In particular, dirs, links, etc, don't get written to.
	 */
	if (a->fd < 0) {
		FUNC22(entry, 0);
		a->filesize = 0;
	}

	return (ret);
}