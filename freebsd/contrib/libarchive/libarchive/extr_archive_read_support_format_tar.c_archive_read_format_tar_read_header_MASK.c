#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
struct tar {int realsize; int init_default_conversion; struct sparse_block* sparse_list; int /*<<< orphan*/  entry_bytes_remaining; int /*<<< orphan*/ * sconv_default; int /*<<< orphan*/ * sconv; int /*<<< orphan*/ * opt_sconv; scalar_t__ realsize_override; scalar_t__ entry_offset; } ;
struct sparse_block {int /*<<< orphan*/  remaining; int /*<<< orphan*/  offset; int /*<<< orphan*/  hole; struct sparse_block* next; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFDIR ; 
 scalar_t__ AE_IFREG ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 char* FUNC1 (struct archive_entry*) ; 
 int* FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct archive_read*,struct tar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tar*) ; 
 size_t FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_read*,size_t*) ; 
 int FUNC12 (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ; 
 size_t FUNC13 (int const*) ; 

__attribute__((used)) static int
FUNC14(struct archive_read *a,
    struct archive_entry *entry)
{
	/*
	 * When converting tar archives to cpio archives, it is
	 * essential that each distinct file have a distinct inode
	 * number.  To simplify this, we keep a static count here to
	 * assign fake dev/inode numbers to each tar entry.  Note that
	 * pax format archives may overwrite this with something more
	 * useful.
	 *
	 * Ideally, we would track every file read from the archive so
	 * that we could assign the same dev/ino pair to hardlinks,
	 * but the memory required to store a complete lookup table is
	 * probably not worthwhile just to support the relatively
	 * obscure tar->cpio conversion case.
	 */
	static int default_inode;
	static int default_dev;
	struct tar *tar;
	const char *p;
	const wchar_t *wp;
	int r;
	size_t l, unconsumed = 0;

	/* Assign default device/inode values. */
	FUNC3(entry, 1 + default_dev); /* Don't use zero. */
	FUNC5(entry, ++default_inode); /* Don't use zero. */
	/* Limit generated st_ino number to 16 bits. */
	if (default_inode >= 0xffff) {
		++default_dev;
		default_inode = 0;
	}

	tar = (struct tar *)(a->format->data);
	tar->entry_offset = 0;
	FUNC9(tar);
	tar->realsize = -1; /* Mark this as "unset" */
	tar->realsize_override = 0;

	/* Setup default string conversion. */
	tar->sconv = tar->opt_sconv;
	if (tar->sconv == NULL) {
		if (!tar->init_default_conversion) {
			tar->sconv_default =
			    FUNC7(&(a->archive));
			tar->init_default_conversion = 1;
		}
		tar->sconv = tar->sconv_default;
	}

	r = FUNC12(a, tar, entry, &unconsumed);

	FUNC11(a, &unconsumed);

	/*
	 * "non-sparse" files are really just sparse files with
	 * a single block.
	 */
	if (tar->sparse_list == NULL) {
		if (FUNC8(a, tar, 0, tar->entry_bytes_remaining)
		    != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	} else {
		struct sparse_block *sb;

		for (sb = tar->sparse_list; sb != NULL; sb = sb->next) {
			if (!sb->hole)
				FUNC6(entry,
				    sb->offset, sb->remaining);
		}
	}

	if (r == ARCHIVE_OK && FUNC0(entry) == AE_IFREG) {
		/*
		 * "Regular" entry with trailing '/' is really
		 * directory: This is needed for certain old tar
		 * variants and even for some broken newer ones.
		 */
		if ((wp = FUNC2(entry)) != NULL) {
			l = FUNC13(wp);
			if (l > 0 && wp[l - 1] == L'/') {
				FUNC4(entry, AE_IFDIR);
			}
		} else if ((p = FUNC1(entry)) != NULL) {
			l = FUNC10(p);
			if (l > 0 && p[l - 1] == '/') {
				FUNC4(entry, AE_IFDIR);
			}
		}
	}
	return (r);
}