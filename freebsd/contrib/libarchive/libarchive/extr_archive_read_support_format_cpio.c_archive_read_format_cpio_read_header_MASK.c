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
struct cpio {int init_default_conversion; int (* read_header ) (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ;int entry_bytes_remaining; scalar_t__ entry_offset; struct archive_string_conv* sconv_default; struct archive_string_conv* opt_sconv; } ;
struct archive_string_conv {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ AE_IFLNK ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ; 
 scalar_t__ FUNC4 (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC9 (struct archive_read*,struct cpio*,struct archive_entry*) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 int FUNC11 (struct archive_read*,struct cpio*,struct archive_entry*,size_t*,size_t*) ; 

__attribute__((used)) static int
FUNC12(struct archive_read *a,
    struct archive_entry *entry)
{
	struct cpio *cpio;
	const void *h, *hl;
	struct archive_string_conv *sconv;
	size_t namelength;
	size_t name_pad;
	int r;

	cpio = (struct cpio *)(a->format->data);
	sconv = cpio->opt_sconv;
	if (sconv == NULL) {
		if (!cpio->init_default_conversion) {
			cpio->sconv_default =
			    FUNC8(
			      &(a->archive));
			cpio->init_default_conversion = 1;
		}
		sconv = cpio->sconv_default;
	}
	
	r = (cpio->read_header(a, cpio, entry, &namelength, &name_pad));

	if (r < ARCHIVE_WARN)
		return (r);

	/* Read name from buffer. */
	h = FUNC0(a, namelength + name_pad, NULL);
	if (h == NULL)
	    return (ARCHIVE_FATAL);
	if (FUNC3(entry,
	    (const char *)h, namelength, sconv) != 0) {
		if (errno == ENOMEM) {
			FUNC6(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC6(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Pathname can't be converted from %s to current locale.",
		    FUNC7(sconv));
		r = ARCHIVE_WARN;
	}
	cpio->entry_offset = 0;

	FUNC1(a, namelength + name_pad);

	/* If this is a symlink, read the link contents. */
	if (FUNC5(entry) == AE_IFLNK) {
		if (cpio->entry_bytes_remaining > 1024 * 1024) {
			FUNC6(&a->archive, ENOMEM,
			    "Rejecting malformed cpio archive: symlink contents exceed 1 megabyte");
			return (ARCHIVE_FATAL);
		}
		hl = FUNC0(a,
			(size_t)cpio->entry_bytes_remaining, NULL);
		if (hl == NULL)
			return (ARCHIVE_FATAL);
		if (FUNC4(entry, (const char *)hl,
		    (size_t)cpio->entry_bytes_remaining, sconv) != 0) {
			if (errno == ENOMEM) {
				FUNC6(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				return (ARCHIVE_FATAL);
			}
			FUNC6(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Linkname can't be converted from %s to "
			    "current locale.",
			    FUNC7(sconv));
			r = ARCHIVE_WARN;
		}
		FUNC1(a, cpio->entry_bytes_remaining);
		cpio->entry_bytes_remaining = 0;
	}

	/* XXX TODO: If the full mode is 0160200, then this is a Solaris
	 * ACL description for the following entry.  Read this body
	 * and parse it as a Solaris-style ACL, then read the next
	 * header.  XXX */

	/* Compare name to "TRAILER!!!" to test for end-of-archive. */
	if (namelength == 11 && FUNC10((const char *)h, "TRAILER!!!",
	    11) == 0) {
		/* TODO: Store file location of start of block. */
		FUNC2(&a->archive);
		return (ARCHIVE_EOF);
	}

	/* Detect and record hardlinks to previously-extracted entries. */
	if (FUNC9(a, cpio, entry) != ARCHIVE_OK) {
		return (ARCHIVE_FATAL);
	}

	return (r);
}