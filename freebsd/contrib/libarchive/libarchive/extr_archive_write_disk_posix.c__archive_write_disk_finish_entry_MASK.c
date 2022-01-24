#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int state; } ;
struct TYPE_8__ {scalar_t__ st_size; } ;
struct archive_write_disk {int fd; scalar_t__ filesize; scalar_t__ fd_offset; int todo; int file_remaining_bytes; scalar_t__ user_uid; TYPE_2__ archive; int /*<<< orphan*/ * entry; int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  name; int /*<<< orphan*/ * pst; TYPE_1__ st; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  null_d ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_STATE_DATA ; 
 int ARCHIVE_STATE_HEADER ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_DISK_MAGIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TODO_ACLS ; 
 int TODO_APPLEDOUBLE ; 
 int TODO_FFLAGS ; 
 int TODO_HFS_COMPRESSION ; 
 int TODO_MAC_METADATA ; 
 int TODO_MODE ; 
 int TODO_OWNER ; 
 int TODO_SGID ; 
 int TODO_SUID ; 
 int TODO_TIMES ; 
 int TODO_XATTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC16 (struct archive_write_disk*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,scalar_t__) ; 
 scalar_t__ FUNC18 (struct archive_write_disk*,char*,int) ; 
 int FUNC19 (struct archive_write_disk*) ; 
 scalar_t__ FUNC20 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (struct archive_write_disk*) ; 
 int FUNC23 (struct archive_write_disk*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC24 (struct archive_write_disk*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct archive_write_disk*) ; 
 int FUNC26 (struct archive_write_disk*) ; 
 int FUNC27 (struct archive_write_disk*) ; 
 scalar_t__ FUNC28 (int,char const*,int) ; 

__attribute__((used)) static int
FUNC29(struct archive *_a)
{
	struct archive_write_disk *a = (struct archive_write_disk *)_a;
	int ret = ARCHIVE_OK;

	FUNC0(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
	    ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
	    "archive_write_finish_entry");
	if (a->archive.state & ARCHIVE_STATE_HEADER)
		return (ARCHIVE_OK);
	FUNC1(&a->archive);

	/* Pad or truncate file to the right size. */
	if (a->fd < 0) {
		/* There's no file. */
	} else if (a->filesize < 0) {
		/* File size is unknown, so we can't set the size. */
	} else if (a->fd_offset == a->filesize) {
		/* Last write ended at exactly the filesize; we're done. */
		/* Hopefully, this is the common case. */
#if defined(__APPLE__) && defined(UF_COMPRESSED) && defined(HAVE_ZLIB_H)
	} else if (a->todo & TODO_HFS_COMPRESSION) {
		char null_d[1024];
		ssize_t r;

		if (a->file_remaining_bytes)
			memset(null_d, 0, sizeof(null_d));
		while (a->file_remaining_bytes) {
			if (a->file_remaining_bytes > sizeof(null_d))
				r = hfs_write_data_block(
				    a, null_d, sizeof(null_d));
			else
				r = hfs_write_data_block(
				    a, null_d, a->file_remaining_bytes);
			if (r < 0)
				return ((int)r);
		}
#endif
	} else {
#if HAVE_FTRUNCATE
		if (ftruncate(a->fd, a->filesize) == -1 &&
		    a->filesize == 0) {
			archive_set_error(&a->archive, errno,
			    "File size could not be restored");
			return (ARCHIVE_FAILED);
		}
#endif
		/*
		 * Not all platforms implement the XSI option to
		 * extend files via ftruncate.  Stat() the file again
		 * to see what happened.
		 */
		a->pst = NULL;
		if ((ret = FUNC19(a)) != ARCHIVE_OK)
			return (ret);
		/* We can use lseek()/write() to extend the file if
		 * ftruncate didn't work or isn't available. */
		if (a->st.st_size < a->filesize) {
			const char nul = '\0';
			if (FUNC20(a->fd, a->filesize - 1, SEEK_SET) < 0) {
				FUNC11(&a->archive, errno,
				    "Seek failed");
				return (ARCHIVE_FATAL);
			}
			if (FUNC28(a->fd, &nul, 1) < 0) {
				FUNC11(&a->archive, errno,
				    "Write to restore size failed");
				return (ARCHIVE_FATAL);
			}
			a->pst = NULL;
		}
	}

	/* Restore metadata. */

	/*
	 * This is specific to Mac OS X.
	 * If the current file is an AppleDouble file, it should be
	 * linked with the data fork file and remove it.
	 */
	if (a->todo & TODO_APPLEDOUBLE) {
		int r2 = FUNC16(a, a->name);
		if (r2 == ARCHIVE_EOF) {
			/* The current file has been successfully linked
			 * with the data fork file and removed. So there
			 * is nothing to do on the current file.  */
			goto finish_metadata;
		}
		if (r2 < ret) ret = r2;
	}

	/*
	 * Look up the "real" UID only if we're going to need it.
	 * TODO: the TODO_SGID condition can be dropped here, can't it?
	 */
	if (a->todo & (TODO_OWNER | TODO_SUID | TODO_SGID)) {
		a->uid = FUNC14(&a->archive,
		    FUNC10(a->entry),
		    FUNC9(a->entry));
	}
	/* Look up the "real" GID only if we're going to need it. */
	/* TODO: the TODO_SUID condition can be dropped here, can't it? */
	if (a->todo & (TODO_OWNER | TODO_SGID | TODO_SUID)) {
		a->gid = FUNC12(&a->archive,
		    FUNC5(a->entry),
		    FUNC4(a->entry));
	 }

	/*
	 * Restore ownership before set_mode tries to restore suid/sgid
	 * bits.  If we set the owner, we know what it is and can skip
	 * a stat() call to examine the ownership of the file on disk.
	 */
	if (a->todo & TODO_OWNER) {
		int r2 = FUNC25(a);
		if (r2 < ret) ret = r2;
	}

	/*
	 * HYPOTHESIS:
	 * If we're not root, we won't be setting any security
	 * attributes that may be wiped by the set_mode() routine
	 * below.  We also can't set xattr on non-owner-writable files,
	 * which may be the state after set_mode(). Perform
	 * set_xattrs() first based on these constraints.
	 */
	if (a->user_uid != 0 &&
	    (a->todo & TODO_XATTR)) {
		int r2 = FUNC27(a);
		if (r2 < ret) ret = r2;
	}

	/*
	 * set_mode must precede ACLs on systems such as Solaris and
	 * FreeBSD where setting the mode implicitly clears extended ACLs
	 */
	if (a->todo & TODO_MODE) {
		int r2 = FUNC24(a, a->mode);
		if (r2 < ret) ret = r2;
	}

	/*
	 * Security-related extended attributes (such as
	 * security.capability on Linux) have to be restored last,
	 * since they're implicitly removed by other file changes.
	 * We do this last only when root.
	 */
	if (a->user_uid == 0 &&
	    (a->todo & TODO_XATTR)) {
		int r2 = FUNC27(a);
		if (r2 < ret) ret = r2;
	}

	/*
	 * Some flags prevent file modification; they must be restored after
	 * file contents are written.
	 */
	if (a->todo & TODO_FFLAGS) {
		int r2 = FUNC22(a);
		if (r2 < ret) ret = r2;
	}

	/*
	 * Time must follow most other metadata;
	 * otherwise atime will get changed.
	 */
	if (a->todo & TODO_TIMES) {
		int r2 = FUNC26(a);
		if (r2 < ret) ret = r2;
	}

	/*
	 * Mac extended metadata includes ACLs.
	 */
	if (a->todo & TODO_MAC_METADATA) {
		const void *metadata;
		size_t metadata_size;
		metadata = FUNC6(a->entry, &metadata_size);
		if (metadata != NULL && metadata_size > 0) {
			int r2 = FUNC23(a, FUNC8(
			    a->entry), metadata, metadata_size);
			if (r2 < ret) ret = r2;
		}
	}

	/*
	 * ACLs must be restored after timestamps because there are
	 * ACLs that prevent attribute changes (including time).
	 */
	if (a->todo & TODO_ACLS) {
		int r2;
		r2 = FUNC13(&a->archive, a->fd,
		    FUNC8(a->entry),
		    FUNC2(a->entry),
		    FUNC7(a->entry));
		if (r2 < ret) ret = r2;
	}

finish_metadata:
	/* If there's an fd, we can close it now. */
	if (a->fd >= 0) {
		FUNC15(a->fd);
		a->fd = -1;
	}
	/* If there's an entry, we can release it now. */
	FUNC3(a->entry);
	a->entry = NULL;
	a->archive.state = ARCHIVE_STATE_HEADER;
	return (ret);
}