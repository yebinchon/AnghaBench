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
struct TYPE_5__ {int /*<<< orphan*/  s; } ;
struct tar {scalar_t__ entry_bytes_remaining; scalar_t__ realsize; int sparse_allowed; int /*<<< orphan*/  sconv; TYPE_1__ entry_linkpath; } ;
struct TYPE_6__ {int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_4__ archive; } ;
struct archive_entry_header_ustar {char* typeflag; int /*<<< orphan*/  mtime; int /*<<< orphan*/  size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; scalar_t__* linkname; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFBLK ; 
 int /*<<< orphan*/  AE_IFCHR ; 
 int /*<<< orphan*/  AE_IFDIR ; 
 int /*<<< orphan*/  AE_IFIFO ; 
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_GNUTAR ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ; 
 int ARCHIVE_OK ; 
 scalar_t__ INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive_read*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__*,int) ; 
 int FUNC14 (struct archive_read*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h)
{
	const struct archive_entry_header_ustar	*header;
	char	tartype;
	int     err = ARCHIVE_OK;

	header = (const struct archive_entry_header_ustar *)h;
	if (header->linkname[0])
		FUNC13(&(tar->entry_linkpath),
		    header->linkname, sizeof(header->linkname));
	else
		FUNC11(&(tar->entry_linkpath));

	/* Parse out the numeric fields (all are octal) */
	FUNC4(entry,
		(mode_t)FUNC15(header->mode, sizeof(header->mode)));
	FUNC7(entry, FUNC15(header->uid, sizeof(header->uid)));
	FUNC3(entry, FUNC15(header->gid, sizeof(header->gid)));
	tar->entry_bytes_remaining = FUNC15(header->size, sizeof(header->size));
	if (tar->entry_bytes_remaining < 0) {
		tar->entry_bytes_remaining = 0;
		FUNC10(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Tar entry has negative size");
		return (ARCHIVE_FATAL);
	}
	if (tar->entry_bytes_remaining == INT64_MAX) {
		/* Note: tar_atol returns INT64_MAX on overflow */
		tar->entry_bytes_remaining = 0;
		FUNC10(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Tar entry size overflow");
		return (ARCHIVE_FATAL);
	}
	tar->realsize = tar->entry_bytes_remaining;
	FUNC6(entry, tar->entry_bytes_remaining);
	FUNC5(entry, FUNC15(header->mtime, sizeof(header->mtime)), 0);

	/* Handle the tar type flag appropriately. */
	tartype = header->typeflag[0];

	switch (tartype) {
	case '1': /* Hard link */
		if (FUNC0(entry, tar->entry_linkpath.s,
		    FUNC12(&(tar->entry_linkpath)), tar->sconv) != 0) {
			err = FUNC14(a, tar->sconv,
			    "Linkname");
			if (err == ARCHIVE_FATAL)
				return (err);
		}
		/*
		 * The following may seem odd, but: Technically, tar
		 * does not store the file type for a "hard link"
		 * entry, only the fact that it is a hard link.  So, I
		 * leave the type zero normally.  But, pax interchange
		 * format allows hard links to have data, which
		 * implies that the underlying entry is a regular
		 * file.
		 */
		if (FUNC8(entry) > 0)
			FUNC2(entry, AE_IFREG);

		/*
		 * A tricky point: Traditionally, tar readers have
		 * ignored the size field when reading hardlink
		 * entries, and some writers put non-zero sizes even
		 * though the body is empty.  POSIX blessed this
		 * convention in the 1988 standard, but broke with
		 * this tradition in 2001 by permitting hardlink
		 * entries to store valid bodies in pax interchange
		 * format, but not in ustar format.  Since there is no
		 * hard and fast way to distinguish pax interchange
		 * from earlier archives (the 'x' and 'g' entries are
		 * optional, after all), we need a heuristic.
		 */
		if (FUNC8(entry) == 0) {
			/* If the size is already zero, we're done. */
		}  else if (a->archive.archive_format
		    == ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE) {
			/* Definitely pax extended; must obey hardlink size. */
		} else if (a->archive.archive_format == ARCHIVE_FORMAT_TAR
		    || a->archive.archive_format == ARCHIVE_FORMAT_TAR_GNUTAR)
		{
			/* Old-style or GNU tar: we must ignore the size. */
			FUNC6(entry, 0);
			tar->entry_bytes_remaining = 0;
		} else if (FUNC9(a, 50) > 50) {
			/*
			 * We don't know if it's pax: If the bid
			 * function sees a valid ustar header
			 * immediately following, then let's ignore
			 * the hardlink size.
			 */
			FUNC6(entry, 0);
			tar->entry_bytes_remaining = 0;
		}
		/*
		 * TODO: There are still two cases I'd like to handle:
		 *   = a ustar non-pax archive with a hardlink entry at
		 *     end-of-archive.  (Look for block of nulls following?)
		 *   = a pax archive that has not seen any pax headers
		 *     and has an entry which is a hardlink entry storing
		 *     a body containing an uncompressed tar archive.
		 * The first is worth addressing; I don't see any reliable
		 * way to deal with the second possibility.
		 */
		break;
	case '2': /* Symlink */
		FUNC2(entry, AE_IFLNK);
		FUNC6(entry, 0);
		tar->entry_bytes_remaining = 0;
		if (FUNC1(entry, tar->entry_linkpath.s,
		    FUNC12(&(tar->entry_linkpath)), tar->sconv) != 0) {
			err = FUNC14(a, tar->sconv,
			    "Linkname");
			if (err == ARCHIVE_FATAL)
				return (err);
		}
		break;
	case '3': /* Character device */
		FUNC2(entry, AE_IFCHR);
		FUNC6(entry, 0);
		tar->entry_bytes_remaining = 0;
		break;
	case '4': /* Block device */
		FUNC2(entry, AE_IFBLK);
		FUNC6(entry, 0);
		tar->entry_bytes_remaining = 0;
		break;
	case '5': /* Dir */
		FUNC2(entry, AE_IFDIR);
		FUNC6(entry, 0);
		tar->entry_bytes_remaining = 0;
		break;
	case '6': /* FIFO device */
		FUNC2(entry, AE_IFIFO);
		FUNC6(entry, 0);
		tar->entry_bytes_remaining = 0;
		break;
	case 'D': /* GNU incremental directory type */
		/*
		 * No special handling is actually required here.
		 * It might be nice someday to preprocess the file list and
		 * provide it to the client, though.
		 */
		FUNC2(entry, AE_IFDIR);
		break;
	case 'M': /* GNU "Multi-volume" (remainder of file from last archive)*/
		/*
		 * As far as I can tell, this is just like a regular file
		 * entry, except that the contents should be _appended_ to
		 * the indicated file at the indicated offset.  This may
		 * require some API work to fully support.
		 */
		break;
	case 'N': /* Old GNU "long filename" entry. */
		/* The body of this entry is a script for renaming
		 * previously-extracted entries.  Ugh.  It will never
		 * be supported by libarchive. */
		FUNC2(entry, AE_IFREG);
		break;
	case 'S': /* GNU sparse files */
		/*
		 * Sparse files are really just regular files with
		 * sparse information in the extended area.
		 */
		/* FALLTHROUGH */
	case '0':
		/*
		 * Enable sparse file "read" support only for regular
		 * files and explicit GNU sparse files.  However, we
		 * don't allow non-standard file types to be sparse.
		 */
		tar->sparse_allowed = 1;
		/* FALLTHROUGH */
	default: /* Regular file  and non-standard types */
		/*
		 * Per POSIX: non-recognized types should always be
		 * treated as regular files.
		 */
		FUNC2(entry, AE_IFREG);
		break;
	}
	return (err);
}